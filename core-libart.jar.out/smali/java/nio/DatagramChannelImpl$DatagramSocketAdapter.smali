.class Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V
    .locals 2
    .param p1, "socketimpl"    # Ljava/net/DatagramSocketImpl;
    .param p2, "channelImpl"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 510
    iput-object p2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    .line 513
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    # getter for: Ljava/nio/DatagramChannelImpl;->localPort:I
    invoke-static {p2}, Ljava/nio/DatagramChannelImpl;->access$000(Ljava/nio/DatagramChannelImpl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 516
    :cond_0
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 523
    :goto_0
    invoke-virtual {p2}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onClose()V

    .line 526
    :cond_1
    return-void

    .line 521
    :cond_2
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onDisconnect()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 541
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 542
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 543
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    monitor-enter v1

    .line 607
    :try_start_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 608
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 611
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 566
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "peer"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Socket is already connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 553
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1, v4}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    move-object v0, p1

    .line 555
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 556
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V

    .line 559
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 620
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 621
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    .line 622
    return-void
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    return-object v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 578
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    move-result v0

    .line 579
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 580
    if-nez v0, :cond_1

    .line 583
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 585
    :cond_1
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 595
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    move-result v0

    .line 596
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 597
    if-nez v0, :cond_1

    .line 600
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 602
    :cond_1
    return-void
.end method
