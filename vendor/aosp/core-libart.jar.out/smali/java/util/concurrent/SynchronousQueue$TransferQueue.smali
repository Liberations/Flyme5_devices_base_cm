.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
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
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final cleanMeOffset:J

.field private static final headOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 797
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 798
    const-class v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    .line 799
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    .line 801
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "tail"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    .line 803
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "cleanMe"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 577
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    .line 578
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 579
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 580
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 581
    return-void
.end method


# virtual methods
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 588
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 591
    :cond_0
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "t"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nt"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 597
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    .line 598
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 599
    :cond_0
    return-void
.end method

.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 10
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p3, "timed"    # Z
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;",
            "TE;ZJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v6, 0x0

    .line 709
    if-eqz p3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, p4

    .line 710
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 711
    .local v3, "w":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    iget-object v5, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v5, p1, :cond_4

    if-eqz p3, :cond_3

    sget v2, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    .line 714
    .local v2, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 716
    :cond_1
    iget-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 717
    .local v4, "x":Ljava/lang/Object;
    if-eq v4, p2, :cond_5

    .line 718
    return-object v4

    .end local v0    # "deadline":J
    .end local v2    # "spins":I
    .end local v3    # "w":Ljava/lang/Thread;
    .end local v4    # "x":Ljava/lang/Object;
    :cond_2
    move-wide v0, v6

    .line 709
    goto :goto_0

    .line 711
    .restart local v0    # "deadline":J
    .restart local v3    # "w":Ljava/lang/Thread;
    :cond_3
    sget v2, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 719
    .restart local v2    # "spins":I
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_5
    if-eqz p3, :cond_6

    .line 720
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p4, v0, v8

    .line 721
    cmp-long v5, p4, v6

    if-gtz v5, :cond_6

    .line 722
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    goto :goto_1

    .line 726
    :cond_6
    if-lez v2, :cond_7

    .line 727
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 728
    :cond_7
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    if-nez v5, :cond_8

    .line 729
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 730
    :cond_8
    if-nez p3, :cond_9

    .line 731
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 732
    :cond_9
    const-wide/16 v8, 0x3e8

    cmp-long v5, p4, v8

    if-lez v5, :cond_0

    .line 733
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 605
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

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

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 10
    .param p1, "pred"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    const/4 v9, 0x0

    .line 741
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 750
    :cond_0
    :goto_0
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v8, p2, :cond_2

    .line 751
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 752
    .local v3, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 753
    .local v4, "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 754
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 758
    .local v6, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_3

    .line 789
    .end local v3    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4    # "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v6    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2
    :goto_1
    return-void

    .line 760
    .restart local v3    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v4    # "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v6    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_3
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 761
    .local v7, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v8, :cond_0

    .line 763
    if-eqz v7, :cond_4

    .line 764
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 767
    :cond_4
    if-eq p2, v6, :cond_5

    .line 768
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 769
    .local v5, "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_2

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 772
    .end local v5    # "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 773
    .local v2, "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_8

    .line 774
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 776
    .local v0, "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eq v0, v6, :cond_7

    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .local v1, "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 783
    .end local v1    # "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_6
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    .line 784
    :cond_7
    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 786
    .end local v0    # "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_8
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 13
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 640
    .local v1, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_2

    const/4 v7, 0x1

    .line 643
    .local v7, "isData":Z
    :cond_0
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 644
    .local v9, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 645
    .local v6, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 648
    if-eq v6, v9, :cond_1

    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    if-ne v0, v7, :cond_a

    .line 649
    :cond_1
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 650
    .local v10, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_0

    .line 652
    if-eqz v10, :cond_3

    .line 653
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 640
    .end local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7    # "isData":Z
    .end local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 656
    .restart local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v7    # "isData":Z
    .restart local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_3
    if-eqz p2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_5

    .line 657
    const/4 v11, 0x0

    .line 693
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_4
    :goto_1
    return-object v11

    .line 658
    .restart local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    if-nez v1, :cond_6

    .line 659
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 660
    .restart local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    .line 664
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v11

    .line 665
    .local v11, "x":Ljava/lang/Object;
    if-ne v11, v1, :cond_7

    .line 666
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 667
    const/4 v11, 0x0

    goto :goto_1

    .line 670
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    move-result v0

    if-nez v0, :cond_9

    .line 671
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 672
    if-eqz v11, :cond_8

    .line 673
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 674
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 676
    :cond_9
    if-nez v11, :cond_4

    move-object v11, p1

    goto :goto_1

    .line 679
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11    # "x":Ljava/lang/Object;
    :cond_a
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 680
    .local v8, "m":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_0

    if-eqz v8, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v0, :cond_0

    .line 683
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 684
    .restart local v11    # "x":Ljava/lang/Object;
    if-eqz v11, :cond_c

    const/4 v0, 0x1

    :goto_2
    if-eq v7, v0, :cond_b

    if-eq v11, v8, :cond_b

    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 687
    :cond_b
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 684
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 691
    :cond_d
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 692
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 693
    if-nez v11, :cond_4

    move-object v11, p1

    goto :goto_1
.end method
