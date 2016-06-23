.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$Submitter;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final common:Ljava/util/concurrent/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field final mode:S

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

.field final parallelism:S

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 3209
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v7

    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3210
    const-class v2, Ljava/util/concurrent/ForkJoinPool;

    .line 3211
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "ctl"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 3213
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "stealCount"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    .line 3215
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "plock"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    .line 3217
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "indexSeed"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    .line 3219
    const-class v5, Ljava/lang/Thread;

    .line 3220
    .local v5, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "parkBlocker"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    .line 3222
    const-class v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 3223
    .local v6, "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "base"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    .line 3225
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "qlock"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    .line 3227
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    .line 3228
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v7

    sput v7, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    .line 3229
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 3230
    .local v4, "scale":I
    add-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v4

    if-eqz v7, :cond_0

    .line 3231
    new-instance v7, Ljava/lang/Error;

    const-string v8, "data type scale not a power of two"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scale":I
    .end local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 3234
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 3232
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "scale":I
    .restart local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1f

    sput v7, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3237
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3238
    new-instance v7, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v7}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3240
    new-instance v7, Ljava/lang/RuntimePermission;

    const-string v8, "modifyThread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3242
    new-instance v7, Ljava/util/concurrent/ForkJoinPool$1;

    invoke-direct {v7}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinPool;

    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 3245
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    iget-short v3, v7, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    .line 3246
    .local v3, "par":I
    if-lez v3, :cond_1

    .end local v3    # "par":I
    :goto_0
    sput v3, Ljava/util/concurrent/ForkJoinPool;->commonParallelism:I

    .line 3247
    return-void

    .line 3246
    .restart local v3    # "par":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2366
    const/16 v0, 0x7fff

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2368
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    .prologue
    .line 2381
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2382
    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 8
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "mode"    # I
    .param p5, "workerNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 2438
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2439
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2440
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2441
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2442
    int-to-short v2, p4

    iput-short v2, p0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    .line 2443
    int-to-short v2, p1

    iput-short v2, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    .line 2444
    neg-int v2, p1

    int-to-long v0, v2

    .line 2445
    .local v0, "np":J
    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2446
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .prologue
    .line 2408
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForkJoinPool-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-worker-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    .line 2413
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2414
    return-void

    .line 2408
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->makeCommonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method private acquirePlock()I
    .locals 14

    .prologue
    .line 1250
    const/16 v13, 0x100

    .line 1252
    .local v13, "spins":I
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v4, "ps":I
    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v5, v4, 0x2

    .local v5, "nps":I
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    return v5

    .line 1255
    .end local v5    # "nps":I
    :cond_1
    if-ltz v13, :cond_2

    .line 1256
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1257
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1259
    :cond_2
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    or-int/lit8 v11, v4, 0x1

    move-object v7, p0

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    monitor-enter p0

    .line 1261
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1263
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1264
    :catch_0
    move-exception v12

    .line 1266
    .local v12, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1267
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1272
    .end local v12    # "ie":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private final awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JI)I
    .locals 28
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J
    .param p4, "ec"    # I

    .prologue
    .line 1719
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    move/from16 v24, v0

    .local v24, "stat":I
    if-ltz v24, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1721
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1722
    .local v20, "e":I
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 1723
    .local v25, "u":I
    shr-int/lit8 v2, v25, 0x10

    move-object/from16 v0, p0

    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int v16, v2, v3

    .line 1725
    .local v16, "d":I
    if-ltz v20, :cond_0

    if-gtz v16, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1726
    :cond_0
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1760
    .end local v16    # "d":I
    .end local v20    # "e":I
    .end local v25    # "u":I
    :cond_1
    :goto_0
    return v24

    .line 1727
    .restart local v16    # "d":I
    .restart local v20    # "e":I
    .restart local v25    # "u":I
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v21, v0

    .local v21, "ns":I
    if-eqz v21, :cond_4

    .line 1729
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1730
    :cond_3
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    move/from16 v0, v21

    int-to-long v8, v0

    add-long/2addr v8, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1734
    .end local v6    # "sc":J
    :cond_4
    if-gtz v16, :cond_5

    const/high16 v2, -0x80000000

    or-int v2, v2, v20

    move/from16 v0, p4

    if-eq v0, v2, :cond_7

    :cond_5
    const-wide/16 v14, 0x0

    .line 1737
    .local v14, "pc":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_9

    .line 1738
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .line 1739
    .local v17, "dc":I
    if-gez v17, :cond_8

    const-wide/32 v22, 0xbebc200

    .line 1741
    .local v22, "parkTime":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v2, v2, v22

    const-wide/32 v4, 0x1e8480

    sub-long v18, v2, v4

    .line 1745
    .end local v17    # "dc":I
    .local v18, "deadline":J
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 1746
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    .line 1747
    .local v26, "wt":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1748
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1749
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    .line 1750
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1751
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1752
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1753
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v18, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v9, p0

    move-wide/from16 v12, p2

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1756
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    goto/16 :goto_0

    .line 1734
    .end local v14    # "pc":J
    .end local v18    # "deadline":J
    .end local v22    # "parkTime":J
    .end local v26    # "wt":Ljava/lang/Thread;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v25

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v14, v2, v4

    goto/16 :goto_1

    .line 1739
    .restart local v14    # "pc":J
    .restart local v17    # "dc":I
    :cond_8
    add-int/lit8 v2, v17, 0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x77359400

    mul-long v22, v2, v4

    goto/16 :goto_2

    .line 1744
    .end local v17    # "dc":I
    :cond_9
    const-wide/16 v18, 0x0

    .restart local v18    # "deadline":J
    move-wide/from16 v22, v18

    .restart local v22    # "parkTime":J
    goto/16 :goto_3
.end method

