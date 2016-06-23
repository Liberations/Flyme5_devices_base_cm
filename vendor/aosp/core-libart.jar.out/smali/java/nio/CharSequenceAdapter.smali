.class final Ljava/nio/CharSequenceAdapter;
.super Ljava/nio/CharBuffer;
.source "CharSequenceAdapter.java"


# instance fields
.field final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "chseq"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/nio/CharBuffer;-><init>(IJ)V

    .line 46
    iput-object p1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    .line 47
    return-void
.end method

.method static copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;
    .locals 2
    .param p0, "other"    # Ljava/nio/CharSequenceAdapter;

    .prologue
    .line 35
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v0, "buf":Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 37
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 38
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->mark:I

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public get()C
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ljava/nio/CharSequenceAdapter;->checkIndex(I)V

    .line 75
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 80
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 81
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 82
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 84
    :cond_0
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int v0, v1, p3

    .line 85
    .local v0, "newPosition":I
    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    invoke-virtual {v1, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 86
    iput v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 87
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[C
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 119
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 124
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 134
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([CII)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    iget v3, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharSequenceAdapter;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharSequenceAdapter;->checkStartEndRemaining(II)V

    .line 144
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    move-result-object v0

    .line 145
    .local v0, "result":Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    .line 146
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    add-int/2addr v1, p2

    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    .line 147
    return-object v0
.end method
