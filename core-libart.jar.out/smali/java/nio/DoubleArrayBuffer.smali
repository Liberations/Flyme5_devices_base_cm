.class final Ljava/nio/DoubleArrayBuffer;
.super Ljava/nio/DoubleBuffer;
.source "DoubleArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[D

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[DIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [D
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;-><init>(IJ)V

    .line 37
    iput-object p2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    .line 38
    iput p3, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    .line 39
    iput-boolean p4, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    .line 40
    return-void
.end method

.method constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DIZ)V

    .line 33
    return-void
.end method

.method private static copy(Ljava/nio/DoubleArrayBuffer;IZ)Ljava/nio/DoubleArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/DoubleArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DIZ)V

    .line 44
    .local v0, "buf":Ljava/nio/DoubleArrayBuffer;
    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/DoubleArrayBuffer;->limit:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/DoubleArrayBuffer;->position:I

    .line 46
    iput p1, v0, Ljava/nio/DoubleArrayBuffer;->mark:I

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;IZ)Ljava/nio/DoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 5

    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 59
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    .line 60
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/DoubleArrayBuffer;->mark:I

    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleArrayBuffer;->copy(Ljava/nio/DoubleArrayBuffer;IZ)Ljava/nio/DoubleArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()D
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final get(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/DoubleArrayBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final get([DII)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 112
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 115
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

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
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

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

.method protectedArray()[D
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 88
    :cond_0
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

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

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 5
    .param p1, "c"    # D

    .prologue
    .line 128
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 132
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1

    .line 135
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # D

    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DoubleArrayBuffer;->checkIndex(I)V

    .line 143
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    .line 144
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 152
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 154
    :cond_1
    iget-object v0, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v1, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 155
    iget v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    .line 156
    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/DoubleArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/DoubleArrayBuffer;->backingArray:[D

    iget v3, p0, Ljava/nio/DoubleArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/DoubleArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/DoubleArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/DoubleArrayBuffer;-><init>(I[DIZ)V

    return-object v0
.end method