.method private static checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1
    .param p0, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .prologue
    .line 2424
    if-nez p0, :cond_0

    .line 2425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2426
    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1
    .param p0, "parallelism"    # I

    .prologue
    .line 2417
    if-lez p0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    .line 2418
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2419
    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 509
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 510
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 511
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 512
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 2464
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    .prologue
    .line 2292
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v3, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v3, :cond_0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "m":I
    if-ltz v0, :cond_0

    iget v4, v3, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x7e

    aget-object v4, v2, v4

    .end local v0    # "m":I
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 8

    .prologue
    .line 2053
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v4

    .line 2055
    .local v4, "r":I
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .line 2056
    .local v2, "ps":I
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2

    array-length v6, v5

    add-int/lit8 v1, v6, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_2

    .line 2057
    add-int/lit8 v6, v1, 0x1

    shl-int/lit8 v0, v6, 0x2

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2058
    sub-int v6, v4, v0

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v1

    aget-object v3, v5, v6

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget v6, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v7, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v6, v7

    if-gez v6, :cond_1

    .line 2064
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v3

    .line 2057
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2063
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-ne v6, v2, :cond_0

    .line 2064
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v8, 0x0

    .line 1511
    .local v8, "r":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .line 1513
    .local v38, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_0
    :goto_0
    if-nez v38, :cond_2

    .line 1514
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    const v5, 0x61c88647

    add-int v9, v8, v5

    .end local v8    # "r":I
    .local v9, "r":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v9, :cond_16

    .line 1516
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v38, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .end local v38    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Ljava/util/concurrent/ForkJoinPool$Submitter;-><init>(I)V

    .restart local v38    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v8, v9

    .line 1524
    .end local v9    # "r":I
    .restart local v8    # "r":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v14, "ps":I
    if-gez v14, :cond_3

    .line 1525
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v4

    .line 1518
    .end local v14    # "ps":I
    :cond_2
    if-nez v8, :cond_1

    .line 1519
    move-object/from16 v0, v38

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    .line 1520
    shl-int/lit8 v4, v8, 0xd

    xor-int/2addr v8, v4

    .line 1521
    ushr-int/lit8 v4, v8, 0x11

    xor-int/2addr v8, v4

    .line 1522
    shl-int/lit8 v4, v8, 0x5

    xor-int/2addr v8, v4

    move-object/from16 v0, v38

    iput v8, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    goto :goto_1

    .line 1526
    .restart local v14    # "ps":I
    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .local v37, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_4

    move-object/from16 v0, v37

    array-length v4, v0

    add-int/lit8 v31, v4, -0x1

    .local v31, "m":I
    if-gez v31, :cond_b

    .line 1528
    .end local v31    # "m":I
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v0, p0

    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    move/from16 v34, v0

    .line 1529
    .local v34, "p":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_9

    add-int/lit8 v32, v34, -0x1

    .line 1530
    .local v32, "n":I
    :goto_2
    ushr-int/lit8 v4, v32, 0x1

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x2

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x4

    or-int v32, v32, v4

    .line 1531
    ushr-int/lit8 v4, v32, 0x8

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x10

    or-int v32, v32, v4

    add-int/lit8 v4, v32, 0x1

    shl-int/lit8 v32, v4, 0x1

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_5

    move-object/from16 v0, v37

    array-length v4, v0

    if-nez v4, :cond_a

    :cond_5
    move/from16 v0, v32

    new-array v0, v0, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v33, v0

    .line 1534
    .local v33, "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_6

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_15

    move v14, v15

    .line 1536
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1537
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    if-eqz v37, :cond_7

    move-object/from16 v0, v37

    array-length v4, v0

    if-nez v4, :cond_8

    :cond_7
    if-eqz v33, :cond_8

    .line 1538
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1539
    :cond_8
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1540
    .local v21, "nps":I
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1541
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1529
    .end local v21    # "nps":I
    .end local v32    # "n":I
    .end local v33    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    const/16 v32, 0x1

    goto :goto_2

    .line 1532
    .restart local v32    # "n":I
    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_a
    const/16 v33, 0x0

    goto :goto_3

    .line 1543
    .end local v32    # "n":I
    .end local v34    # "p":I
    .restart local v31    # "m":I
    :cond_b
    and-int v4, v8, v31

    and-int/lit8 v30, v4, 0x7e

    .local v30, "k":I
    aget-object v23, v37, v30

    .local v23, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_10

    .line 1544
    move-object/from16 v0, v23

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v4, :cond_f

    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v22 .. v27}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1545
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v28, v0

    .line 1546
    .local v28, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v23

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v35, v0

    .line 1547
    .local v35, "s":I
    const/16 v36, 0x0

    .line 1549
    .local v36, "submitted":Z
    if-eqz v28, :cond_c

    :try_start_0
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v5, v35, 0x1

    move-object/from16 v0, v23

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_d

    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    move-result-object v28

    if-eqz v28, :cond_e

    .line 1551
    :cond_d
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int v4, v4, v35

    sget v5, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v29, v4, v5

    .line 1552
    .local v29, "j":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v29

    int-to-long v6, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1553
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    const/16 v36, 0x1

    .line 1557
    .end local v29    # "j":I
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1559
    if-eqz v36, :cond_f

    .line 1560
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1561
    return-void

    .line 1557
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    throw v4

    .line 1564
    .end local v28    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v35    # "s":I
    .end local v36    # "submitted":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1566
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_13

    .line 1567
    new-instance v23, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .end local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    .line 1568
    .restart local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move/from16 v0, v30

    int-to-short v4, v0

    move-object/from16 v0, v23

    iput-short v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1569
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_11

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_14

    move v14, v15

    .line 1571
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_11
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1572
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    move-object/from16 v0, v37

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_12

    aget-object v4, v37, v30

    if-nez v4, :cond_12

    .line 1573
    aput-object v23, v37, v30

    .line 1574
    :cond_12
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1575
    .restart local v21    # "nps":I
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1576
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1579
    .end local v21    # "nps":I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    :cond_14
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto :goto_5

    .end local v14    # "ps":I
    .end local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v30    # "k":I
    .end local v31    # "m":I
    .restart local v15    # "ps":I
    .restart local v32    # "n":I
    .restart local v33    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v34    # "p":I
    :cond_15
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto/16 :goto_4

    .end local v8    # "r":I
    .end local v14    # "ps":I
    .end local v32    # "n":I
    .end local v33    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v34    # "p":I
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "r":I
    :cond_16
    move v8, v9

    .end local v9    # "r":I
    .restart local v8    # "r":I
    goto/16 :goto_1
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .prologue
    .line 2644
    sget v0, Ljava/util/concurrent/ForkJoinPool;->commonParallelism:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .local v5, "t":Ljava/lang/Thread;
    instance-of v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 2174
    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v6, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v3, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget-short v2, v3, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    .line 2175
    .local v2, "p":I
    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v8, v9

    .line 2176
    .local v1, "n":I
    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v10, 0x30

    shr-long/2addr v8, v10

    long-to-int v8, v8

    add-int v0, v8, v2

    .line 2177
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    :goto_0
    sub-int v7, v1, v7

    .line 2183
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    return v7

    .line 2177
    .restart local v0    # "a":I
    .restart local v1    # "n":I
    .restart local v2    # "p":I
    .restart local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .restart local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v7, 0x4

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    goto :goto_0
.end method

