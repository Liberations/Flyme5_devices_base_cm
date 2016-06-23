.class final Ljava/nio/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field private channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

.field private interestOps:I

.field private readyOps:I

.field private selector:Ljava/nio/SelectorImpl;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "operations"    # I
    .param p3, "attachment"    # Ljava/lang/Object;
    .param p4, "selector"    # Ljava/nio/SelectorImpl;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    .line 43
    iput p2, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    .line 44
    iput-object p4, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    .line 45
    invoke-virtual {p0, p3}, Ljava/nio/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private checkValid()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-object v0
.end method

.method public interestOps()I
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    .line 56
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    monitor-exit v1

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 2
    .param p1, "operations"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    .line 70
    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iput p1, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    .line 75
    monitor-exit v1

    .line 76
    return-object p0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method interestOpsNoCheck()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    monitor-exit v1

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readyOps()I
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    .line 82
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    return-object v0
.end method

.method setReadyOps(I)V
    .locals 1
    .param p1, "readyOps"    # I

    .prologue
    .line 96
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    and-int/2addr v0, p1

    iput v0, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    .line 97
    return-void
.end method
