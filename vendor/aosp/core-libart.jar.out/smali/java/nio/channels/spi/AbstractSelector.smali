.class public abstract Ljava/nio/channels/spi/AbstractSelector;
.super Ljava/nio/channels/Selector;
.source "AbstractSelector.java"


# instance fields
.field private final cancelledKeysSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final wakeupRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/nio/channels/Selector;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/nio/channels/spi/AbstractSelector$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractSelector$1;-><init>(Ljava/nio/channels/spi/AbstractSelector;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 48
    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->pushInterruptAction$(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 127
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final cancelledKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    return-object v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->implCloseSelector()V

    .line 60
    :cond_0
    return-void
.end method

.method protected final deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/spi/AbstractSelectionKey;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->deregister(Ljava/nio/channels/SelectionKey;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p1, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 107
    return-void
.end method

.method protected final end()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->popInterruptAction$(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method protected abstract implCloseSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method protected abstract register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
.end method
