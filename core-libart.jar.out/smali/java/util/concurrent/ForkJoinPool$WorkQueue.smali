.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:S

.field nextWait:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field poolIndex:S

.field volatile qlock:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1030
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1031
    const-class v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1032
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    .line 1033
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "base"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    .line 1035
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "qlock"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1037
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1038
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 1039
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1040
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1041
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1045
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p3, "mode"    # I
    .param p4, "seed"    # I

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 652
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 653
    int-to-short v0, p3

    iput-short v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    .line 654
    iput p4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 656
    const/16 v0, 0x1000

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 657
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    .prologue
    .line 830
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 831
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 832
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 833
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 834
    :cond_0
    return-void
.end method

.method final externalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v11, "s":I
    sub-int/2addr v0, v11

    if-gez v0, :cond_4

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_4

    .line 962
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v11, -0x1

    and-int/2addr v0, v1

    sget v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v8, v0

    .line 963
    .local v8, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v12, v7

    .line 964
    check-cast v12, Ljava/util/concurrent/CountedCompleter;

    .local v12, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v10, v12

    .line 965
    .local v10, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-ne v10, p1, :cond_3

    .line 966
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v0, v6, :cond_2

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-wide v2, v8

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    add-int/lit8 v0, v11, -0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 970
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 971
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 976
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 983
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "j":J
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    return v0

    .line 974
    .restart local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "j":J
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v12    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_0

    .line 978
    :cond_3
    iget-object v10, v10, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v10, :cond_0

    .line 983
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "j":J
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 710
    .local v1, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    array-length v0, v1

    shl-int/lit8 v12, v0, 0x1

    .line 711
    .local v12, "size":I
    :goto_0
    const/high16 v0, 0x4000000

    if-le v12, v0, :cond_1

    .line 712
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    .end local v12    # "size":I
    :cond_0
    const/16 v12, 0x2000

    goto :goto_0

    .line 714
    .restart local v12    # "size":I
    :cond_1
    new-array v6, v12, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 715
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    .local v10, "oldMask":I
    if-ltz v10, :cond_4

    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v13, "t":I
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    sub-int v0, v13, v7

    if-lez v0, :cond_4

    .line 717
    add-int/lit8 v9, v12, -0x1

    .line 720
    .local v9, "mask":I
    :cond_2
    and-int v0, v7, v10

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v11, v0, v2

    .line 721
    .local v11, "oldj":I
    and-int v0, v7, v9

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 722
    .local v8, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 723
    .local v4, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_3

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v6, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 726
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v13, :cond_2

    .line 728
    .end local v4    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v8    # "j":I
    .end local v9    # "mask":I
    .end local v10    # "oldMask":I
    .end local v11    # "oldj":I
    .end local v13    # "t":I
    :cond_4
    return-object v6
.end method

.method final internalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v8, "s":I
    sub-int/2addr v0, v8

    if-gez v0, :cond_3

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_3

    .line 992
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v8, -0x1

    and-int/2addr v0, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 993
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "o":Ljava/lang/Object;
    instance-of v0, v6, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_3

    move-object v4, v6

    .line 994
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    .local v4, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v7, v4

    .line 995
    .local v7, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-ne v7, p1, :cond_2

    .line 996
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 998
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 1000
    :cond_1
    const/4 v0, 0x1

    .line 1007
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    return v0

    .line 1002
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    iget-object v7, v7, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v7, :cond_0

    .line 1007
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isApparentlyUnblocked()Z
    .locals 3

    .prologue
    .line 1015
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 10

    .prologue
    .line 674
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v3, "s":I
    sub-int v2, v4, v3

    .line 675
    .local v2, "n":I
    if-gez v2, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_0

    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v6

    int-to-long v6, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 796
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 804
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, "m":I
    if-gez v3, :cond_1

    .line 805
    .end local v3    # "m":I
    :cond_0
    const/4 v4, 0x0

    .line 808
    :goto_0
    return-object v4

    .line 806
    .restart local v3    # "m":I
    :cond_1
    iget-short v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v4, -0x1

    .line 807
    .local v1, "i":I
    :goto_1
    and-int v4, v1, v3

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v2, v4, v5

    .line 808
    .local v2, "j":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v6, v2

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 806
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_1
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 774
    :cond_0
    :goto_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_2

    .line 775
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v7, v0, v2

    .line 776
    .local v7, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 777
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 778
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 789
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :goto_1
    return-object v4

    .line 783
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    .line 784
    add-int/lit8 v0, v6, 0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_3

    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :cond_2
    move-object v4, v5

    .line 789
    goto :goto_1

    .line 786
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final pollAndExecAll()V
    .locals 1

    .prologue
    .line 842
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 844
    :cond_0
    return-void
