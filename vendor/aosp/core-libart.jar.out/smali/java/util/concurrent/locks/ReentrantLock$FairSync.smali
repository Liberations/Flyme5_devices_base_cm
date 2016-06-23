.class final Ljava/util/concurrent/locks/ReentrantLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x29a554bceb4b42ecL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final lock()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->acquire(I)V

    .line 196
    return-void
.end method

.method protected final tryAcquire(I)Z
    .locals 6
    .param p1, "acquires"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 204
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v0

    .line 205
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedPredecessors()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 219
    :goto_0
    return v3

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v1, v5, :cond_2

    .line 213
    add-int v2, v0, p1

    .line 214
    .local v2, "nextc":I
    if-gez v2, :cond_1

    .line 215
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    goto :goto_0

    .end local v2    # "nextc":I
    :cond_2
    move v3, v4

    .line 219
    goto :goto_0
.end method
