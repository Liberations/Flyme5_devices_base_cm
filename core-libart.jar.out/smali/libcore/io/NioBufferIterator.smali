.class public final Llibcore/io/NioBufferIterator;
.super Llibcore/io/BufferIterator;
.source "NioBufferIterator.java"


# instance fields
.field private final address:J

.field private position:I

.field private final size:I

.field private final swap:Z


# direct methods
.method constructor <init>(JIZ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # I
    .param p4, "swap"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Llibcore/io/BufferIterator;-><init>()V

    .line 35
    iput-wide p1, p0, Llibcore/io/NioBufferIterator;->address:J

    .line 36
    iput p3, p0, Llibcore/io/NioBufferIterator;->size:I

    .line 37
    iput-boolean p4, p0, Llibcore/io/NioBufferIterator;->swap:Z

    .line 38
    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 6

    .prologue
    .line 54
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    .line 55
    .local v0, "result":B
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 56
    return v0
.end method

.method public readByteArray([BII)V
    .locals 4
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 49
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 50
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 51
    return-void
.end method

.method public readInt()I
    .locals 6

    .prologue
    .line 60
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 61
    .local v0, "result":I
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 62
    return v0
.end method

.method public readIntArray([III)V
    .locals 6
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    .prologue
    .line 66
    iget-wide v0, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v2, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-boolean v5, p0, Llibcore/io/NioBufferIterator;->swap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 67
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 68
    return-void
.end method

.method public readShort()S
    .locals 6

    .prologue
    .line 71
    iget-wide v2, p0, Llibcore/io/NioBufferIterator;->address:J

    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-boolean v1, p0, Llibcore/io/NioBufferIterator;->swap:Z

    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    .line 72
    .local v0, "result":S
    iget v1, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 73
    return v0
.end method

.method public seek(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 41
    iput p1, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 42
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "byteCount"    # I

    .prologue
    .line 45
    iget v0, p0, Llibcore/io/NioBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/NioBufferIterator;->position:I

    .line 46
    return-void
.end method
