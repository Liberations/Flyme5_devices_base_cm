.class final Ljava/util/concurrent/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL

.field private static final waiterOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 515
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 516
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 517
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    .line 519
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "next"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    .line 521
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "waiter"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 441
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 442
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 5
    .param p1, "haveData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 488
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 490
    .local v0, "d":Z
    if-eq v0, p1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .local v1, "x":Ljava/lang/Object;
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    if-ne v4, v0, :cond_1

    .end local v1    # "x":Ljava/lang/Object;
    :goto_1
    return v2

    .restart local v1    # "x":Ljava/lang/Object;
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 432
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 427
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final forgetContents()V
    .locals 4

    .prologue
    .line 462
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 463
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 464
    return-void
.end method

.method final forgetNext()V
    .locals 4

    .prologue
    .line 449
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 450
    return-void
.end method

.method final isMatched()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 472
    .local v0, "x":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v1, v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method final isUnmatchedRequest()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final tryMatchData()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 499
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 501
    const/4 v1, 0x1

    .line 503
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
