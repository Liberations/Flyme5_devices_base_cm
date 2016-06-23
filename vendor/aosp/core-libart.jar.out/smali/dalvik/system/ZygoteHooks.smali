.class public final Ldalvik/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# instance fields
.field private token:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePostForkChild(JILjava/lang/String;)V
.end method

.method private static native nativePreFork()J
.end method

.method private static waitUntilAllThreadsStopped()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "tasks":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 75
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public postForkChild(ILjava/lang/String;)V
    .locals 2
    .param p1, "debugFlags"    # I
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    invoke-static {v0, v1, p1, p2}, Ldalvik/system/ZygoteHooks;->nativePostForkChild(JILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public postForkCommon()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 59
    return-void
.end method

.method public preFork()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 39
    invoke-static {}, Ldalvik/system/ZygoteHooks;->waitUntilAllThreadsStopped()V

    .line 40
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePreFork()J

    move-result-wide v0

    iput-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    .line 41
    return-void
.end method
