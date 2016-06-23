.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final runnerOffset:J

.field private static final stateOffset:J

.field private static final waitersOffset:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 444
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    .line 445
    const-class v1, Ljava/util/concurrent/FutureTask;

    .line 446
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    .line 448
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "runner"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    .line 450
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "waiters"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 108
    return-void
.end method

.method private awaitDone(ZJ)I
    .locals 10
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long v6, v0, p2

    .line 370
    .local v6, "deadline":J
    :goto_0
    const/4 v5, 0x0

    .line 371
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v8, 0x0

    .line 373
    .local v8, "queued":Z
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 375
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 369
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6    # "deadline":J
    .end local v8    # "queued":Z
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 378
    .restart local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v6    # "deadline":J
    .restart local v8    # "queued":Z
    :cond_1
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 379
    .local v9, "s":I
    const/4 v0, 0x1

    if-le v9, v0, :cond_3

    .line 380
    if-eqz v5, :cond_2

    .line 381
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 395
    .end local v9    # "s":I
    :cond_2
    :goto_2
    return v9

    .line 384
    .restart local v9    # "s":I
    :cond_3
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 385
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 386
    :cond_4
    if-nez v5, :cond_5

    .line 387
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    .restart local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_1

    .line 388
    :cond_5
    if-nez v8, :cond_6

    .line 389
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 391
    :cond_6
    if-eqz p1, :cond_8

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long p2, v6, v0

    .line 393
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_7

    .line 394
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 395
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    goto :goto_2

    .line 397
    :cond_7
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 400
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private finishCompletion()V
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v5, 0x0

    .line 337
    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    if-eqz v4, :cond_2

    .line 338
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 341
    .local v7, "t":Ljava/lang/Thread;
    if-eqz v7, :cond_1

    .line 342
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 343
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 345
    :cond_1
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 346
    .local v6, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v6, :cond_3

    .line 355
    .end local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7    # "t":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 357
    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 358
    return-void

    .line 348
    .restart local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v7    # "t":Ljava/lang/Thread;
    :cond_3
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 349
    move-object v4, v6

    .line 350
    goto :goto_0
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .locals 2
    .param p1, "s"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x5

    .line 305
    if-ne p1, v1, :cond_0

    .line 306
    :goto_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v0, v1, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    .prologue
    .line 415
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_3

    .line 416
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 419
    :goto_0
    const/4 v6, 0x0

    .local v6, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_1
    if-eqz v4, :cond_3

    .line 420
    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 421
    .local v5, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 422
    move-object v6, v4

    .line 419
    :cond_0
    move-object v4, v5

    goto :goto_1

    .line 423
    :cond_1
    if-eqz v6, :cond_2

    .line 424
    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 425
    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    .end local v4    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v5    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_3
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 89
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 90
    return-object v0

    .line 91
    :cond_0
    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    .line 92
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 93
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "x":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v4, 0x0

    .line 136
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    if-eqz p1, :cond_1

    const/4 v5, 0x5

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_0
    :goto_1
    return v4

    .line 136
    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    .line 141
    :cond_2
    if-eqz p1, :cond_4

    .line 143
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 144
    .local v6, "t":Ljava/lang/Thread;
    if-eqz v6, :cond_3

    .line 145
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v6    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 153
    const/4 v4, 0x1

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x6

    invoke-virtual {v1, p0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    throw v0
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 189
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
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
    .line 160
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 161
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 162
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
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
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x1

    .line 171
    if-nez p3, :cond_0

    .line 172
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 173
    :cond_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 174
    .local v0, "s":I
    if-gt v0, v1, :cond_1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 176
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 177
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v4, 0x0

    .line 227
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 233
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 237
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 238
    .local v9, "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x1

    .line 244
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    .local v8, "ran":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 245
    :try_start_2
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v8    # "ran":Z
    :cond_2
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 254
    .local v10, "s":I
    if-lt v10, v11, :cond_0

    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    goto :goto_0

    .line 239
    .end local v10    # "s":I
    :catch_0
    move-exception v7

    .line 240
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 241
    .restart local v9    # "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 242
    .restart local v8    # "ran":Z
    :try_start_3
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 250
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "ran":Z
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 254
    .restart local v10    # "s":I
    if-lt v10, v11, :cond_3

    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 256
    :cond_3
    throw v0
.end method

.method protected runAndReset()Z
    .locals 12

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 269
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 295
    :goto_0
    return v0

    .line 273
    :cond_1
    const/4 v8, 0x0

    .line 274
    .local v8, "ran":Z
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 276
    .local v9, "s":I
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    if-nez v9, :cond_2

    .line 279
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    const/4 v8, 0x1

    .line 288
    :cond_2
    :goto_1
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 291
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 292
    if-lt v9, v11, :cond_3

    .line 293
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 295
    :cond_3
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v7

    .line 282
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 288
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 291
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 292
    if-lt v9, v11, :cond_4

    .line 293
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_4
    throw v0

    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :cond_5
    move v0, v10

    .line 295
    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 203
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 204
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 206
    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 221
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 222
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 224
    :cond_0
    return-void
.end method
