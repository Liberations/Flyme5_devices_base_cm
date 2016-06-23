.class final Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile completedTasks:J

.field firstTask:Ljava/lang/Runnable;

.field final synthetic this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "firstTask"    # Ljava/lang/Runnable;

    .prologue
    .line 579
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 580
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 581
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 582
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 583
    return-void
.end method


# virtual methods
.method interruptIfStarted()V
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 623
    .restart local v0    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->acquire(I)V

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 588
    return-void
.end method

.method protected tryAcquire(I)Z
    .locals 3
    .param p1, "unused"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 600
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 604
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryAcquire(I)Z

    move-result v0

    return v0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .param p1, "unused"    # I

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->release(I)Z

    return-void
.end method
