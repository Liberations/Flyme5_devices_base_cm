.class final Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;
    }
.end annotation


# static fields
.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final ioObject:Ljava/io/Closeable;

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/nio/FileChannelImpl$1;

    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "ioObject"    # Ljava/io/Closeable;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "mode"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    .line 67
    iput-object p2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 68
    iput-object p1, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    .line 69
    iput p3, p0, Ljava/nio/FileChannelImpl;->mode:I

    .line 70
    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .locals 8
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 546
    .local v2, "lockEnd":J
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 547
    .local v0, "existingLock":Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 556
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_1
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 552
    .restart local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 553
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lockEnd":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .locals 11
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .param p6, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int v7, v1, v2

    .line 96
    .local v7, "accessMode":I
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v7, v1, :cond_0

    .line 97
    if-nez p5, :cond_1

    .line 98
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 100
    :cond_0
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v7, v1, :cond_1

    .line 101
    if-eqz p5, :cond_1

    .line 102
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 106
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_3

    .line 107
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_3
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 111
    .local v0, "pendingLock":Ljava/nio/channels/FileLock;
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    .line 113
    new-instance v9, Landroid/system/StructFlock;

    invoke-direct {v9}, Landroid/system/StructFlock;-><init>()V

    .line 114
    .local v9, "flock":Landroid/system/StructFlock;
    if-eqz p5, :cond_5

    sget v1, Landroid/system/OsConstants;->F_RDLCK:I

    :goto_0
    int-to-short v1, v1

    iput-short v1, v9, Landroid/system/StructFlock;->l_type:S

    .line 115
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    int-to-short v1, v1

    iput-short v1, v9, Landroid/system/StructFlock;->l_whence:S

    .line 116
    iput-wide p1, v9, Landroid/system/StructFlock;->l_start:J

    .line 117
    invoke-static {p3, p4}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v9, Landroid/system/StructFlock;->l_len:J

    .line 119
    const/4 v10, 0x0

    .line 121
    .local v10, "success":Z
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p6, :cond_6

    sget v1, Landroid/system/OsConstants;->F_SETLKW64:I

    :goto_1
    invoke-interface {v2, v3, v1, v9}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v10, 0x1

    .line 125
    :goto_2
    if-nez v10, :cond_4

    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 129
    :cond_4
    if-eqz v10, :cond_9

    .end local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :goto_3
    return-object v0

    .line 114
    .end local v10    # "success":Z
    .restart local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :cond_5
    sget v1, Landroid/system/OsConstants;->F_WRLCK:I

    goto :goto_0

    .line 121
    .restart local v10    # "success":Z
    :cond_6
    :try_start_1
    sget v1, Landroid/system/OsConstants;->F_SETLK64:I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 122
    :catch_0
    move-exception v8

    .line 123
    .local v8, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v8    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    if-nez v10, :cond_8

    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    :cond_8
    throw v1

    .line 129
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .locals 3
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "copyingIn"    # Z

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 527
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 528
    if-eqz p3, :cond_0

    .line 529
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 526
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_1
    return v0
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method private checkReadable()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method private checkWritable()V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 296
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 297
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    .line 327
    :goto_0
    return v4

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, "bytesRead":I
    const/4 v1, 0x0

    .line 304
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    const-wide/16 v6, -0x1

    cmp-long v5, p2, v6

    if-nez v5, :cond_2

    .line 307
    :try_start_1
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 311
    :goto_1
    if-nez v0, :cond_1

    .line 312
    const/4 v0, -0x1

    .line 322
    :cond_1
    :goto_2
    const/4 v1, 0x1

    .line 324
    if-eqz v1, :cond_4

    if-ltz v0, :cond_4

    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    move v4, v0

    .line 327
    goto :goto_0

    .line 309
    :cond_2
    :try_start_2
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_3
    iget v5, v2, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v5, v6, :cond_3

    .line 317
    const/4 v0, 0x0

    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    if-ltz v0, :cond_5

    :goto_4
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v5

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferIoVec(Ljava/nio/IoVec;)I
    .locals 3
    .param p1, "ioVec"    # Ljava/nio/IoVec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/nio/IoVec;->init()I

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 335
    .local v0, "bytesTransferred":I
    const/4 v1, 0x0

    .line 337
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 338
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v2}, Ljava/nio/IoVec;->doTransfer(Ljava/io/FileDescriptor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 339
    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 343
    invoke-virtual {p1, v0}, Ljava/nio/IoVec;->didTransfer(I)V

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2
.end method

.method private static translateLockLength(J)J
    .locals 2
    .param p0, "byteCount"    # J

    .prologue
    .line 134
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    .end local p0    # "byteCount":J
    :cond_0
    return-wide p0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;J)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 485
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1

    .line 490
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    .line 492
    :cond_1
    const/4 v0, 0x0

    .line 493
    .local v0, "bytesWritten":I
    const/4 v1, 0x0

    .line 495
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    .line 498
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 505
    :goto_1
    const/4 v1, 0x1

    .line 507
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_0

    .line 500
    :cond_2
    :try_start_2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_3
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v3
.end method


