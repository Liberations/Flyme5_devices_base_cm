.class Ljava/lang/Daemons$GCDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GCDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$GCDaemon;

.field private static final atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Ljava/lang/Daemons$GCDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$GCDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;

    .line 327
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ljava/lang/Daemons$GCDaemon;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Daemons$GCDaemon;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;

    return-object v0
.end method


# virtual methods
.method public requestGC()V
    .locals 2

    .prologue
    .line 330
    sget-object v0, Ljava/lang/Daemons$GCDaemon;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    sget-object v0, Ljava/lang/Daemons$GCDaemon;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 340
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$GCDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->concurrentGC()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 350
    :cond_0
    return-void
.end method
