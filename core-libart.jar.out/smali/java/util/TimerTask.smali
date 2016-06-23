.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cancelled:Z

.field fixedRate:Z

.field final lock:Ljava/lang/Object;

.field period:J

.field private scheduledTime:J

.field when:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 92
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z

    if-nez v1, :cond_0

    iget-wide v4, p0, Ljava/util/TimerTask;->when:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 94
    .local v0, "willRun":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z

    .line 95
    monitor-exit v2

    return v0

    .line 93
    .end local v0    # "willRun":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getWhen()J
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    monitor-exit v1

    return-wide v2

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isScheduled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 72
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J

    monitor-exit v1

    return-wide v2

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setScheduledTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 60
    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iput-wide p1, p0, Ljava/util/TimerTask;->scheduledTime:J

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
