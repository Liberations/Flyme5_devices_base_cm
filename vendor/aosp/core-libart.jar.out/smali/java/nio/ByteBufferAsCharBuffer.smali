.class final Ljava/nio/ByteBufferAsCharBuffer;
.super Ljava/nio/CharBuffer;
.source "ByteBufferAsCharBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    invoke-direct {p0, v0, v2, v3}, Ljava/nio/CharBuffer;-><init>(IJ)V

    .line 46
    iput-object p1, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 48
    return-void
.end method

.method static asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 53
    .local v0, "buf":Ljava/nio/ByteBufferAsCharBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 55
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    .line 56
    iget-object v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 57
    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 68
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 70
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    .line 72
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 79
    .local v1, "buf":Ljava/nio/ByteBufferAsCharBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 81
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    .line 82
    return-object v1
.end method

.method public get()C
    .locals 3

    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public get(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)V

    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([CII)V

    .line 108
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 109
    return-object p0

    .line 106
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([CII)V

    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[C
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 141
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 145
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)V

    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 152
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([CII)V

    .line 164
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    .line 165
    return-object p0

    .line 162
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([CII)V

    goto :goto_0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 174
    .local v1, "result":Ljava/nio/CharBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 175
    return-object v1
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsCharBuffer;->checkStartEndRemaining(II)V

    .line 180
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 181
    .local v0, "result":Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    return-object v0
.end method
