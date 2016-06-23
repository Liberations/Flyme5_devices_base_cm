.class Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"


# instance fields
.field private final isReadOnly:Z

.field protected final offset:I


# direct methods
.method constructor <init>(JI)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 49
    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(JJ)Ljava/nio/MemoryBlock;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V
    .locals 8
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "offset"    # I
    .param p4, "isReadOnly"    # Z
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v0

    int-to-long v2, p3

    add-long v4, v0, v2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;J)V

    .line 35
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v6

    .line 39
    .local v6, "baseSize":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    int-to-long v0, v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity + offset > baseSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 44
    iput-boolean p4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 45
    return-void
.end method

.method private checkIsAccessible()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 550
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    return-void
.end method

.method private checkNotFreed()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isFreed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer was freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    return-void
.end method

.method private static copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;
    .locals 6
    .param p0, "other"    # Ljava/nio/DirectByteBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 54
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    .line 55
    .local v0, "buf":Ljava/nio/DirectByteBuffer;
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    iput v1, v0, Ljava/nio/DirectByteBuffer;->limit:I

    .line 56
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/DirectByteBuffer;->position:I

    .line 57
    iput p1, v0, Ljava/nio/DirectByteBuffer;->mark:I

    .line 58
    return-object v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 301
    invoke-static {p0}, Ljava/nio/ByteBufferAsCharBuffer;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 306
    invoke-static {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 311
    invoke-static {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 316
    invoke-static {p0}, Ljava/nio/ByteBufferAsIntBuffer;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 321
    invoke-static {p0}, Ljava/nio/ByteBufferAsLongBuffer;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 326
    invoke-static {p0}, Ljava/nio/ByteBufferAsShortBuffer;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 67
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 71
    iget v0, p0, Ljava/nio/DirectByteBuffer;->limit:I

    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 72
    iget v0, p0, Ljava/nio/DirectByteBuffer;->capacity:I

    iput v0, p0, Ljava/nio/DirectByteBuffer;->limit:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    .line 74
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final free()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->free()V

    .line 297
    return-void
.end method

.method public final get()B
    .locals 4

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 163
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 171
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    .line 172
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 113
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    .line 114
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->peekByteArray(I[BII)V

    .line 115
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 116
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 121
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 122
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekCharArray(I[CIIZ)V

    .line 123
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 124
    return-void
.end method

.method final get([DII)V
    .locals 7
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 128
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 129
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekDoubleArray(I[DIIZ)V

    .line 130
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 131
    return-void
.end method

.method final get([FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 135
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 136
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekFloatArray(I[FIIZ)V

    .line 137
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 138
    return-void
.end method

.method final get([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 142
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 143
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekIntArray(I[IIIZ)V

    .line 144
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 145
    return-void
.end method

.method final get([JII)V
    .locals 7
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 149
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 150
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekLongArray(I[JIIZ)V

    .line 151
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 152
    return-void
.end method

.method final get([SII)V
    .locals 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 156
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    move-result v6

    .line 157
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekShortArray(I[SIIZ)V

    .line 158
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 159
    return-void
.end method

.method public final getChar()C
    .locals 5

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 177
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 178
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 179
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 181
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 182
    .local v1, "result":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 183
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 189
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 6

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 194
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 195
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_0

    .line 196
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 198
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 199
    .local v2, "result":D
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 200
    return-wide v2
.end method

.method public final getDouble(I)D
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 205
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 206
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 5

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 211
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 212
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 213
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 215
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 216
    .local v1, "result":F
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 217
    return v1
.end method

.method public final getFloat(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 223
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 5

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 228
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 229
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 230
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 232
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v1

    .line 233
    .local v1, "result":I
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 234
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 239
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 240
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 6

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 245
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 246
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_0

    .line 247
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 249
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v2

    .line 250
    .local v2, "result":J
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 251
    return-wide v2
.end method

.method public final getLong(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 256
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 257
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 262
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 263
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 264
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 266
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v1

    .line 267
    .local v1, "result":S
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 268
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 274
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isAccessible()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method protectedArray()[B
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 92
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 95
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->array()[B

    move-result-object v0

    .line 96
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 97
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 99
    :cond_1
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    .line 104
    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->array()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 331
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 334
    :cond_0
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 335
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 337
    :cond_1
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 338
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 343
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    .line 347
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 348
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 353
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 356
    :cond_0
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    .line 357
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    .line 358
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 359
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 364
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 365
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    .line 366
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 367
    return-void
.end method

.method final put([DII)V
    .locals 7
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 371
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 372
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    .line 373
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 374
    return-void
.end method

.method final put([FII)V
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 378
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 379
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    .line 380
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 381
    return-void
.end method

.method final put([III)V
    .locals 7
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 385
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 386
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    .line 387
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 388
    return-void
.end method

.method final put([JII)V
    .locals 7
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 392
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 393
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    .line 394
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 395
    return-void
.end method

.method final put([SII)V
    .locals 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 399
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    move-result v6

    .line 400
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    .line 401
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 402
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # C

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 406
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 407
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 409
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 410
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 411
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 413
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 414
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 415
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 420
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 423
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 424
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 425
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 430
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 433
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 434
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 435
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 437
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 438
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 439
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 444
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 447
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 448
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 449
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 454
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 457
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 458
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 459
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 461
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 462
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 463
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 468
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 471
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 472
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 473
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 478
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 481
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 482
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 483
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 485
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 486
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 487
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 492
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 495
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 496
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 497
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 516
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 519
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 520
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 521
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 502
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 503
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 505
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 506
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 507
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 509
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 510
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 511
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 540
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 543
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    .line 544
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 545
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    .line 526
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 529
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 530
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 531
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 533
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 534
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 535
    return-object p0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0, p1}, Ljava/nio/MemoryBlock;->setAccessible(Z)V

    .line 289
    return-void
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    .line 83
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v0
.end method