# virtual methods
.method public force(Z)V
    .locals 3
    .param p1, "metadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 207
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-eq v1, v2, :cond_0

    .line 209
    if-eqz p1, :cond_1

    .line 210
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 92
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 11
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 161
    const/4 v9, 0x0

    .line 163
    .local v9, "resultLock":Ljava/nio/channels/FileLock;
    const/4 v0, 0x0

    .line 165
    .local v0, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 166
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 167
    const/4 v0, 0x1

    .line 170
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    return-object v9

    .line 171
    :catch_0
    move-exception v8

    .line 172
    .local v8, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 169
    .end local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catchall_0
    move-exception v1

    .line 170
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    throw v1

    .line 171
    :catch_1
    move-exception v8

    .line 172
    .restart local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 16
    .param p1, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "mapMode == null"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v3, p2, v10

    if-ltz v3, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-ltz v3, :cond_1

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, p4, v10

    if-lez v3, :cond_2

    .line 226
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Ljava/nio/FileChannelImpl;->mode:I

    sget v6, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int v2, v3, v6

    .line 229
    .local v2, "accessMode":I
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v2, v3, :cond_3

    .line 230
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    .line 231
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 233
    :cond_3
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v2, v3, :cond_4

    .line 234
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 236
    :cond_4
    add-long v10, p2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v14

    cmp-long v3, v10, v14

    if-lez v3, :cond_5

    .line 240
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v10, p2, p4

    invoke-interface {v3, v6, v10, v11}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_5
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v6, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v3, v6}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v10

    rem-long v10, p2, v10

    sub-long v4, p2, v10

    .line 256
    .local v4, "alignment":J
    sub-long v10, p2, v4

    long-to-int v9, v10

    .line 257
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    int-to-long v10, v9

    add-long v6, p4, v10

    move-object/from16 v8, p1

    invoke-static/range {v3 .. v8}, Ljava/nio/MemoryBlock;->mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    move-result-object v7

    .line 258
    .local v7, "block":Ljava/nio/MemoryBlock;
    new-instance v6, Ljava/nio/DirectByteBuffer;

    move-wide/from16 v0, p4

    long-to-int v8, v0

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_7

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v6

    .line 241
    .end local v4    # "alignment":J
    .end local v7    # "block":Ljava/nio/MemoryBlock;
    .end local v9    # "offset":I
    :catch_0
    move-exception v13

    .line 247
    .local v13, "ftruncateException":Landroid/system/ErrnoException;
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v6}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, v13, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v6, :cond_5

    .line 248
    :cond_6
    invoke-virtual {v13}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :catch_1
    move-exception v12

    .line 251
    .local v12, "fstatException":Landroid/system/ErrnoException;
    invoke-virtual {v12}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 258
    .end local v12    # "fstatException":Landroid/system/ErrnoException;
    .end local v13    # "ftruncateException":Landroid/system/ErrnoException;
    .restart local v4    # "alignment":J
    .restart local v7    # "block":Ljava/nio/MemoryBlock;
    .restart local v9    # "offset":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public position()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 264
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x0

    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 272
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-object p0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 349
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 350
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 351
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release(Ljava/nio/channels/FileLock;)V
    .locals 5
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 191
    new-instance v1, Landroid/system/StructFlock;

    invoke-direct {v1}, Landroid/system/StructFlock;-><init>()V

    .line 192
    .local v1, "flock":Landroid/system/StructFlock;
    sget v2, Landroid/system/OsConstants;->F_UNLCK:I

    int-to-short v2, v2

    iput-short v2, v1, Landroid/system/StructFlock;->l_type:S

    .line 193
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    int-to-short v2, v2

    iput-short v2, v1, Landroid/system/StructFlock;->l_whence:S

    .line 194
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/system/StructFlock;->l_start:J

    .line 195
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/system/StructFlock;->l_len:J

    .line 197
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->F_SETLKW64:I

    invoke-interface {v2, v3, v4, v1}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 203
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public size()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 357
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 10
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 365
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 368
    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 369
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-ltz v1, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, p4, v4

    if-lez v1, :cond_2

    .line 370
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_2
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    .line 373
    const-wide/16 v4, 0x0

    .line 400
    :goto_0
    return-wide v4

    .line 382
    :cond_3
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 383
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 384
    .local v0, "fileSrc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 385
    .local v8, "size":J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 386
    .local v2, "filePosition":J
    sub-long v4, v8, v2

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 387
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 389
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    add-long v4, v2, p4

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 390
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v4, v1

    .line 392
    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v1

    .line 397
    .end local v0    # "fileSrc":Ljava/nio/channels/FileChannel;
    .end local v2    # "filePosition":J
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "size":J
    :cond_4
    long-to-int v1, p4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 398
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 399
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 400
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v4, v1

    goto :goto_0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 19
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 405
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 408
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 409
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/FileChannelImpl;

    if-eqz v2, :cond_1

    move-object/from16 v2, p5

    .line 410
    check-cast v2, Ljava/nio/FileChannelImpl;

    invoke-direct {v2}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 412
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-ltz v2, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-gez v2, :cond_3

    .line 413
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-ltz v2, :cond_5

    .line 417
    :cond_4
    const-wide/16 v16, 0x0

    .line 449
    :goto_0
    return-wide v16

    .line 419
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    sub-long v6, v6, p1

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 422
    const/4 v13, 0x0

    .line 423
    .local v13, "completed":Z
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/SocketChannelImpl;

    if-eqz v2, :cond_7

    move-object/from16 v2, p5

    .line 424
    check-cast v2, Ljava/nio/SocketChannelImpl;

    invoke-virtual {v2}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 426
    .local v3, "outFd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    new-instance v5, Landroid/util/MutableLong;

    move-wide/from16 v0, p1

    invoke-direct {v5, v0, v1}, Landroid/util/MutableLong;-><init>(J)V

    .line 429
    .local v5, "offset":Landroid/util/MutableLong;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 430
    .local v16, "rc":J
    const/4 v13, 0x1

    .line 440
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_0

    .line 432
    .end local v5    # "offset":Landroid/util/MutableLong;
    .end local v16    # "rc":J
    :catch_0
    move-exception v14

    .line 435
    .local v14, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v2, v4, :cond_6

    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v2, v4, :cond_6

    .line 436
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2

    .restart local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 444
    .end local v3    # "outFd":Ljava/io/FileDescriptor;
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_7
    const/4 v12, 0x0

    .line 446
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    :try_start_3
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v6, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    .line 447
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 449
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 455
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 459
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 461
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_2

    .line 467
    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 469
    :cond_2
    return-object p0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 9
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 181
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 514
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 515
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 516
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
