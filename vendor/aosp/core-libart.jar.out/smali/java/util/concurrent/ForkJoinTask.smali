.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1498
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1499
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1500
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 1502
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1503
    const-class v1, Ljava/util/concurrent/ForkJoinTask;

    .line 1504
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    return-void

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1437
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1450
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1463
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 476
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .prologue
    .line 486
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 487
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 488
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 490
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 491
    .local v6, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 492
    .local v2, "i":I
    aget-object v0, v6, v2

    .line 493
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 494
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 495
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 496
    .local v4, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    .line 497
    if-nez v5, :cond_1

    .line 498
    aput-object v4, v6, v2

    .line 506
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 507
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    return-void

    .line 500
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 509
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 503
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    .line 504
    move-object v0, v4

    .line 505
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 5

    .prologue
    .line 368
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    .local v0, "s":I
    if-gez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    return v0

    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 5

    .prologue
    .line 353
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v0, "s":I
    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, v2, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v4

    goto :goto_0

    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 9

    .prologue
    .line 574
    .local v6, "x":Ljava/lang/ref/Reference;
    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 575
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 576
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinTask;

    .line 577
    .local v2, "key":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 578
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    and-int v1, v7, v8

    .line 579
    .local v1, "i":I
    aget-object v0, v5, v1

    .line 580
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 581
    .local v4, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_0

    .line 582
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 583
    .local v3, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 584
    if-nez v4, :cond_1

    .line 585
    aput-object v3, v5, v1

    goto :goto_0

    .line 587
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 590
    :cond_2
    move-object v4, v0

    .line 591
    move-object v0, v3

    .line 592
    goto :goto_1

    .line 595
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 9

    .prologue
    .line 285
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 286
    .local v6, "cp":Ljava/util/concurrent/ForkJoinPool;
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_3

    .line 287
    if-eqz v6, :cond_0

    .line 288
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 289
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    move-result v4

    .line 293
    :cond_0
    :goto_0
    if-ltz v4, :cond_3

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_3

    .line 294
    const/4 v8, 0x0

    .line 296
    .local v8, "interrupted":Z
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    .line 300
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :cond_2
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v4, :cond_1

    .line 310
    if-eqz v8, :cond_3

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 314
    .end local v8    # "interrupted":Z
    :cond_3
    return v4

    .line 290
    :cond_4
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    goto :goto_0

    .line 301
    .restart local v8    # "interrupted":Z
    :catch_0
    move-exception v7

    .line 302
    .local v7, "ie":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .line 303
    goto :goto_1

    .line 306
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 323
    .local v6, "cp":Ljava/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 325
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    if-eqz v6, :cond_1

    .line 326
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 327
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    .line 331
    :cond_1
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_4

    .line 332
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_3

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 338
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 328
    :cond_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 337
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 341
    :cond_4
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    .prologue
    .line 1126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1127
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    .prologue
    .line 1170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1171
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1174
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1173
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1174
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1191
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v5, 0x0

    .line 528
    iget v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v7, -0x10000000

    and-int/2addr v6, v7

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_1

    move-object v1, v5

    .line 567
    :cond_0
    :goto_0
    return-object v1

    .line 530
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 532
    .local v2, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 533
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 535
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 536
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 537
    .local v4, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v4, v6

    .line 538
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 539
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 541
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 544
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v1, v5

    .line 545
    goto :goto_0

    .line 541
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 602
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 603
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    :cond_0
    return-void

    .line 607
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    .prologue
    .line 1087
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1088
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1089
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1093
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .prologue
    .line 1140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/high16 v6, -0x10000000

    .line 785
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    if-nez v5, :cond_2

    .line 786
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 816
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object v4, p0

    .line 790
    check-cast v4, Ljava/util/List;

    .line 792
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 793
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 794
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 795
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 796
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_4

    .line 797
    if-nez v0, :cond_3

    .line 798
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 794
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 800
    :cond_4
    if-eqz v1, :cond_5

    .line 801
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2

    .line 802
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v6, :cond_3

    if-nez v0, :cond_3

    .line 803
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 805
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v2, :cond_9

    .line 806
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 807
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    .line 808
    if-eqz v0, :cond_8

    .line 809
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 805
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 810
    :cond_8
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v6, :cond_7

    .line 811
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 814
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9
    if-eqz v0, :cond_1

    .line 815
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v3, -0x10000000

    .line 718
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 719
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v2

    and-int v0, v2, v3

    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    .line 720
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 721
    :cond_0
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v2

    and-int v1, v2, v3

    .local v1, "s2":I
    if-eq v1, v3, :cond_1

    .line 722
    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 723
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v5, -0x10000000

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 743
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 744
    aget-object v3, p0, v1

    .line 745
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    .line 746
    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 743
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 749
    :cond_1
    if-eqz v1, :cond_2

    .line 750
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 751
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 752
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 754
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    .line 755
    aget-object v3, p0, v1

    .line 756
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    .line 757
    if-eqz v0, :cond_5

    .line 758
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 754
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 759
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 760
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    .line 763
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 764
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 765
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1247
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1250
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1249
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1250
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    goto :goto_1
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1488
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1489
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1490
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1491
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 634
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-ne p1, v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 636
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 637
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 638
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 616
    if-eqz p0, :cond_0

    .line 617
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 618
    :cond_0
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    .prologue
    .line 236
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 241
    .end local v4    # "s":I
    :goto_0
    return v4

    .line 238
    .restart local v4    # "s":I
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_2
    move v4, p1

    .line 241
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 455
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 456
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 457
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 458
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 627
    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1479
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1480
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000    # -2.0f

    .line 847
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6
    .param p1, "e"    # S
    .param p2, "tag"    # S

    .prologue
    .line 1335
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    .line 1336
    const/4 v0, 0x0

    .line 1339
    :goto_0
    return v0

    .line 1337
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    const/high16 v1, -0x10000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 933
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 907
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 910
    return-void

    .line 907
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    .prologue
    .line 255
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, "s":I
    if-ltz v2, :cond_0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 261
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 262
    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    .end local v0    # "completed":Z
    :cond_0
    move v3, v2

    .line 264
    :goto_0
    return v3

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 660
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    .line 663
    :goto_0
    return-object p0

    .line 662
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    .line 963
    .local v1, "s":I
    :goto_0
    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    if-ne v1, v2, :cond_1

    .line 964
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 960
    .end local v1    # "s":I
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v1

    goto :goto_0

    .line 965
    .restart local v1    # "s":I
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 966
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 967
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 987
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 990
    :cond_0
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v20

    .line 992
    .local v20, "ns":J
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v8, "s":I
    if-ltz v8, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_e

    .line 993
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v12, v4, v20

    .line 994
    .local v12, "deadline":J
    const/16 v17, 0x0

    .line 995
    .local v17, "p":Ljava/util/concurrent/ForkJoinPool;
    const/16 v23, 0x0

    .line 996
    .local v23, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    .line 997
    .local v22, "t":Ljava/lang/Thread;
    move-object/from16 v0, v22

    instance-of v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_4

    move-object/from16 v24, v22

    .line 998
    check-cast v24, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 999
    .local v24, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v17, v0

    .line 1000
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v23, v0

    .line 1001
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    .line 1009
    .end local v24    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 1010
    .local v10, "canBlock":Z
    const/16 v16, 0x0

    .line 1012
    .local v16, "interrupted":Z
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_b

    .line 1013
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v4, :cond_6

    .line 1014
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1041
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_3

    if-eqz v10, :cond_3

    .line 1042
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    :cond_3
    throw v4

    .line 1003
    .end local v10    # "canBlock":Z
    .end local v16    # "interrupted":Z
    :cond_4
    sget-object v11, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .local v11, "cp":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v11, :cond_1

    .line 1004
    move-object/from16 v0, p0

    instance-of v4, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    .line 1005
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v11, v4}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I

    goto :goto_0

    .line 1006
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1007
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 1015
    .end local v11    # "cp":Ljava/util/concurrent/ForkJoinPool;
    .restart local v10    # "canBlock":Z
    .restart local v16    # "interrupted":Z
    :cond_6
    if-nez v10, :cond_8

    .line 1016
    if-eqz v17, :cond_7

    :try_start_1
    move-object/from16 v0, v17

    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1017
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    .line 1020
    :cond_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    .local v18, "ms":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_a

    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v5, 0x10000

    or-int v9, v8, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1022
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ltz v4, :cond_d

    .line 1025
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1033
    :cond_9
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1035
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_b

    if-nez v16, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    sub-long v20, v12, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-gtz v4, :cond_2

    .line 1041
    .end local v18    # "ms":J
    :cond_b
    if-eqz v17, :cond_c

    if-eqz v10, :cond_c

    .line 1042
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    .line 1044
    :cond_c
    if-eqz v16, :cond_e

    .line 1045
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1026
    .restart local v18    # "ms":J
    :catch_0
    move-exception v15

    .line 1027
    .local v15, "ie":Ljava/lang/InterruptedException;
    if-nez v17, :cond_9

    .line 1028
    const/16 v16, 0x1

    goto :goto_2

    .line 1032
    .end local v15    # "ie":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1033
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1047
    .end local v10    # "canBlock":Z
    .end local v12    # "deadline":J
    .end local v16    # "interrupted":Z
    .end local v17    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v18    # "ms":J
    .end local v22    # "t":Ljava/lang/Thread;
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_e
    const/high16 v4, -0x10000000

    and-int/2addr v8, v4

    const/high16 v4, -0x10000000

    if-eq v8, v4, :cond_11

    .line 1049
    const/high16 v4, -0x40000000    # -2.0f

    if-ne v8, v4, :cond_f

    .line 1050
    new-instance v4, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v4

    .line 1051
    :cond_f
    const/high16 v4, -0x80000000

    if-eq v8, v4, :cond_10

    .line 1052
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 1053
    :cond_10
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v14

    .local v14, "ex":Ljava/lang/Throwable;
    if-eqz v14, :cond_11

    .line 1054
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v14}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1056
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 886
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int v0, v1, v2

    .line 887
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .prologue
    .line 1299
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 465
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 694
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 695
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 696
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 855
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .prologue
    .line 864
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v1, -0x10000000

    .line 875
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 851
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 679
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 680
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 681
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    .prologue
    .line 945
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 946
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .prologue
    .line 1075
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 1076
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 1066
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    .line 1067
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 425
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    .line 426
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 427
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 428
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 430
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 431
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 432
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 433
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 434
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    .line 435
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    invoke-direct {v6, p0, p1, v7}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v4

    .line 446
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    .line 438
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 433
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 1112
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1113
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "tag"    # S

    .prologue
    .line 1312
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    int-to-short v0, v4

    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    .prologue
    .line 275
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 276
    .local v4, "s":I
    if-ltz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryUnfork()Z
    .locals 2

    .prologue
    .line 1155
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    goto :goto_0
.end method
