.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .locals 2
    .param p1, "socketImpl"    # Ljava/net/PlainSocketImpl;
    .param p2, "channel"    # Ljava/nio/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 501
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    .line 502
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    .line 503
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    .line 506
    # getter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    # getter for: Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;

    move-result-object v0

    # getter for: Ljava/nio/SocketChannelImpl;->localPort:I
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$200(Ljava/nio/SocketChannelImpl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 509
    :cond_0
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    # getter for: Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    # getter for: Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 512
    :cond_1
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V

    .line 516
    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    # getter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v1}, Ljava/nio/SocketChannelImpl;->access$400(Ljava/nio/SocketChannelImpl;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 546
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 548
    :cond_1
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 549
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 550
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v1

    .line 555
    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    .line 556
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 561
    :cond_0
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v1

    .line 531
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 532
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1, v3}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 533
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 534
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 535
    .local v0, "remoteInetAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 538
    .end local v0    # "remoteInetAddress":Ljava/net/InetSocketAddress;
    :cond_2
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method
