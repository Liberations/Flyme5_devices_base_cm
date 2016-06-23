.class final Ljava/nio/IntArrayBuffer;
.super Ljava/nio/IntBuffer;
.source "IntArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[I

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[IIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [I
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/IntBuffer;-><init>(IJ)V

    .line 37
    iput-object p2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    .line 38
    iput p3, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    .line 39
    iput-boolean p4, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    .line 40
    return-void
.end method

.method constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/IntArrayBuffer;-><init>(I[IIZ)V

    .line 33
    return-void
.end method

.method private static copy(Ljava/nio/IntArrayBuffer;IZ)Ljava/nio/IntArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/IntArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/nio/IntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/IntArrayBuffer;-><init>(I[IIZ)V

    .line 44
    .local v0, "buf":Ljava/nio/IntArrayBuffer;
    iget v1, p0, Ljava/nio/IntArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/IntArrayBuffer;->limit:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/IntArrayBuffer;->position:I

    .line 46
    iput p1, v0, Ljava/nio/IntArrayBuffer;->mark:I

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Ljava/nio/IntArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/IntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;IZ)Ljava/nio/IntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 5

    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 59
    iget v0, p0, Ljava/nio/IntArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    .line 60
    iget v0, p0, Ljava/nio/IntArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/IntArrayBuffer;->limit:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/IntArrayBuffer;->mark:I

    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/IntArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/IntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;IZ)Ljava/nio/IntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()I
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public final get(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/IntArrayBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final get([III)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 112
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 115
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[I
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 88
    :cond_0
    iget v0, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 128
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 132
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 135
    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # I

    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/IntArrayBuffer;->checkIndex(I)V

    .line 143
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 144
    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 152
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 154
    :cond_1
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 155
    iget v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/IntArrayBuffer;->position:I

    .line 156
    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Ljava/nio/IntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/IntArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/IntArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/IntArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/IntArrayBuffer;-><init>(I[IIZ)V

    return-object v0
.end method
