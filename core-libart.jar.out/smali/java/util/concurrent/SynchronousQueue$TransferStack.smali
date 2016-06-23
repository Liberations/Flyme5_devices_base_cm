.class final Ljava/util/concurrent/SynchronousQueue$TransferStack;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/SynchronousQueue$Transferer",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final DATA:I = 0x1

.field static final FULFILLING:I = 0x2

.field static final REQUEST:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J


# instance fields
.field volatile head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 484
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    .line 485
    const-class v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    .line 486
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->headOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    .line 201
    return-void
.end method

.method static isFulfilling(I)Z
    .locals 1
    .param p0, "m"    # I

    .prologue
    .line 198
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 0
    .param p0, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "next"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p3, "mode"    # I

    .prologue
    .line 287
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .end local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-direct {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;-><init>(Ljava/lang/Object;)V

    .line 288
    .restart local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_0
    iput p3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    .line 289
    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 290
    return-object p0
.end method


# virtual methods
.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 11
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 405
    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, p3

    .line 406
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 407
    .local v4, "w":Ljava/lang/Thread;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz p2, :cond_3

    sget v3, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    .line 410
    .local v3, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 411
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    .line 412
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 413
    .local v2, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_5

    .line 414
    return-object v2

    .end local v0    # "deadline":J
    .end local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "spins":I
    .end local v4    # "w":Ljava/lang/Thread;
    :cond_2
    move-wide v0, v6

    .line 405
    goto :goto_0

    .line 407
    .restart local v0    # "deadline":J
    .restart local v4    # "w":Ljava/lang/Thread;
    :cond_3
    sget v3, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_1

    .line 415
    .restart local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .restart local v3    # "spins":I
    :cond_5
    if-eqz p2, :cond_6

    .line 416
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p3, v0, v8

    .line 417
    cmp-long v8, p3, v6

    if-gtz v8, :cond_6

    .line 418
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    goto :goto_1

    .line 422
    :cond_6
    if-lez v3, :cond_8

    .line 423
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    .line 424
    :cond_8
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-nez v8, :cond_9

    .line 425
    iput-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 426
    :cond_9
    if-nez p2, :cond_a

    .line 427
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 428
    :cond_a
    const-wide/16 v8, 0x3e8

    cmp-long v8, p3, v8

    if-lez v8, :cond_0

    .line 429
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .line 275
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V
    .locals 4
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    const/4 v3, 0x0

    .line 446
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    .line 447
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    .line 460
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 461
    .local v2, "past":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    iget-object v2, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 466
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .local v1, "p":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    iget-object v3, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 470
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 471
    iget-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 472
    .local v0, "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_1

    .line 475
    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 477
    .end local v0    # "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_3
    return-void
.end method

.method shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .line 438
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 439
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez p1, :cond_2

    const/4 v3, 0x0

    .line 323
    .local v3, "mode":I
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 324
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_1

    iget v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    if-ne v6, v3, :cond_8

    .line 325
    :cond_1
    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_3

    .line 326
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 327
    iget-object v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 320
    .end local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "mode":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 330
    .restart local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .restart local v3    # "mode":I
    :cond_3
    invoke-static {v4, p1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    invoke-virtual {p0, v4, p2, p3, p4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v1

    .line 332
    .local v1, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-ne v1, v4, :cond_5

    .line 333
    invoke-virtual {p0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V

    .line 354
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_4
    :goto_1
    return-object v5

    .line 336
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v0, :cond_6

    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v5, v4, :cond_6

    .line 337
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 338
    :cond_6
    if-nez v3, :cond_7

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    .line 340
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_8
    iget v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 341
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 342
    iget-object v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 343
    :cond_9
    or-int/lit8 v6, v3, 0x2

    invoke-static {v4, p1, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    :goto_2
    iget-object v1, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 346
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_a

    .line 347
    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 348
    const/4 v4, 0x0

    .line 349
    goto :goto_0

    .line 351
    :cond_a
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 352
    .local v2, "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 353
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 354
    if-nez v3, :cond_b

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_b
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    .line 356
    :cond_c
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_2

    .line 360
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_d
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 361
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_e

    .line 362
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    .line 364
    :cond_e
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 365
    .restart local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 366
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    .line 368
    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0
.end method
