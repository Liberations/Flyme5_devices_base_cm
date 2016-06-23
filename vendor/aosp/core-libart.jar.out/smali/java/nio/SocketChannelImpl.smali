.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;,
        Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "existingFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 114
    iput-object p2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "connect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 86
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 104
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 105
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 106
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$100(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/SocketChannelImpl;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    return v0
.end method

.method static synthetic access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$400(Ljava/nio/SocketChannelImpl;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    return v0
.end method

.method private declared-synchronized checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 420
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 432
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 433
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 435
    :cond_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 436
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private isEINPROGRESS(Ljava/io/IOException;)Z
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 251
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_0

    .line 252
    check-cast v0, Landroid/system/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EINPROGRESS:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 336
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    .line 337
    const/4 v6, 0x0

    .line 339
    .local v6, "readCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 342
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 344
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    if-lez v6, :cond_2

    :goto_0
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 348
    :cond_1
    monitor-exit v9

    return v6

    :cond_2
    move v7, v8

    .line 345
    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    if-lez v6, :cond_4

    move v1, v7

    :goto_1
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_3
    throw v0

    .line 349
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move v1, v8

    .line 345
    goto :goto_1
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "socketAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "socketAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_0
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 449
    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v1

    :cond_1
    move-object v0, p0

    .line 451
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 452
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    .line 455
    :cond_2
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 394
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 395
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 409
    :goto_0
    return v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 400
    .local v0, "writeCount":I
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 403
    :cond_1
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 405
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    if-ltz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 409
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 410
    .end local v0    # "writeCount":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0    # "writeCount":I
    :cond_3
    move v3, v1

    .line 406
    goto :goto_1

    .line 405
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 406
    if-ltz v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .locals 10
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 177
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    .line 180
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 181
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 182
    .local v5, "normalAddr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 185
    .local v6, "port":I
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 186
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v3

    .line 190
    .local v3, "isBlocking":Z
    const/4 v1, 0x0

    .line 193
    .local v1, "finished":Z
    if-eqz v3, :cond_1

    .line 194
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 199
    :cond_1
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v9, v5, v6}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v3, :cond_4

    move v4, v7

    .line 201
    .local v4, "newStatus":I
    :goto_0
    const/4 v1, 0x1

    .line 213
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 220
    :cond_2
    :goto_1
    iget-boolean v9, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-nez v9, :cond_3

    .line 221
    invoke-virtual {p0, v8}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 225
    :cond_3
    invoke-virtual {p0, v2, v4, v8}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 227
    iget v9, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v9, v7, :cond_8

    :goto_2
    return v8

    .end local v4    # "newStatus":I
    :cond_4
    move v4, v8

    .line 200
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v0}, Ljava/nio/SocketChannelImpl;->isEINPROGRESS(Ljava/io/IOException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 204
    const/4 v4, 0x1

    .line 213
    .restart local v4    # "newStatus":I
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    goto :goto_1

    .line 206
    .end local v4    # "newStatus":I
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 207
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 208
    const/4 v1, 0x1

    .line 210
    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_7

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_7
    throw v7

    .line 227
    .restart local v4    # "newStatus":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public finishConnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 270
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 264
    :cond_0
    :try_start_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v5, v4, :cond_1

    .line 265
    monitor-exit p0

    .line 294
    :goto_0
    return v1

    .line 267
    :cond_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v5, v1, :cond_2

    .line 268
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    .line 270
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "finished":Z
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 275
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 276
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 277
    .local v3, "port":I
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .line 285
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 288
    monitor-enter p0

    .line 289
    if-eqz v1, :cond_5

    :goto_1
    :try_start_3
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 290
    if-eqz v1, :cond_3

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v4, :cond_3

    .line 291
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 293
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 278
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "port":I
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/net/ConnectException;
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 281
    const/4 v1, 0x1

    .line 283
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 285
    .end local v0    # "e":Ljava/net/ConnectException;
    :catchall_2
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    .line 289
    .restart local v2    # "inetAddress":Ljava/net/InetAddress;
    .restart local v3    # "port":I
    :cond_5
    :try_start_5
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 463
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_0

    .line 464
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 467
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 468
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 463
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
    .line 475
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 476
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccept(Ljava/net/InetSocketAddress;Z)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "updateSocketState"    # Z

    .prologue
    .line 487
    invoke-virtual {p0, p2}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 488
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 489
    return-void
.end method

.method onBind(Z)V
    .locals 6
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 151
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    move-object v1, v2

    .line 156
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 157
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 158
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    .line 159
    if-eqz p1, :cond_0

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    iget v5, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v3, v4, v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 162
    :cond_0
    return-void

    .line 152
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "status"    # I
    .param p3, "updateSocketState"    # Z

    .prologue
    .line 238
    iput p2, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 239
    iput-object p1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 240
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 243
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 300
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

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
    .line 309
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 310
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 311
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 312
    .local v6, "totalCount":I
    if-nez v6, :cond_0

    .line 313
    const-wide/16 v8, 0x0

    .line 332
    :goto_0
    return-wide v8

    .line 315
    :cond_0
    new-array v3, v6, [B

    .line 316
    .local v3, "readArray":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 319
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 320
    .local v5, "readCount":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 321
    if-lez v5, :cond_1

    .line 322
    move v1, v5

    .line 323
    .local v1, "left":I
    move v0, p2

    .line 325
    .local v0, "index":I
    :goto_1
    if-lez v1, :cond_1

    .line 326
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 327
    .local v2, "putLength":I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 329
    sub-int/2addr v1, v2

    .line 330
    goto :goto_1

    .line 332
    .end local v0    # "index":I
    .end local v1    # "left":I
    .end local v2    # "putLength":I
    :cond_1
    int-to-long v8, v5

    goto :goto_0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .locals 7

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 127
    .local v2, "port":I
    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 129
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 131
    :cond_0
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Ljava/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    .line 132
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "port":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_0

    .line 123
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "port":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

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
    .line 366
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 367
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 368
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 369
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 370
    const-wide/16 v8, 0x0

    .line 390
    :goto_0
    return-wide v8

    .line 372
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 373
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, "val":I
    :goto_1
    add-int v8, p3, p2

    if-ge v5, v8, :cond_1

    .line 374
    aget-object v4, p1, v5

    .line 375
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 376
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 377
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 379
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 380
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 381
    .local v3, "result":I
    move v5, p2

    .line 382
    move v7, v3

    .line 383
    .local v7, "written":I
    :goto_2
    if-lez v3, :cond_2

    .line 384
    aget-object v4, p1, v5

    .line 385
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 386
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    add-int/lit8 v5, v5, 0x1

    .line 388
    sub-int/2addr v3, v1

    .line 389
    goto :goto_2

    .line 390
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    goto :goto_0
.end method
