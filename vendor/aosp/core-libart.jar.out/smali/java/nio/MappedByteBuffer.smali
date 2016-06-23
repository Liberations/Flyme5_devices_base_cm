.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field final block:Ljava/nio/MemoryBlock;

.field final mapMode:Ljava/nio/channels/FileChannel$MapMode;


# direct methods
.method constructor <init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;J)V
    .locals 0
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p4, "effectiveDirectAddress"    # J

    .prologue
    .line 44
    invoke-direct {p0, p2, p4, p5}, Ljava/nio/ByteBuffer;-><init>(IJ)V

    .line 45
    iput-object p3, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 46
    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    .line 47
    return-void
.end method

.method private checkIsMapped()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 7

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 107
    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v1, v2, :cond_0

    .line 109
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v2}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v4}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v4

    sget v6, Landroid/system/OsConstants;->MS_SYNC:I

    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->msync(JJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    return-object p0

    .line 110
    :catch_0
    move-exception v0

    .line 113
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final isLoaded()Z
    .locals 18

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 57
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v4

    .line 58
    .local v4, "address":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v6

    .line 59
    .local v6, "size":J
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-nez v3, :cond_0

    .line 60
    const/4 v3, 0x1

    .line 78
    :goto_0
    return v3

    .line 64
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v13, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v3, v13}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v14

    long-to-int v12, v14

    .line 65
    .local v12, "pageSize":I
    int-to-long v14, v12

    rem-long v14, v4, v14

    long-to-int v11, v14

    .line 66
    .local v11, "pageOffset":I
    int-to-long v14, v11

    sub-long/2addr v4, v14

    .line 67
    int-to-long v14, v11

    add-long/2addr v6, v14

    .line 68
    int-to-long v14, v12

    add-long/2addr v14, v6

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    int-to-long v0, v12

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v10, v14

    .line 69
    .local v10, "pageCount":I
    new-array v8, v10, [B

    .line 70
    .local v8, "vector":[B
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v3 .. v8}, Llibcore/io/Os;->mincore(JJ[B)V

    .line 71
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v3, v8

    if-ge v9, v3, :cond_2

    .line 72
    aget-byte v3, v8, v9
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    const/4 v13, 0x1

    if-eq v3, v13, :cond_1

    .line 73
    const/4 v3, 0x0

    goto :goto_0

    .line 71
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 76
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 77
    .end local v8    # "vector":[B
    .end local v9    # "i":I
    .end local v10    # "pageCount":I
    .end local v11    # "pageOffset":I
    .end local v12    # "pageSize":I
    :catch_0
    move-exception v2

    .line 78
    .local v2, "errnoException":Landroid/system/ErrnoException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 6

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 90
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v2

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Llibcore/io/Os;->mlock(JJ)V

    .line 91
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v2

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Llibcore/io/Os;->munlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object p0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method
