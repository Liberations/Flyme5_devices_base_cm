.class final Ljava/nio/FloatArrayBuffer;
.super Ljava/nio/FloatBuffer;
.source "FloatArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[F

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[FIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [F
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;-><init>(IJ)V

    .line 37
    iput-object p2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    .line 38
    iput p3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    .line 39
    iput-boolean p4, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    .line 40
    return-void
.end method

.method constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    .line 33
    return-void
.end method

.method private static copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/FloatArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    .line 44
    .local v0, "buf":Ljava/nio/FloatArrayBuffer;
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/FloatArrayBuffer;->limit:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/FloatArrayBuffer;->position:I

    .line 46
    iput p1, v0, Ljava/nio/FloatArrayBuffer;->mark:I

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/FloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    .line 56
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 60
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    .line 61
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    .line 63
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/FloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()F
    .locals 4

    .prologue
    .line 100
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public final get(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Ljava/nio/FloatArrayBuffer;->checkIndex(I)V

    .line 108
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public final get([FII)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 113
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 116
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    .line 117
    return-object p0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[F
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 4
    .param p1, "c"    # F

    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    if-ne v0, v1, :cond_1

    .line 133
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 135
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 136
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # F

    .prologue
    .line 140
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/FloatArrayBuffer;->checkIndex(I)V

    .line 144
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 145
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 149
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 153
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 155
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 156
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    .line 157
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    .line 71
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/FloatArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    return-object v0
.end method
