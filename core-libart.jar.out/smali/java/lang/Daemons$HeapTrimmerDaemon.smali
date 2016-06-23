.class Ljava/lang/Daemons$HeapTrimmerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeapTrimmerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ljava/lang/Daemons$HeapTrimmerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$HeapTrimmerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$HeapTrimmerDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 312
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->trimHeap()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0

    .line 312
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

    .line 317
    :cond_0
    return-void
.end method
