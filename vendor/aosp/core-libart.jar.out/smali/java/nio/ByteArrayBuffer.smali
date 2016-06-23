.class final Ljava/nio/ByteArrayBuffer;
.super Ljava/nio/ByteBuffer;
.source "ByteArrayBuffer.java"


# instance fields
.field final arrayOffset:I

.field final backingArray:[B

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[BIZ)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [B
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;-><init>(IJ)V

    .line 42
    iput-object p2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    .line 43
    iput p3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    .line 44
    iput-boolean p4, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    .line 45
    add-int v0, p3, p1

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backingArray.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arrayOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "backingArray"    # [B

    .prologue
    const/4 v1, 0x0

    .line 37
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    .line 38
    return-void
.end method

.method private static copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/ByteArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    .line 53
    .local v0, "buf":Ljava/nio/ByteArrayBuffer;
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ByteArrayBuffer;->limit:I

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 55
    iput p1, v0, Ljava/nio/ByteArrayBuffer;->mark:I

    .line 56
    return-object v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 413
    invoke-static {p0}, Ljava/nio/ByteBufferAsCharBuffer;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 417
    invoke-static {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 421
    invoke-static {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 425
    invoke-static {p0}, Ljava/nio/ByteBufferAsIntBuffer;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .prologue
    .line 429
    invoke-static {p0}, Ljava/nio/ByteBufferAsLongBuffer;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 433
    invoke-static {p0}, Ljava/nio/ByteBufferAsShortBuffer;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 64
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 68
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 69
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    .line 71
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()B
    .locals 4

    .prologue
    .line 151
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->checkIndex(I)V

    .line 159
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 108
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    .line 109
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 110
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 111
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    const/4 v5, 0x2

    .line 115
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 116
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 117
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 118
    return-void
.end method

.method final get([DII)V
    .locals 7
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    const/16 v5, 0x8

    .line 121
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 122
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 123
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 124
    return-void
.end method

.method final get([FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    const/4 v5, 0x4

    .line 127
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 128
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 129
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 130
    return-void
.end method

.method final get([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    const/4 v5, 0x4

    .line 133
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 134
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 135
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 136
    return-void
.end method

.method final get([JII)V
    .locals 7
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    const/16 v5, 0x8

    .line 139
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 140
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 141
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 142
    return-void
.end method

.method final get([SII)V
    .locals 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    const/4 v5, 0x2

    .line 145
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    move-result v2

    .line 146
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 147
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 148
    return-void
.end method

.method public final getChar()C
    .locals 5

    .prologue
    .line 163
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 164
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 165
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 167
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 168
    .local v1, "result":C
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 169
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 174
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 5

    .prologue
    .line 194
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 195
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 196
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 198
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v1

    .line 199
    .local v1, "result":I
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 200
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 204
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 205
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 6

    .prologue
    .line 209
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 210
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v1, :cond_0

    .line 211
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 213
    :cond_0
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v4, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v5, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v2

    .line 214
    .local v2, "result":J
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 215
    return-wide v2
.end method

.method public final getLong(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 219
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 220
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    .prologue
    .line 224
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 225
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v2, :cond_0

    .line 226
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 228
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    .line 229
    .local v1, "result":S
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 230
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 235
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    return v0
.end method

.method protectedArray()[B
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 246
    :cond_0
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 247
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 249
    :cond_1
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    .line 250
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 254
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->checkIndex(I)V

    .line 258
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    .line 259
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 263
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    .line 267
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 268
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 269
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    const/4 v5, 0x2

    .line 273
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 274
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 275
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 276
    return-void
.end method

.method final put([DII)V
    .locals 7
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    const/16 v5, 0x8

    .line 279
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 280
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 281
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 282
    return-void
.end method

.method final put([FII)V
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    const/4 v5, 0x4

    .line 285
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 286
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 287
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 288
    return-void
.end method

.method final put([III)V
    .locals 7
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    const/4 v5, 0x4

    .line 291
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 292
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 293
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 294
    return-void
.end method

.method final put([JII)V
    .locals 7
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    const/16 v5, 0x8

    .line 297
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 298
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 299
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 300
    return-void
.end method

.method final put([SII)V
    .locals 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    const/4 v5, 0x2

    .line 303
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    move-result v2

    .line 304
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 305
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 306
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # C

    .prologue
    .line 318
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 321
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 322
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 323
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 325
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 326
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 327
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 309
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 312
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 313
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 314
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 331
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 335
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteArrayBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 339
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteArrayBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 343
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 347
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 350
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 351
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 352
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 354
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 355
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 356
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 360
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 363
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 364
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 365
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 369
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 372
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 373
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 374
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 378
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 381
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 382
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 383
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 385
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, p2, v3}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 386
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 387
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 391
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 394
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    .line 395
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 396
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 400
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 403
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 404
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    if-le v0, v1, :cond_1

    .line 405
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 407
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 408
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    .line 409
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 79
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    return-object v0
.end method
