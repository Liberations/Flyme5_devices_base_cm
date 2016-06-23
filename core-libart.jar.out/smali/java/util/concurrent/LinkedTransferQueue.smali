.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_0

    :goto_0
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    .line 1305
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 1306
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue;

    .line 1307
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

    .line 1309
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "tail"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

    .line 1311
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "sweepVotes"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    return-void

    .line 382
    .end local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1313
    .restart local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 984
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 985
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    .line 998
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 999
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p5

    .line 670
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 671
    .local v5, "w":Ljava/lang/Thread;
    const/4 v4, -0x1

    .line 672
    .local v4, "spins":I
    const/4 v3, 0x0

    .line 675
    .local v3, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_0
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 676
    .local v2, "item":Ljava/lang/Object;
    if-eq v2, p3, :cond_2

    .line 678
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 679
    invoke-static {v2}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 684
    .end local p3    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    return-object p3

    .line 669
    .end local v0    # "deadline":J
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    .end local v4    # "spins":I
    .end local v5    # "w":Ljava/lang/Thread;
    .restart local p3    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 681
    .restart local v0    # "deadline":J
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v3    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    .restart local v4    # "spins":I
    .restart local v5    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p4, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-gtz v6, :cond_4

    :cond_3
    invoke-virtual {p1, p3, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 683
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    goto :goto_2

    .line 687
    :cond_4
    if-gez v4, :cond_5

    .line 688
    iget-boolean v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v6}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v4

    if-lez v4, :cond_0

    .line 689
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    goto :goto_1

    .line 691
    :cond_5
    if-lez v4, :cond_6

    .line 692
    add-int/lit8 v4, v4, -0x1

    .line 693
    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_0

    .line 694
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 696
    :cond_6
    iget-object v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v6, :cond_7

    .line 697
    iput-object v5, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 699
    :cond_7
    if-eqz p4, :cond_8

    .line 700
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p5, v0, v6

    .line 701
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_0

    .line 702
    invoke-static {p0, p5, p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 705
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 544
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .locals 6
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 548
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 540
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 562
    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    .prologue
    .line 772
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 773
    .local v0, "count":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 774
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_2

    .line 775
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_0

    .line 776
    const/4 v3, 0x0

    .line 788
    :goto_1
    return v3

    .line 777
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :cond_1
    move v3, v0

    .line 788
    goto :goto_1

    .line 780
    :cond_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 781
    .local v1, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v1, v2, :cond_3

    .line 782
    move-object v2, v1

    goto :goto_0

    .line 784
    :cond_3
    const/4 v0, 0x0

    .line 785
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 959
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    .line 960
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 961
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 962
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 963
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 965
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 966
    const/4 v3, 0x1

    .line 978
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    return v3

    .line 969
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    if-nez v0, :cond_3

    .line 978
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 971
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    .line 972
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_0

    .line 973
    const/4 v2, 0x0

    .line 974
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 755
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 756
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 757
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 758
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    .line 759
    invoke-static {v0}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 764
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-object v2

    .line 761
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_0

    .line 755
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method private firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 3
    .param p1, "isData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_0

    .line 747
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    return-object v0

    .restart local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    move-object v0, v1

    .line 745
    goto :goto_1

    .line 743
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 747
    goto :goto_1
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
    .line 1286
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1289
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1290
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1295
    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .locals 1
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .prologue
    .line 715
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 716
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    .line 717
    const/16 v0, 0xc0

    .line 723
    :goto_0
    return v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    const/16 v0, 0x80

    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 721
    const/16 v0, 0x40

    goto :goto_0

    .line 723
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sweep()V
    .locals 4

    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1

    .line 942
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_0

    .line 944
    move-object v1, v2

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_2

    .line 953
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    return-void

    .line 947
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    if-ne v2, v0, :cond_3

    .line 949
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_0
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 6
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 631
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    .line 633
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_2

    .line 634
    invoke-direct {p0, v4, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 651
    :cond_1
    :goto_1
    return-object v4

    .line 637
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 639
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    .line 640
    if-eq v1, v2, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_3

    move-object v2, v3

    move-object v1, v3

    .end local v3    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v4

    goto :goto_2

    .line 642
    :cond_5
    invoke-virtual {v1, v4, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 643
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 645
    :cond_6
    if-eq v1, v2, :cond_9

    .line 649
    :cond_7
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_8

    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_7

    :cond_9
    move-object v4, v1

    .line 651
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1275
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1276
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1278
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1279
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 16
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 577
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 578
    :cond_0
    const/4 v4, 0x0

    .line 583
    .local v4, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v13, v2

    .local v13, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v13, :cond_2

    .line 584
    iget-boolean v10, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 585
    .local v10, "isData":Z
    iget-object v11, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 586
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v13, :cond_b

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-ne v3, v10, :cond_b

    .line 587
    move/from16 v0, p2

    if-ne v10, v0, :cond_6

    .line 608
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_4

    .line 609
    if-nez v4, :cond_3

    .line 610
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v4    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 611
    .restart local v4    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    .line 612
    .local v5, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1

    .line 614
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_4

    .line 615
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object p1

    .line 617
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    :goto_3
    return-object p1

    .line 586
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 589
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 590
    move-object v14, v13

    .local v14, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_7
    if-eq v14, v2, :cond_9

    .line 591
    iget-object v12, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 592
    .local v12, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v3, v2, :cond_a

    if-nez v12, :cond_8

    move-object v12, v14

    .end local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 593
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 600
    :cond_9
    :goto_4
    iget-object v3, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 601
    invoke-static {v11}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 596
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object v14, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 604
    .end local v14    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    iget-object v12, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 605
    .restart local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v13, v12, :cond_c

    move-object v13, v12

    .line 606
    :goto_5
    goto/16 :goto_0

    .line 605
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v13, v2

    goto :goto_5

    .line 615
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v12    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_d
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1047
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1048
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1241
    if-nez p1, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v2

    .line 1242
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    if-eqz v1, :cond_0

    .line 1243
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1244
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_2

    .line 1245
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1246
    const/4 v2, 0x1

    goto :goto_0

    .line 1248
    :cond_2
    if-eqz v0, :cond_0

    .line 1242
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1130
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1131
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1132
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1134
    :cond_1
    const/4 v1, 0x0

    .line 1135
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1136
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1147
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1148
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1149
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1151
    :cond_1
    const/4 v1, 0x0

    .line 1152
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1153
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    .prologue
    .line 1214
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 1194
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x1

    .line 1186
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1188
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v2, :cond_1

    .line 1190
    :cond_0
    :goto_1
    return v1

    .line 1188
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1186
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1173
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1034
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1035
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1022
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1023
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1177
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1122
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1115
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1116
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    :cond_0
    return-object v6

    .line 1118
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1008
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1009
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 1263
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1229
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1210
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 734
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 735
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v0    # "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1108
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    .line 1109
    return-object v6

    .line 1110
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1111
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1079
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1081
    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1062
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1099
    const/4 v3, 0x3

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return v2

    .line 1101
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    const/4 v2, 0x0

    goto :goto_0

    .line 1103
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 5
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 895
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 903
    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_1

    .line 904
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 905
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_1

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 908
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 909
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-nez v0, :cond_2

    .line 934
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    :goto_1
    return-void

    .line 911
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_4

    .line 919
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_1

    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_1

    .line 921
    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    .line 922
    .local v3, "v":I
    const/16 v4, 0x20

    if-ge v3, v4, :cond_5

    .line 923
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 913
    .end local v3    # "v":I
    :cond_4
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 914
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v1, :cond_1

    .line 916
    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    .line 926
    .end local v1    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 927
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
