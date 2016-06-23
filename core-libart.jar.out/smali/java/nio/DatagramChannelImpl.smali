.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 93
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/nio/DatagramChannelImpl;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 53
    iget v0, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    return v0
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 467
    :cond_0
    return-void
.end method

.method private checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 474
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 477
    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 373
    iget-object v10, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v10

    .line 374
    const/4 v7, 0x0

    .line 376
    .local v7, "readCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 377
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 382
    if-lez v7, :cond_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 384
    monitor-exit v10

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v9, v8

    .line 382
    goto :goto_0

    .line 378
    :catch_0
    move-exception v6

    .line 382
    .local v6, "e":Ljava/io/InterruptedIOException;
    if-lez v7, :cond_1

    :goto_2
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v10

    move v0, v8

    goto :goto_1

    :cond_1
    move v9, v8

    goto :goto_2

    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v0

    if-lez v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p0, v8}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v0

    .line 385
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 7
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, "retAddr":Ljava/net/SocketAddress;
    new-instance v4, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 278
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    :cond_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    move v3, v0

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    .line 279
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    .line 284
    :goto_0
    return-object v6

    .line 283
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 11
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    const/4 v10, 0x0

    .line 248
    .local v10, "retAddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 251
    .local v8, "oldposition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 257
    .local v6, "receivePacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    move v5, v0

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v9

    .line 258
    .local v9, "received":I
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 259
    if-lez v9, :cond_1

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    .line 271
    :goto_2
    return-object v10

    .line 254
    .end local v6    # "receivePacket":Ljava/net/DatagramPacket;
    .end local v9    # "received":I
    :cond_2
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .restart local v6    # "receivePacket":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 264
    .restart local v9    # "received":I
    :cond_3
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 270
    :cond_4
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "result":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 438
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 440
    if-lez v0, :cond_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 442
    monitor-exit v4

    return v0

    :cond_0
    move v2, v3

    .line 440
    goto :goto_0

    :catchall_0
    move-exception v1

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v1

    .line 443
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    move v2, v3

    .line 440
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 143
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 149
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 150
    .local v1, "remoteAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 152
    .local v2, "remotePort":I
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 153
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v1, v2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 162
    :goto_0
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v3, :cond_1

    .line 163
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 167
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    monitor-exit p0

    return-object p0

    .line 154
    :catch_0
    move-exception v3

    .line 157
    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_0

    :catchall_1
    move-exception v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    .line 198
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .local v1, "this":Ljava/nio/DatagramChannelImpl;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 191
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    .line 198
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local v1    # "this":Ljava/nio/DatagramChannelImpl;
    goto :goto_0

    .line 195
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_3
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    .line 449
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 451
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_0
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 458
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onBind(Z)V
    .locals 6
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 120
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 124
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    move-object v1, v2

    .line 125
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 126
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 127
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    .line 128
    if-eqz p1, :cond_0

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    iget v5, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-virtual {v3, v4, v5}, Ljava/net/DatagramSocket;->onBind(Ljava/net/InetAddress;I)V

    .line 131
    :cond_0
    return-void

    .line 121
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method onConnect(Ljava/net/InetAddress;IZ)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .param p3, "updateSocketState"    # Z

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 178
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 179
    if-eqz p3, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocket;->onConnect(Ljava/net/InetAddress;I)V

    .line 182
    :cond_0
    return-void
.end method

.method onDisconnect(Z)V
    .locals 1
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 209
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onDisconnect()V

    .line 212
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 320
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 337
    :cond_0
    :goto_0
    return v2

    .line 327
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 328
    :cond_2
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .local v2, "readCount":I
    goto :goto_0

    .line 330
    .end local v2    # "readCount":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v0, v4, [B

    .line 331
    .local v0, "readArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 332
    .local v1, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 333
    .restart local v2    # "readCount":I
    if-lez v2, :cond_0

    .line 334
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .param p1, "targets"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 345
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 346
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 347
    .local v6, "totalCount":I
    if-nez v6, :cond_0

    .line 348
    const-wide/16 v8, 0x0

    .line 366
    :goto_0
    return-wide v8

    .line 353
    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 355
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 356
    .local v5, "readCount":I
    move v1, v5

    .line 357
    .local v1, "left":I
    move v0, p2

    .line 359
    .local v0, "index":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 360
    .local v3, "readArray":[B
    :goto_1
    if-lez v1, :cond_1

    .line 361
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 362
    .local v2, "putLength":I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 364
    sub-int/2addr v1, v2

    .line 365
    goto :goto_1

    .line 366
    .end local v2    # "putLength":I
    :cond_1
    int-to-long v8, v5

    goto :goto_0
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 8
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 217
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 219
    iget-boolean v6, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v6, :cond_0

    move-object v2, v5

    .line 242
    :goto_0
    return-object v2

    .line 223
    :cond_0
    const/4 v2, 0x0

    .line 225
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 228
    iget-object v7, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    .line 230
    .local v1, "loop":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    .line 235
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_0

    .line 233
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_1

    .line 235
    .end local v1    # "loop":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    move-object v2, v5

    goto :goto_0

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v1    # "loop":Z
    :cond_2
    move v3, v4

    goto :goto_2

    .end local v1    # "loop":Z
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    move v3, v4

    goto :goto_3

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v5

    :cond_4
    move v3, v4

    goto :goto_4
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 9
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 289
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 290
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    move-object v0, p2

    .line 292
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 293
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_0

    .line 294
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_1
    iget-object v5, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, "sendCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 306
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-static {v2, p1, v6, v7, v8}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v1

    .line 307
    iget-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v2, :cond_2

    .line 308
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_2
    if-ltz v1, :cond_3

    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 313
    monitor-exit v5

    return v1

    :cond_3
    move v3, v4

    .line 311
    goto :goto_0

    :catchall_0
    move-exception v2

    if-ltz v1, :cond_4

    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v2

    .line 314
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_4
    move v3, v4

    .line 311
    goto :goto_1
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .locals 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 105
    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 390
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 391
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 407
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 408
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 409
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 410
    const-wide/16 v8, 0x0

    .line 430
    :goto_0
    return-wide v8

    .line 412
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 413
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, "val":I
    :goto_1
    add-int v8, p3, p2

    if-ge v5, v8, :cond_1

    .line 414
    aget-object v4, p1, v5

    .line 415
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 416
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 417
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 419
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 420
    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 421
    .local v3, "result":I
    move v5, p2

    .line 422
    move v7, v3

    .line 423
    .local v7, "written":I
    :goto_2
    if-lez v3, :cond_2

    .line 424
    aget-object v4, p1, v5

    .line 425
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 426
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    add-int/lit8 v5, v5, 0x1

    .line 428
    sub-int/2addr v3, v1

    .line 429
    goto :goto_2

    .line 430
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    goto :goto_0
.end method