.method private helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I
    .locals 12
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1893
    .local p2, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v8, 0x0

    .line 1894
    .local v8, "s":I
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v10, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_0

    array-length v11, v10

    add-int/lit8 v6, v11, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1896
    iget-short v4, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1897
    .local v4, "j":I
    add-int v11, v6, v6

    add-int/lit8 v9, v11, 0x1

    .line 1898
    .local v9, "scans":I
    const-wide/16 v0, 0x0

    .line 1899
    .local v0, "c":J
    move v5, v9

    .line 1901
    .local v5, "k":I
    :goto_0
    iget v8, p2, Ljava/util/concurrent/CountedCompleter;->status:I

    if-gez v8, :cond_1

    .line 1916
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    .end local v9    # "scans":I
    :cond_0
    return v8

    .line 1903
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "m":I
    .restart local v9    # "scans":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->internalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1904
    move v5, v9

    .line 1899
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1905
    :cond_3
    iget v8, p2, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v8, :cond_0

    .line 1907
    and-int v11, v4, v6

    aget-object v7, v10, v11

    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_4

    invoke-virtual {v7, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1908
    move v5, v9

    goto :goto_1

    .line 1909
    :cond_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 1910
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v11, v0, v2

    if-eqz v11, :cond_0

    .line 1912
    move v5, v9

    move-wide v0, v2

    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method private final helpRelease(J[Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 15
    .param p1, "c"    # J
    .param p3, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p4, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p5, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p6, "b"    # I

    .prologue
    .line 1772
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_0

    move-wide/from16 v0, p1

    long-to-int v10, v0

    .local v10, "e":I
    if-lez v10, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    const v3, 0xffff

    and-int v11, v10, v3

    .local v11, "i":I
    if-le v2, v11, :cond_0

    aget-object v14, p3, v11

    .local v14, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v14, :cond_0

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1775
    iget v2, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    const/high16 v5, 0x10000

    add-int/2addr v4, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v8, v2, v4

    .line 1777
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v12, v2, v3

    .line 1778
    .local v12, "ne":I
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p4

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_0

    iget v2, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1781
    iput v12, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1782
    iget-object v13, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_0

    .line 1783
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1786
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v11    # "i":I
    .end local v12    # "ne":I
    .end local v13    # "p":Ljava/lang/Thread;
    .end local v14    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    return-void
.end method

.method private static makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 10

    .prologue
    .line 3254
    const/4 v2, -0x1

    .line 3255
    .local v2, "parallelism":I
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3257
    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v4, 0x0

    .line 3259
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3261
    .local v9, "pp":Ljava/lang/String;
    const-string v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3263
    .local v7, "fp":Ljava/lang/String;
    const-string v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3265
    .local v8, "hp":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 3266
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3267
    :cond_0
    if-eqz v7, :cond_1

    .line 3268
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v3, v0

    .line 3270
    :cond_1
    if-eqz v8, :cond_2

    .line 3271
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3276
    .end local v7    # "fp":Ljava/lang/String;
    .end local v8    # "hp":Ljava/lang/String;
    .end local v9    # "pp":Ljava/lang/String;
    :cond_2
    :goto_0
    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_3

    .line 3278
    const/4 v2, 0x0

    .line 3279
    :cond_3
    const/16 v1, 0x7fff

    if-le v2, v1, :cond_4

    .line 3280
    const/16 v2, 0x7fff

    .line 3281
    :cond_4
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    const/4 v5, 0x0

    const-string v6, "ForkJoinPool.commonPool-worker-"

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v1

    .line 3273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 4
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 3162
    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_4

    .line 3163
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 3164
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3165
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3167
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 3170
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    .line 3180
    .end local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_3
    :goto_0
    return-void

    .line 3170
    .restart local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    throw v2

    .line 3177
    .end local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    .prologue
    .line 1098
    const-class v1, Ljava/util/concurrent/ForkJoinPool;

    monitor-enter v1

    :try_start_0
    sget v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    .prologue
    .line 3062
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3063
    return-void
.end method

.method private releasePlock(I)V
    .locals 1
    .param p1, "ps"    # I

    .prologue
    .line 1283
    iput p1, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .line 1284
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 1285
    return-void

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)I
    .locals 29
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "r"    # I

    .prologue
    .line 1665
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1666
    .local v6, "c":J
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v8, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_1

    array-length v5, v8

    add-int/lit8 v28, v5, -0x1

    .local v28, "m":I
    if-ltz v28, :cond_1

    if-eqz p1, :cond_1

    .line 1667
    add-int v5, v28, v28

    add-int/lit8 v27, v5, 0x1

    .local v27, "j":I
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v26, v0

    .line 1669
    .local v26, "ec":I
    :cond_0
    sub-int v5, p2, v27

    and-int v5, v5, v28

    aget-object v10, v8, v5

    .local v10, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    iget v11, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v11, "b":I
    iget v5, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v5, v11, v5

    if-gez v5, :cond_4

    iget-object v13, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v13, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_4

    .line 1671
    array-length v5, v13

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v11

    sget v9, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v5, v9

    sget v9, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int/2addr v5, v9

    int-to-long v14, v5

    .line 1672
    .local v14, "i":J
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ForkJoinTask;

    .local v16, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v16, :cond_1

    .line 1674
    if-gez v26, :cond_2

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    .line 1675
    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ForkJoinPool;->helpRelease(J[Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    .line 1700
    .end local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "b":I
    .end local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v26    # "ec":I
    .end local v27    # "j":I
    .end local v28    # "m":I
    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 1676
    .restart local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "b":I
    .restart local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "i":J
    .restart local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v26    # "ec":I
    .restart local v27    # "j":I
    .restart local v28    # "m":I
    :cond_2
    iget v5, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v5, v11, :cond_1

    sget-object v12, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1678
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    add-int/lit8 v9, v11, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v5, v10, v0, v1, v9}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1679
    add-int/lit8 v5, v11, 0x1

    iget v9, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v9

    if-gez v5, :cond_3

    .line 1680
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1681
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 1686
    .end local v11    # "b":I
    .end local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_0

    .line 1687
    long-to-int v4, v6

    .local v4, "e":I
    or-int v5, v26, v4

    if-gez v5, :cond_5

    .line 1688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JI)I

    move-result v5

    goto :goto_1

    .line 1689
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    cmp-long v5, v18, v6

    if-nez v5, :cond_1

    .line 1690
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x1000000000000L

    sub-long v20, v6, v20

    const-wide v22, -0x100000000L

    and-long v20, v20, v22

    or-long v24, v18, v20

    .line 1691
    .local v24, "nc":J
    move-object/from16 v0, p1

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    .line 1692
    const/high16 v5, -0x80000000

    or-int v5, v5, v26

    move-object/from16 v0, p1

    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1693
    sget-object v18, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v19, p0

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v25}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1694
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    goto :goto_0
.end method

.method private tryAddWorker()V
    .locals 15

    .prologue
    const/16 v14, 0x20

    .line 1294
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    ushr-long v0, v4, v14

    long-to-int v12, v0

    .local v12, "u":I
    if-gez v12, :cond_1

    const v0, 0x8000

    and-int/2addr v0, v12

    if-eqz v0, :cond_1

    long-to-int v8, v4

    .local v8, "e":I
    if-ltz v8, :cond_1

    .line 1295
    add-int/lit8 v0, v12, 0x1

    const v1, 0xffff

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v1, v12

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long/2addr v0, v14

    int-to-long v2, v8

    or-long v6, v0, v2

    .line 1297
    .local v6, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    const/4 v9, 0x0

    .line 1300
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 1302
    .local v13, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v10, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v10, :cond_2

    invoke-interface {v10, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1304
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    .end local v6    # "nc":J
    .end local v8    # "e":I
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v13    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    .line 1307
    .restart local v6    # "nc":J
    .restart local v8    # "e":I
    .restart local v9    # "ex":Ljava/lang/Throwable;
    .restart local v13    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v11

    .line 1308
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v9, v11

    .line 1310
    .end local v11    # "rex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v13, v9}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 23
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1807
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v18, 0x0

    .local v18, "stat":I
    const/16 v19, 0x0

    .line 1808
    .local v19, "steps":I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p1

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v4

    if-ltz v2, :cond_1

    .line 1811
    :cond_0
    move-object/from16 v20, p2

    .line 1812
    .local v20, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v11, p1

    .line 1814
    .local v11, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move/from16 v17, v0

    .local v17, "s":I
    if-gez v17, :cond_2

    .line 1815
    move/from16 v18, v17

    .line 1882
    .end local v11    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v17    # "s":I
    .end local v20    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    :goto_1
    return v18

    .line 1818
    .restart local v11    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "s":I
    .restart local v20    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .local v13, "m":I
    if-lez v13, :cond_1

    .line 1820
    iget v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v2, v2, 0x1

    and-int v9, v2, v13

    .local v9, "h":I
    aget-object v21, v22, v9

    .local v21, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_6

    .line 1822
    :cond_3
    move v15, v9

    .line 1823
    .local v15, "origin":I
    :cond_4
    add-int/lit8 v2, v9, 0x2

    and-int v9, v2, v13

    and-int/lit8 v2, v9, 0xf

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1826
    :cond_5
    aget-object v21, v22, v9

    if-eqz v21, :cond_9

    move-object/from16 v0, v21

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_9

    .line 1828
    iput v9, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1837
    .end local v15    # "origin":I
    :cond_6
    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 1839
    move-object/from16 v0, v21

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v8, "b":I
    move-object/from16 v0, v21

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v8, v2

    if-gez v2, :cond_a

    move-object/from16 v0, v21

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;
    if-eqz v3, :cond_a

    .line 1840
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v8

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v10, v2, v4

    .line 1841
    .local v10, "i":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    .line 1843
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1846
    const/16 v18, 0x1

    .line 1847
    move-object/from16 v0, v21

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v2, v8, :cond_6

    .line 1848
    if-eqz v6, :cond_1

    .line 1850
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1851
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5, v7}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1852
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v16, v0

    .line 1853
    .local v16, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    iget v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1855
    .local v12, "jt":I
    :cond_7
    move-object/from16 v0, p1

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1856
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1858
    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v2, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1860
    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_1

    .line 1831
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "i":I
    .end local v12    # "jt":I
    .end local v16    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v15    # "origin":I
    :cond_9
    if-ne v9, v15, :cond_4

    goto/16 :goto_1

    .line 1866
    .end local v15    # "origin":I
    .restart local v8    # "b":I
    :cond_a
    move-object/from16 v0, v21

    iget-object v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1867
    .local v14, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1870
    if-eqz v14, :cond_1

    add-int/lit8 v19, v19, 0x1

    const/16 v2, 0x40

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 1873
    move-object/from16 v20, v14

    .line 1874
    move-object/from16 v11, v21

    .line 1875
    goto/16 :goto_0
.end method

.method private tryTerminate(ZZ)Z
    .locals 38
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2204
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v4, :cond_0

    .line 2205
    const/4 v4, 0x0

    .line 2235
    :goto_0
    return v4

    .line 2206
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v8, "ps":I
    if-ltz v8, :cond_3

    .line 2207
    if-nez p2, :cond_1

    .line 2208
    const/4 v4, 0x0

    goto :goto_0

    .line 2209
    :cond_1
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_2

    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v9, v8, 0x2

    .end local v8    # "ps":I
    .local v9, "ps":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_e

    move v8, v9

    .line 2211
    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v8

    .line 2212
    :goto_1
    add-int/lit8 v4, v8, 0x2

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x80000000

    or-int v15, v4, v5

    .line 2213
    .local v15, "nps":I
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v11, p0

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2214
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 2217
    .end local v15    # "nps":I
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v20, v0

    .local v20, "c":J
    const-wide v4, 0x80000000L

    and-long v4, v4, v20

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 2218
    const/16 v4, 0x20

    ushr-long v4, v20, v4

    long-to-int v4, v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v4, v5

    if-gtz v4, :cond_4

    .line 2219
    monitor-enter p0

    .line 2220
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2221
    monitor-exit p0

    .line 2223
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 2221
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2225
    :cond_5
    if-nez p1, :cond_9

    .line 2227
    const/16 v4, 0x30

    shr-long v4, v20, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v4, v5

    if-lez v4, :cond_6

    .line 2228
    const/4 v4, 0x0

    goto :goto_0

    .line 2229
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    .local v36, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_9

    .line 2230
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_2
    move-object/from16 v0, v36

    array-length v4, v0

    move/from16 v0, v31

    if-ge v0, v4, :cond_9

    .line 2231
    aget-object v35, v36, v31

    .local v35, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_8

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v4, v31, 0x1

    if-eqz v4, :cond_8

    move-object/from16 v0, v35

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v4, :cond_8

    .line 2234
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 2235
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2230
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 2240
    .end local v31    # "i":I
    .end local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v36    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide v4, 0x80000000L

    or-long v22, v20, v4

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2241
    const/16 v34, 0x0

    .local v34, "pass":I
    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v34

    if-ge v0, v4, :cond_3

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    .restart local v36    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_d

    .line 2244
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v32, v0

    .line 2245
    .local v32, "n":I
    const/16 v31, 0x0

    .restart local v31    # "i":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    .line 2246
    aget-object v35, v36, v31

    .restart local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_b

    .line 2247
    const/4 v4, -0x1

    move-object/from16 v0, v35

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2248
    if-lez v34, :cond_b

    .line 2249
    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2250
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_b

    move-object/from16 v0, v35

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v37, v0

    .local v37, "wt":Ljava/lang/Thread;
    if-eqz v37, :cond_b

    .line 2251
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2253
    :try_start_1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2257
    :cond_a
    :goto_5
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2245
    .end local v37    # "wt":Ljava/lang/Thread;
    :cond_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 2265
    .end local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v26, v0

    .local v26, "cc":J
    move-wide/from16 v0, v26

    long-to-int v4, v0

    const v5, 0x7fffffff

    and-int v30, v4, v5

    .local v30, "e":I
    if-eqz v30, :cond_d

    const v4, 0xffff

    and-int v31, v30, v4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    if-ltz v31, :cond_d

    aget-object v35, v36, v31

    .restart local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_d

    .line 2267
    move-object/from16 v0, v35

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/high16 v6, 0x1000000000000L

    add-long v6, v6, v26

    const-wide/high16 v10, -0x1000000000000L

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    const-wide v6, 0xffff80000000L

    and-long v6, v6, v26

    or-long v28, v4, v6

    .line 2270
    .local v28, "nc":J
    move-object/from16 v0, v35

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v5, -0x80000000

    or-int v5, v5, v30

    if-ne v4, v5, :cond_c

    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v23, p0

    invoke-virtual/range {v22 .. v29}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2272
    const/high16 v4, 0x10000

    add-int v4, v4, v30

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object/from16 v0, v35

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2273
    const/4 v4, -0x1

    move-object/from16 v0, v35

    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2274
    move-object/from16 v0, v35

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v33, v0

    .local v33, "p":Ljava/lang/Thread;
    if-eqz v33, :cond_c

    .line 2275
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_6

    .line 2241
    .end local v26    # "cc":J
    .end local v28    # "nc":J
    .end local v30    # "e":I
    .end local v31    # "i":I
    .end local v32    # "n":I
    .end local v33    # "p":Ljava/lang/Thread;
    .end local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_d
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_3

    .line 2254
    .restart local v31    # "i":I
    .restart local v32    # "n":I
    .restart local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v37    # "wt":Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .end local v8    # "ps":I
    .end local v20    # "c":J
    .end local v31    # "i":I
    .end local v32    # "n":I
    .end local v34    # "pass":I
    .end local v35    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v36    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v37    # "wt":Ljava/lang/Thread;
    .restart local v9    # "ps":I
    :cond_e
    move v8, v9

    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    goto/16 :goto_1
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 18
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1982
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v13, 0x0

    .line 1983
    .local v13, "s":I
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v13, :cond_8

    if-eqz p1, :cond_8

    .line 1984
    move-object/from16 v0, p1

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1985
    .local v12, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1986
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v13, :cond_0

    .line 1988
    :cond_1
    if-ltz v13, :cond_2

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_2

    move-object/from16 v2, p2

    .line 1989
    check-cast v2, Ljava/util/concurrent/CountedCompleter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I

    move-result v13

    .line 1990
    :cond_2
    const-wide/16 v10, 0x0

    .line 1991
    .local v10, "cc":J
    :cond_3
    :goto_0
    if-ltz v13, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v13, :cond_7

    .line 1992
    invoke-direct/range {p0 .. p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p2

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v13, :cond_3

    .line 1994
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1995
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    goto :goto_0

    .line 1997
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->trySetSignal()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v13, :cond_5

    .line 1998
    monitor-enter p2

    .line 1999
    :try_start_0
    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_6

    .line 2001
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2007
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2010
    :cond_5
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide v8, 0xffffffffffffL

    and-long/2addr v8, v6

    const-wide/high16 v14, -0x1000000000000L

    and-long/2addr v14, v6

    const-wide/high16 v16, 0x1000000000000L

    add-long v14, v14, v16

    or-long/2addr v8, v14

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 2006
    .end local v6    # "c":J
    :cond_6
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 2007
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2017
    :cond_7
    move-object/from16 v0, p1

    iput-object v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2019
    .end local v10    # "cc":J
    .end local v12    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_8
    return v13

    .line 2002
    .restart local v10    # "cc":J
    .restart local v12    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 3024
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 3026
    .local v8, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    .line 3027
    .local v16, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v18, v16

    check-cast v18, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v18, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 3029
    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 3030
    const/16 v19, 0x1

    .line 3054
    .end local v18    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return v19

    .line 3032
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 3034
    .local v14, "startTime":J
    const/4 v11, 0x0

    .line 3035
    .local v11, "r":I
    const/4 v5, 0x1

    .line 3036
    .local v5, "found":Z
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v7, v19, -0x1

    .local v7, "m":I
    if-ltz v7, :cond_5

    .line 3038
    if-nez v5, :cond_3

    .line 3039
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v20, v14

    cmp-long v19, v20, v8

    if-lez v19, :cond_2

    .line 3040
    const/16 v19, 0x0

    goto :goto_0

    .line 3041
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3043
    :cond_3
    const/4 v5, 0x0

    .line 3044
    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v6, v19, 0x2

    .local v6, "j":I
    move v12, v11

    .end local v11    # "r":I
    .local v12, "r":I
    :goto_2
    if-ltz v6, :cond_6

    .line 3046
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "r":I
    .restart local v11    # "r":I
    and-int v19, v12, v7

    aget-object v10, v17, v19

    .local v10, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    iget v4, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v4, "b":I
    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v19, v0

    sub-int v19, v4, v19

    if-gez v19, :cond_4

    .line 3047
    const/4 v5, 0x1

    .line 3048
    invoke-virtual {v10, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v13

    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_1

    .line 3049
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_1

    .line 3044
    .end local v4    # "b":I
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    move v12, v11

    .end local v11    # "r":I
    .restart local v12    # "r":I
    goto :goto_2

    .line 3054
    .end local v6    # "j":I
    .end local v7    # "m":I
    .end local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v12    # "r":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "r":I
    :cond_5
    const/16 v19, 0x1

    goto :goto_0

    .end local v11    # "r":I
    .restart local v6    # "j":I
    .restart local v7    # "m":I
    .restart local v12    # "r":I
    .restart local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move v11, v12

    .end local v12    # "r":I
    .restart local v11    # "r":I
    goto :goto_1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const-wide/16 v14, 0x0

    const/4 v10, 0x0

    .line 2987
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2988
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 2989
    :cond_0
    sget-object v12, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_2

    .line 2990
    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3004
    :cond_1
    :goto_0
    return v10

    .line 2993
    :cond_2
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 2994
    .local v8, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_3

    move v10, v11

    .line 2995
    goto :goto_0

    .line 2996
    :cond_3
    cmp-long v12, v8, v14

    if-lez v12, :cond_1

    .line 2998
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long v4, v12, v8

    .line 2999
    .local v4, "deadline":J
    monitor-enter p0

    .line 3001
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3002
    monitor-exit p0

    move v10, v11

    goto :goto_0

    .line 3003
    :cond_4
    cmp-long v12, v8, v14

    if-gtz v12, :cond_5

    .line 3004
    monitor-exit p0

    goto :goto_0

    .line 3009
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3005
    :cond_5
    :try_start_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 3006
    .local v6, "millis":J
    cmp-long v12, v6, v14

    if-lez v12, :cond_6

    .end local v6    # "millis":J
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 3007
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    sub-long v8, v4, v12

    .line 3008
    goto :goto_1

    .line 3006
    .restart local v6    # "millis":J
    :cond_6
    const-wide/16 v6, 0x1

    goto :goto_2
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 36
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1378
    const/16 v34, 0x0

    .line 1379
    .local v34, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    .line 1381
    const/4 v2, -0x1

    move-object/from16 v0, v34

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1382
    :cond_0
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    move-object/from16 v0, v34

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v8, v3

    add-long/2addr v8, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1385
    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v12, "ps":I
    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_1

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_a

    move v12, v13

    .line 1387
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1388
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v19, v2, v3

    .line 1390
    .local v19, "nps":I
    :try_start_0
    move-object/from16 v0, v34

    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    move/from16 v30, v0

    .line 1391
    .local v30, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .line 1392
    .local v35, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_2

    if-ltz v30, :cond_2

    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_2

    aget-object v2, v35, v30

    move-object/from16 v0, v34

    if-ne v2, v0, :cond_2

    .line 1393
    const/4 v2, 0x0

    aput-object v2, v35, v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :cond_2
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1401
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v30    # "idx":I
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    sget-object v20, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    .local v24, "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v24, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v24, v4

    const-wide v8, 0xffff00000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v4, v4, v24

    or-long v26, v2, v4

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1406
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v34, :cond_5

    move-object/from16 v0, v34

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v2, :cond_5

    .line 1407
    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1409
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    const/16 v2, 0x20

    ushr-long v2, v24, v2

    long-to-int v0, v2

    move/from16 v32, v0

    .local v32, "u":I
    if-gez v32, :cond_5

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v28, v0

    .local v28, "e":I
    if-ltz v28, :cond_5

    .line 1410
    if-lez v28, :cond_8

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .restart local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_5

    const v2, 0xffff

    and-int v29, v28, v2

    .local v29, "i":I
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_5

    aget-object v33, v35, v29

    .local v33, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v33, :cond_7

    .line 1433
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v32    # "u":I
    .end local v33    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    :goto_1
    if-nez p2, :cond_9

    .line 1434
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 1437
    :goto_2
    return-void

    .line 1395
    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v12    # "ps":I
    .restart local v19    # "nps":I
    :catchall_0
    move-exception v2

    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    :cond_6
    throw v2

    .line 1415
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .restart local v24    # "c":J
    .restart local v28    # "e":I
    .restart local v29    # "i":I
    .restart local v32    # "u":I
    .restart local v33    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move-object/from16 v0, v33

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v32

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v26, v2, v4

    .line 1417
    .local v26, "nc":J
    move-object/from16 v0, v33

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v28

    if-ne v2, v3, :cond_5

    .line 1419
    sget-object v20, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1420
    const/high16 v2, 0x10000

    add-int v2, v2, v28

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v33

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1421
    move-object/from16 v0, v33

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v31, v0

    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_5

    .line 1422
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_1

    .line 1427
    .end local v26    # "nc":J
    .end local v29    # "i":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v33    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v0, v32

    int-to-short v2, v0

    if-gez v2, :cond_5

    .line 1428
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    goto :goto_1

    .line 1436
    .end local v28    # "e":I
    .end local v32    # "u":I
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v13    # "ps":I
    :cond_a
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto/16 :goto_0
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 2833
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 2835
    .local v0, "count":I
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 2837
    aget-object v3, v4, v1

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2838
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    .line 2839
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2836
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2845
    .end local v1    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2514
    if-nez p1, :cond_0

    .line 2515
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2517
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2518
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2521
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2522
    return-void

    .line 2520
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2501
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    .line 2502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2503
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2504
    return-void
.end method

.method final externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2327
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    sget-object v13, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .line 2328
    .local v12, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    iget-object v11, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2329
    .local v11, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v9, 0x0

    .line 2330
    .local v9, "s":I
    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    array-length v13, v11

    add-int/lit8 v7, v13, -0x1

    .local v7, "m":I
    if-ltz v7, :cond_0

    iget v4, v12, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    .local v4, "j":I
    and-int v13, v4, v7

    and-int/lit8 v13, v13, 0x7e

    aget-object v5, v11, v13

    .local v5, "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 2332
    add-int v13, v7, v7

    add-int/lit8 v10, v13, 0x1

    .line 2333
    .local v10, "scans":I
    const-wide/16 v0, 0x0

    .line 2334
    .local v0, "c":J
    or-int/lit8 v4, v4, 0x1

    .line 2335
    move v6, v10

    .line 2337
    .local v6, "k":I
    :goto_0
    iget v9, p1, Ljava/util/concurrent/CountedCompleter;->status:I

    if-gez v9, :cond_1

    .line 2352
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "k":I
    .end local v7    # "m":I
    .end local v10    # "scans":I
    :cond_0
    return v9

    .line 2339
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "k":I
    .restart local v7    # "m":I
    .restart local v10    # "scans":I
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->externalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2340
    move v6, v10

    .line 2335
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 2341
    :cond_3
    iget v9, p1, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v9, :cond_0

    .line 2343
    and-int v13, v4, v7

    aget-object v8, v11, v13

    .local v8, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_4

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2344
    move v6, v10

    goto :goto_1

    .line 2345
    :cond_4
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    .line 2346
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v13, v0, v2

    if-eqz v13, :cond_0

    .line 2348
    move v6, v10

    move-wide v0, v2

    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1470
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .line 1472
    .local v17, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .line 1473
    .local v13, "ps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .line 1474
    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_2

    if-lez v13, :cond_2

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v11, v2, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_2

    move-object/from16 v0, v17

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    .local v14, "r":I
    and-int v2, v11, v14

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v16, v2

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_2

    if-eqz v14, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1477
    iget-object v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_1

    array-length v2, v8

    add-int/lit8 v9, v2, -0x1

    .local v9, "am":I
    iget v15, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v15, "s":I
    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v12, v15, v2

    .local v12, "n":I
    if-le v9, v12, :cond_1

    .line 1479
    and-int v2, v9, v15

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v10, v2, v4

    .line 1480
    .local v10, "j":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    move-object/from16 v0, p1

    invoke-virtual {v2, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1481
    add-int/lit8 v2, v15, 0x1

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1482
    const/4 v2, 0x0

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1483
    const/4 v2, 0x1

    if-gt v12, v2, :cond_0

    .line 1484
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1490
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v9    # "am":I
    .end local v10    # "j":I
    .end local v11    # "m":I
    .end local v12    # "n":I
    .end local v14    # "r":I
    .end local v15    # "s":I
    :cond_0
    :goto_0
    return-void

    .line 1487
    .restart local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "m":I
    .restart local v14    # "r":I
    :cond_1
    const/4 v2, 0x0

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1489
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v14    # "r":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ForkJoinPool;->fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 5

    .prologue
    .line 2697
    iget-short v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2698
    .local v0, "r":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2666
    iget-short v1, p0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 1

    .prologue
    .line 2633
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    .local v0, "par":I
    if-lez v0, :cond_0

    .end local v0    # "par":I
    :goto_0
    return v0

    .restart local v0    # "par":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    .prologue
    .line 2656
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    .prologue
    .line 2769
    const/4 v0, 0x0

    .line 2771
    .local v0, "count":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2773
    aget-object v2, v3, v1

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    .line 2774
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 2772
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2777
    .end local v1    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    .prologue
    .line 2750
    const-wide/16 v0, 0x0

    .line 2752
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2753
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2754
    aget-object v3, v4, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2755
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 2753
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2758
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    .prologue
    .line 2678
    const/4 v1, 0x0

    .line 2680
    .local v1, "rc":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2681
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2682
    aget-object v2, v3, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2683
    add-int/lit8 v1, v1, 0x1

    .line 2681
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2686
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    .prologue
    .line 2728
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2730
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2731
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2732
    aget-object v3, v4, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2733
    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 2731
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2736
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .prologue
    .line 2788
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 2789
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2790
    aget-object v1, v2, v0

    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2791
    const/4 v3, 0x1

    .line 2794
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    return v3

    .line 2789
    .restart local v0    # "i":I
    .restart local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2794
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method final helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 3
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2032
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v1, "s":I
    if-ltz v1, :cond_4

    .line 2033
    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2034
    .local v0, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2035
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    .line 2037
    :cond_1
    if-ltz v1, :cond_3

    .line 2038
    instance-of v2, p2, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 2039
    check-cast v2, Ljava/util/concurrent/CountedCompleter;

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I

    .line 2040
    :cond_2
    iget v2, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 2043
    :cond_3
    iput-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2045
    .end local v0    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "s":I
    :cond_4
    return-void
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 2075
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v20, v0

    .line 2076
    .local v20, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v18, 0x1

    .line 2078
    .local v18, "active":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v22

    .local v22, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v22, :cond_1

    .line 2079
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2080
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v21

    .local v21, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_4

    .line 2081
    if-nez v18, :cond_3

    .line 2082
    const/16 v18, 0x1

    .line 2083
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide v10, 0xffffffffffffL

    and-long/2addr v10, v6

    const-wide/high16 v12, -0x1000000000000L

    and-long/2addr v12, v6

    const-wide/high16 v14, 0x1000000000000L

    add-long/2addr v12, v14

    or-long v8, v10, v12

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2088
    .end local v6    # "c":J
    :cond_3
    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v0

    .local v19, "b":I
    move-object/from16 v0, v21

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v19, v2

    if-gez v2, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 2089
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2090
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 2093
    .end local v19    # "b":I
    :cond_4
    if-eqz v18, :cond_6

    .line 2094
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v4, v6

    const-wide/high16 v10, 0x1000000000000L

    sub-long/2addr v4, v10

    or-long v8, v2, v4

    .line 2095
    .local v8, "nc":J
    const/16 v2, 0x30

    shr-long v2, v8, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 2106
    .end local v8    # "nc":J
    :goto_1
    return-void

    .line 2097
    .restart local v8    # "nc":J
    :cond_5
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2098
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2100
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v4, v6

    const-wide/high16 v14, 0x1000000000000L

    add-long/2addr v4, v14

    or-long v16, v2, v4

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method final incrementActiveCount()V
    .locals 12

    .prologue
    .line 1590
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide v6, 0xffffffffffffL

    and-long/2addr v6, v4

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v8, v4

    const-wide/high16 v10, 0x1000000000000L

    add-long/2addr v8, v10

    or-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    return-void
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2486
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2488
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2489
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v9, 0x0

    .line 2587
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2589
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 2591
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    .line 2592
    .local v6, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v1, v6}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2593
    .local v1, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2601
    .end local v1    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-nez v0, :cond_2

    .line 2602
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2603
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2602
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2596
    .end local v3    # "i":I
    .end local v5    # "size":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 2597
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2598
    :cond_1
    const/4 v0, 0x1

    .line 2601
    if-nez v0, :cond_3

    .line 2602
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v3, v5, :cond_3

    .line 2603
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2602
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":I
    :cond_2
    throw v8

    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "size":I
    :cond_3
    return-object v2
.end method

.method public isQuiescent()Z
    .locals 4

    .prologue
    .line 2713
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v1, 0x30

    shr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 2968
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    .line 2938
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2939
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget-short v3, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTerminating()Z
    .locals 6

    .prologue
    .line 2957
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2958
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget-short v3, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3187
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3191
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2116
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 2121
    :goto_0
    return-object v3

    .line 2118
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v1

    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_2

    .line 2119
    const/4 v3, 0x0

    goto :goto_0

    .line 2120
    :cond_2
    iget v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v3, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v3, v0, v3

    if-gez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2121
    goto :goto_0
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2806
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2808
    aget-object v2, v3, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 2812
    .end local v0    # "i":I
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v1

    .line 2807
    .restart local v0    # "i":I
    .restart local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2812
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 30
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .prologue
    .line 1330
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v22, v0

    .local v22, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v22, :cond_0

    .line 1332
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1334
    :cond_0
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    .local v8, "s":I
    const v5, 0x61c88647

    add-int v9, v8, v5

    .end local v8    # "s":I
    .local v9, "s":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v9, :cond_0

    .line 1336
    new-instance v28, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    iget-short v4, v0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    .line 1337
    .local v28, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v14, "ps":I
    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_1

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_8

    move v14, v15

    .line 1339
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1340
    :goto_0
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1342
    .local v21, "nps":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v29, v0

    .local v29, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v29, :cond_5

    .line 1343
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "n":I
    add-int/lit8 v23, v24, -0x1

    .line 1344
    .local v23, "m":I
    shl-int/lit8 v4, v9, 0x1

    or-int/lit8 v26, v4, 0x1

    .line 1345
    .local v26, "r":I
    and-int v26, v26, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1346
    const/16 v25, 0x0

    .line 1347
    .local v25, "probes":I
    const/4 v4, 0x4

    move/from16 v0, v24

    if-gt v0, v4, :cond_3

    const/16 v27, 0x2

    .line 1348
    .local v27, "step":I
    :cond_2
    :goto_1
    add-int v4, v26, v27

    and-int v26, v4, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1349
    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 1350
    shl-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    check-cast v29, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .restart local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1351
    add-int/lit8 v23, v24, -0x1

    .line 1352
    const/16 v25, 0x0

    goto :goto_1

    .line 1347
    .end local v27    # "step":I
    :cond_3
    ushr-int/lit8 v4, v24, 0x1

    const v5, 0xfffe

    and-int/2addr v4, v5

    add-int/lit8 v27, v4, 0x2

    goto :goto_1

    .line 1356
    .end local v25    # "probes":I
    :cond_4
    move/from16 v0, v26

    int-to-short v4, v0

    move-object/from16 v0, v28

    iput-short v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1357
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1358
    aput-object v28, v29, v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    .end local v23    # "m":I
    .end local v24    # "n":I
    .end local v26    # "r":I
    :cond_5
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1362
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1364
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    ushr-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    .line 1365
    return-object v28

    .line 1361
    .end local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1362
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    :cond_7
    throw v4

    .end local v14    # "ps":I
    .end local v21    # "nps":I
    .restart local v15    # "ps":I
    :cond_8
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto/16 :goto_0
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 2
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1635
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1636
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .local v0, "r":I
    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    goto :goto_0

    .line 1639
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2908
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2909
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2910
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2927
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2928
    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2929
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 17
    .param p1, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1604
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v14, v2

    .local v14, "u":I
    if-ltz v14, :cond_2

    .line 1627
    :cond_1
    :goto_0
    return-void

    .line 1606
    :cond_2
    long-to-int v10, v6

    .local v10, "e":I
    if-gtz v10, :cond_3

    .line 1607
    int-to-short v2, v14

    if-gez v2, :cond_1

    .line 1608
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    goto :goto_0

    .line 1611
    :cond_3
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v2, v0

    const v3, 0xffff

    and-int v11, v10, v3

    .local v11, "i":I
    if-le v2, v11, :cond_1

    aget-object v15, p1, v11

    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    .line 1614
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int/2addr v4, v14

    int-to-long v4, v4

    const/16 v16, 0x20

    shl-long v4, v4, v16

    or-long v8, v2, v4

    .line 1616
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v12, v2, v3

    .line 1617
    .local v12, "ne":I
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1619
    iput v12, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1620
    iget-object v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_1

    .line 1621
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 1624
    .end local v13    # "p":Ljava/lang/Thread;
    :cond_4
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p2

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-lt v2, v3, :cond_0

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
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
    .line 2568
    if-nez p1, :cond_0

    .line 2569
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2571
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2572
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2575
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2576
    return-object v0

    .line 2574
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
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
    .line 2557
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2558
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2559
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2547
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2548
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2534
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2536
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2537
    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 2857
    const-wide/16 v10, 0x0

    .local v10, "qt":J
    const-wide/16 v8, 0x0

    .local v8, "qs":J
    const/4 v12, 0x0

    .line 2858
    .local v12, "rc":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2859
    .local v14, "st":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2861
    .local v4, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    .line 2862
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    .line 2863
    aget-object v17, v18, v3

    .local v17, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    .line 2864
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v13

    .line 2865
    .local v13, "size":I
    and-int/lit8 v19, v3, 0x1

    if-nez v19, :cond_1

    .line 2866
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    .line 2862
    .end local v13    # "size":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2868
    .restart local v13    # "size":I
    :cond_1
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 2869
    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    .line 2870
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2871
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2876
    .end local v3    # "i":I
    .end local v13    # "size":I
    .end local v17    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p0

    iget-short v7, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    .line 2877
    .local v7, "pc":I
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    add-int v16, v7, v19

    .line 2878
    .local v16, "tc":I
    const/16 v19, 0x30

    shr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v2, v7, v19

    .line 2879
    .local v2, "ac":I
    if-gez v2, :cond_3

    .line 2880
    const/4 v2, 0x0

    .line 2882
    :cond_3
    const-wide v20, 0x80000000L

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_5

    .line 2883
    if-nez v16, :cond_4

    const-string v6, "Terminated"

    .line 2886
    .local v6, "level":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", parallelism = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", active = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", running = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", steals = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", tasks = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", submissions = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 2883
    .end local v6    # "level":Ljava/lang/String;
    :cond_4
    const-string v6, "Terminating"

    goto :goto_2

    .line 2885
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    const-string v6, "Shutting down"

    .restart local v6    # "level":Ljava/lang/String;
    :goto_3
    goto/16 :goto_2

    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string v6, "Running"

    goto :goto_3
.end method

.method final tryCompensate(J)Z
    .locals 23
    .param p1, "c"    # J

    .prologue
    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v20, v0

    .line 1930
    .local v20, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    move/from16 v16, v0

    .local v16, "pc":I
    move-wide/from16 v0, p1

    long-to-int v10, v0

    .line 1931
    .local v10, "e":I
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .local v13, "m":I
    if-ltz v13, :cond_4

    if-ltz v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4

    .line 1932
    and-int v2, v10, v13

    aget-object v19, v20, v2

    .line 1933
    .local v19, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_1

    if-eqz v19, :cond_1

    .line 1935
    move-object/from16 v0, v19

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v4, -0x100000000L

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1937
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v14, v2, v3

    .line 1938
    .local v14, "ne":I
    move-object/from16 v0, v19

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1940
    move-object/from16 v0, v19

    iput v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1941
    move-object/from16 v0, v19

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v15, "p":Ljava/lang/Thread;
    if-eqz v15, :cond_0

    .line 1942
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v15}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1943
    :cond_0
    const/4 v2, 0x1

    .line 1971
    .end local v8    # "nc":J
    .end local v13    # "m":I
    .end local v14    # "ne":I
    .end local v15    # "p":Ljava/lang/Thread;
    .end local v19    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    return v2

    .line 1946
    .restart local v13    # "m":I
    .restart local v19    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-short v0, v2

    move/from16 v18, v0

    .local v18, "tc":I
    if-ltz v18, :cond_2

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    add-int v2, v2, v16

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1948
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, p1, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1949
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1950
    const/4 v2, 0x1

    goto :goto_0

    .line 1952
    .end local v8    # "nc":J
    :cond_2
    add-int v2, v18, v16

    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_4

    .line 1953
    const-wide v2, 0x100000000L

    add-long v2, v2, p1

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const-wide v4, -0xffff00000001L

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1954
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1956
    const/4 v11, 0x0

    .line 1957
    .local v11, "ex":Ljava/lang/Throwable;
    const/16 v21, 0x0

    .line 1959
    .local v21, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v12, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 1961
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    const/4 v2, 0x1

    goto :goto_0

    .line 1964
    .end local v12    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :catch_0
    move-exception v17

    .line 1965
    .local v17, "rex":Ljava/lang/Throwable;
    move-object/from16 v11, v17

    .line 1967
    .end local v17    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1971
    .end local v8    # "nc":J
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v13    # "m":I
    .end local v18    # "tc":I
    .end local v19    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2304
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .line 2305
    .local v17, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .line 2306
    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v14, 0x0

    .line 2307
    .local v14, "popped":Z
    if-eqz v17, :cond_1

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v11, v2, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v16, v2

    .local v3, "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v15, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v15, "s":I
    if-eq v2, v15, :cond_1

    iget-object v10, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v10, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v10, :cond_1

    .line 2311
    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v15, -0x1

    and-int/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v4

    int-to-long v12, v2

    .line 2312
    .local v12, "j":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v10, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_1

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2314
    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v2, v15, :cond_0

    iget-object v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v2, v10, :cond_0

    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    move-object v5, v10

    move-wide v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2316
    add-int/lit8 v2, v15, -0x1

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2317
    const/4 v14, 0x1

    .line 2319
    :cond_0
    const/4 v2, 0x0

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2322
    .end local v3    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v12    # "j":J
    .end local v15    # "s":I
    :cond_1
    return v14
.end method
