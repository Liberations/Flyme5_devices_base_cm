.class public Ljava/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/PlainSocketImpl$PlainSocketOutputStream;,
        Ljava/net/PlainSocketImpl$PlainSocketInputStream;
    }
.end annotation


# static fields
.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private proxy:Ljava/net/Proxy;

.field private shutdownInput:Z

.field private streaming:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 54
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 55
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "localport"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 70
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 71
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 72
    iput-object p3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 73
    iput p4, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 74
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 61
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 62
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    .line 63
    return-void
.end method

.method static synthetic access$000(Ljava/net/PlainSocketImpl;[BII)I
    .locals 1
    .param p0, "x0"    # Ljava/net/PlainSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->read([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/net/PlainSocketImpl;[BII)V
    .locals 0
    .param p0, "x0"    # Ljava/net/PlainSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->write([BII)V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .locals 2
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 180
    .local v0, "normalAddr":Ljava/net/InetAddress;
    :goto_0
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Ljava/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V

    .line 185
    :goto_1
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 186
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 187
    return-void

    .end local v0    # "normalAddr":Ljava/net/InetAddress;
    :cond_0
    move-object v0, p1

    .line 179
    goto :goto_0

    .line 183
    .restart local v0    # "normalAddr":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    goto :goto_1
.end method

.method private read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 478
    if-nez p3, :cond_0

    .line 494
    :goto_0
    return v5

    .line 481
    :cond_0
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 482
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v1, :cond_1

    move v5, v9

    .line 483
    goto :goto_0

    .line 485
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, v5

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v8

    .line 487
    .local v8, "readCount":I
    if-nez v8, :cond_2

    .line 488
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 491
    :cond_2
    if-ne v8, v9, :cond_3

    .line 492
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    :cond_3
    move v5, v8

    .line 494
    goto :goto_0
.end method

.method private socksBind()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    sget-object v3, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_0

    .line 393
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Invalid SOCKS client"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to connect to SOCKS server"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x2

    sget-object v4, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    sget v5, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    invoke-direct {p0, v3, v4, v5}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 399
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v1

    .line 401
    .local v1, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    .line 402
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_2

    .line 408
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 417
    :goto_0
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 418
    return-void

    .line 413
    :cond_2
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 414
    .local v2, "replyBytes":[B
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 415
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v3

    invoke-static {v1, v2, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    invoke-direct {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 328
    sput-object p1, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 329
    sput p2, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    .line 330
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SOCKS connection failed"

    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 309
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "proxyName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private socksGetServerPort()I
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 297
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Ljava/net/Socks4Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 437
    new-instance v2, Ljava/net/Socks4Message;

    invoke-direct {v2}, Ljava/net/Socks4Message;-><init>()V

    .line 438
    .local v2, "reply":Ljava/net/Socks4Message;
    const/4 v0, 0x0

    .line 439
    .local v0, "bytesRead":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 440
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x8

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 442
    .local v1, "count":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 447
    .end local v1    # "count":I
    :cond_0
    if-eq v6, v0, :cond_2

    .line 448
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Malformed reply from SOCKS server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    .restart local v1    # "count":I
    :cond_1
    add-int/2addr v0, v1

    .line 446
    goto :goto_0

    .line 450
    .end local v1    # "count":I
    :cond_2
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 340
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 341
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 342
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/net/Socks4Message;

    invoke-direct {v0}, Ljava/net/Socks4Message;-><init>()V

    .line 425
    .local v0, "request":Ljava/net/Socks4Message;
    invoke-virtual {v0, p1}, Ljava/net/Socks4Message;->setCommandOrResult(I)V

    .line 426
    invoke-virtual {v0, p3}, Ljava/net/Socks4Message;->setPort(I)V

    .line 427
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setIP([B)V

    .line 428
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 431
    return-void
.end method

.method private usingSocks()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private write([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 501
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 502
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    if-lez p3, :cond_1

    .line 504
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v4

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v7

    .line 505
    .local v7, "bytesWritten":I
    sub-int/2addr p3, v7

    .line 506
    add-int/2addr p2, v7

    .line 507
    goto :goto_0

    .line 512
    .end local v7    # "bytesWritten":I
    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v6, p0, Ljava/net/PlainSocketImpl;->port:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 514
    :cond_1
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 5
    .param p1, "newImpl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 82
    check-cast v3, Ljava/net/PlainSocketImpl;

    invoke-direct {v3}, Ljava/net/PlainSocketImpl;->socksBind()V

    .line 83
    check-cast p1, Ljava/net/PlainSocketImpl;

    .end local p1    # "newImpl":Ljava/net/SocketImpl;
    invoke-virtual {p1}, Ljava/net/PlainSocketImpl;->socksAccept()V

    .line 108
    :goto_0
    return-void

    .line 88
    .restart local p1    # "newImpl":Ljava/net/SocketImpl;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 89
    .local v2, "peerAddress":Ljava/net/InetSocketAddress;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, v2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 93
    .local v0, "clientFd":Ljava/io/FileDescriptor;
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 95
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 96
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 107
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->localport:I

    goto :goto_0

    .line 97
    .end local v0    # "clientFd":Ljava/io/FileDescriptor;
    .end local v2    # "peerAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_1

    .line 99
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 101
    :cond_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
.end method

.method protected declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 125
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    goto :goto_0
.end method

.method protected declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 148
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 159
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 164
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 3
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 456
    .local v0, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 457
    return-void
.end method

.method protected create(Z)V
    .locals 1
    .param p1, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iput-boolean p1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 198
    invoke-static {p1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 199
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 214
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketInputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 247
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected listen(I)V
    .locals 3
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 142
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 143
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 154
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 191
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 192
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 193
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 9
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p1

    aput-byte v1, v2, v0

    .line 468
    .local v2, "buffer":[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v5, Landroid/system/OsConstants;->MSG_OOB:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    return-void

    .line 469
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v8

    .line 470
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 287
    return-void
.end method

.method protected shutdownInput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    .line 363
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SHUT_RD:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected shutdownOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SHUT_WR:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public socksAccept()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 351
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 352
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method