.end method

.method final pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "root":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v9, 0x1

    .line 933
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_4

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    .line 934
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 935
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_0

    move v0, v9

    .line 952
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v7    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 937
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v4, v7

    .line 938
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    .local v4, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v8, v4

    .line 939
    .local v8, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_1
    if-ne v8, p1, :cond_3

    .line 940
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_2

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, p0, v10, v11, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 943
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    :cond_2
    move v0, v9

    .line 945
    goto :goto_0

    .line 947
    :cond_3
    iget-object v8, v8, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v8, :cond_1

    .line 952
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 758
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 759
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v6, v0, v2

    .line 760
    .local v6, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 766
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "j":I
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 737
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    .line 738
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    .line 739
    and-int v0, v6, v7

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v8

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v8

    int-to-long v2, v0

    .line 740
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    move-object v4, v5

    .line 748
    :goto_0
    return-object v4

    .line 742
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "m":I
    .restart local v7    # "s":I
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 693
    .local v4, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 694
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 695
    .local v1, "m":I
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int v6, v1, v4

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v6, v7

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 696
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v5, v6

    .local v2, "n":I
    const/4 v5, 0x2

    if-gt v2, v5, :cond_1

    .line 697
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v3, "p":Ljava/util/concurrent/ForkJoinPool;
    iget-object v5, v3, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v5, p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 701
    .end local v1    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    .line 698
    .restart local v1    # "m":I
    .restart local v2    # "n":I
    :cond_1
    if-lt v2, v1, :cond_0

    .line 699
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0
.end method

.method final queueSize()I
    .locals 3

    .prologue
    .line 663
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v1, v2

    .line 664
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method final runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 851
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-eqz p1, :cond_0

    .line 852
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 853
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 854
    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-short v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:S

    .line 855
    .local v7, "md":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 856
    iput-object v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 857
    if-eqz v7, :cond_1

    .line 858
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    .line 873
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "md":I
    :cond_0
    return-void

    .line 859
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "md":I
    :cond_1
    if-eqz v1, :cond_0

    .line 860
    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .line 861
    .local v6, "m":I
    :cond_2
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v8, v0, -0x1

    .local v8, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v8, v0

    if-ltz v0, :cond_0

    .line 862
    and-int v0, v6, v8

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v9

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v9

    int-to-long v2, v0

    .line 863
    .local v2, "i":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 864
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    .line 866
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    iput v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 868
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 885
    if-eqz p1, :cond_8

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_8

    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    .local v8, "m":I
    if-ltz v8, :cond_8

    iget v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v11, "s":I
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    sub-int v9, v11, v6

    .local v9, "n":I
    if-lez v9, :cond_8

    .line 887
    const/4 v10, 0x0

    .local v10, "removed":Z
    const/4 v7, 0x1

    .line 888
    .local v7, "empty":Z
    const/4 v12, 0x1

    .line 890
    .local v12, "stat":Z
    :cond_0
    add-int/lit8 v11, v11, -0x1

    and-int v0, v11, v8

    sget v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v13

    sget v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v13

    int-to-long v2, v0

    .line 891
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 892
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    .line 919
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 920
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 924
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "removed":Z
    .end local v11    # "s":I
    :cond_2
    :goto_1
    return v12

    .line 894
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "b":I
    .restart local v7    # "empty":Z
    .restart local v8    # "m":I
    .restart local v9    # "n":I
    .restart local v10    # "removed":Z
    .restart local v11    # "s":I
    :cond_3
    if-ne v4, p1, :cond_5

    .line 895
    add-int/lit8 v0, v11, 0x1

    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v13, :cond_4

    .line 896
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iput v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 899
    const/4 v10, 0x1

    goto :goto_0

    .line 901
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 902
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v10

    goto :goto_0

    .line 906
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_7

    .line 907
    const/4 v7, 0x0

    .line 913
    :cond_6
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_0

    .line 914
    if-nez v7, :cond_1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 915
    const/4 v12, 0x0

    goto :goto_0

    .line 908
    :cond_7
    add-int/lit8 v0, v11, 0x1

    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v13, :cond_6

    .line 909
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iput v11, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0

    .line 923
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "removed":Z
    .end local v11    # "s":I
    .end local v12    # "stat":Z
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "stat":Z
    goto :goto_1
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v6, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v6, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 821
    const/4 v0, 0x1

    .line 823
    .end local v6    # "s":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
