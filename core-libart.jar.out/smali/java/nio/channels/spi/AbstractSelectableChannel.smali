.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# instance fields
.field private final blockingLock:Ljava/lang/Object;

.field isBlocking:Z

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 56
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 57
    return-void
.end method

.method private declared-synchronized containsValidKeys()Z
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 276
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/4 v2, 0x1

    .line 280
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 275
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 2
    .param p1, "blockingMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 239
    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-ne v0, p1, :cond_1

    .line 241
    monitor-exit v1

    .line 249
    :goto_0
    return-object p0

    .line 243
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->containsValidKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 247
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 248
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized deregister(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized implCloseChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 175
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 176
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 180
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    monitor-exit v1

    return v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isRegistered()Z
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

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

.method public final declared-synchronized keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .param p1, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 92
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 96
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "interestSet"    # I
    .param p3, "attachment"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid ops in interest set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 160
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    if-nez p2, :cond_3

    .line 143
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 146
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "selector not open"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 149
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_5

    .line 150
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    .end local p1    # "selector":Ljava/nio/channels/Selector;
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 151
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_0
    monitor-exit v2

    return-object v0

    .line 153
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    :cond_5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    new-instance v1, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v1}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v1

    .line 156
    :cond_6
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 157
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
