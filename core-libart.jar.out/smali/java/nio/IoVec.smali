.class final Ljava/nio/IoVec;
.super Ljava/lang/Object;
.source "IoVec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/IoVec$Direction;
    }
.end annotation


# instance fields
.field private final bufferCount:I

.field private final byteBuffers:[Ljava/nio/ByteBuffer;

.field private final byteCounts:[I

.field private final direction:Ljava/nio/IoVec$Direction;

.field private final ioBuffers:[Ljava/lang/Object;

.field private final offset:I

.field private final offsets:[I


# direct methods
.method constructor <init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V
    .locals 1
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "bufferCount"    # I
    .param p4, "direction"    # Ljava/nio/IoVec$Direction;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    .line 43
    iput p2, p0, Ljava/nio/IoVec;->offset:I

    .line 44
    iput p3, p0, Ljava/nio/IoVec;->bufferCount:I

    .line 45
    iput-object p4, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    .line 46
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    .line 47
    new-array v0, p3, [I

    iput-object v0, p0, Ljava/nio/IoVec;->offsets:[I

    .line 48
    new-array v0, p3, [I

    iput-object v0, p0, Ljava/nio/IoVec;->byteCounts:[I

    .line 49
    return-void
.end method


# virtual methods
.method didTransfer(I)V
    .locals 4
    .param p1, "byteCount"    # I

    .prologue
    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lez p1, :cond_2

    iget v2, p0, Ljava/nio/IoVec;->bufferCount:I

    if-ge v1, v2, :cond_2

    .line 90
    iget-object v2, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/IoVec;->offset:I

    add-int/2addr v3, v1

    aget-object v0, v2, v3

    .line 91
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/IoVec;->byteCounts:[I

    aget v2, v2, v1

    if-ge v2, p1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iget-object v2, p0, Ljava/nio/IoVec;->byteCounts:[I

    aget v2, v2, v1

    sub-int/2addr p1, v2

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    sget-object v3, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :goto_2
    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    const/4 p1, 0x0

    goto :goto_1

    .line 95
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 99
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method

.method doTransfer(Ljava/io/FileDescriptor;)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    sget-object v3, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    if-ne v2, v3, :cond_1

    .line 75
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    iget-object v5, p0, Ljava/nio/IoVec;->byteCounts:[I

    invoke-interface {v2, p1, v3, v4, v5}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v1

    .line 76
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 77
    const/4 v1, -0x1

    .line 81
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    iget-object v5, p0, Ljava/nio/IoVec;->byteCounts:[I

    invoke-interface {v2, p1, v3, v4, v5}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method init()I
    .locals 7

    .prologue
    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, "totalRemaining":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Ljava/nio/IoVec;->bufferCount:I

    if-ge v1, v4, :cond_2

    .line 54
    iget-object v4, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    iget v5, p0, Ljava/nio/IoVec;->offset:I

    add-int/2addr v5, v1

    aget-object v0, v4, v5

    .line 55
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    sget-object v5, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    if-ne v4, v5, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 59
    .local v2, "remaining":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 61
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    aput v5, v4, v1

    .line 66
    :goto_1
    iget-object v4, p0, Ljava/nio/IoVec;->byteCounts:[I

    aput v2, v4, v1

    .line 67
    add-int/2addr v3, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v4, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 64
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    invoke-static {v0}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v1

    goto :goto_1

    .line 69
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v2    # "remaining":I
    :cond_2
    return v3
.end method
