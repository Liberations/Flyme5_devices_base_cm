.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    .line 153
    :try_start_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_0

    .line 154
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 169
    :goto_0
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v2

    .line 171
    return-void

    .line 157
    :cond_0
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 158
    .local v0, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_1
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eq v1, v3, :cond_1

    .line 159
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_1

    .line 162
    :cond_1
    iput-object p0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 163
    move-object v0, p0

    .line 164
    :goto_2
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-eq v1, p0, :cond_2

    .line 165
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_2

    .line 167
    :cond_2
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_0

    .line 170
    .end local v0    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method declared-synchronized enqueue(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 143
    :goto_0
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 144
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v0, 0x0

    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 62
    :goto_0
    monitor-exit p0

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 54
    .local v0, "ret":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-ne v1, v2, :cond_1

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 61
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "ret":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 58
    .restart local v0    # "ret":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public remove()Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(J)Ljava/lang/ref/Reference;
    .locals 13
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    monitor-enter p0

    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-gez v9, :cond_0

    .line 91
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeout < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 94
    :cond_0
    :try_start_1
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 125
    :goto_0
    monitor-exit p0

    return-object v9

    .line 99
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-eqz v9, :cond_2

    const-wide v10, 0x8637bd05af6L

    cmp-long v9, p1, v10

    if-lez v9, :cond_3

    .line 101
    :cond_2
    const-wide/16 v10, 0x0

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 102
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_2

    .line 103
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v9

    goto :goto_0

    .line 107
    :cond_3
    const-wide/32 v10, 0xf4240

    mul-long v4, p1, v10

    .line 108
    .local v4, "nanosToWait":J
    const/4 v8, 0x0

    .line 111
    .local v8, "timeoutNanos":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 113
    .local v6, "startTime":J
    :goto_1
    invoke-virtual {p0, p1, p2, v8}, Ljava/lang/Object;->wait(JI)V

    .line 114
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_5

    .line 125
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v9

    goto :goto_0

    .line 117
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 118
    .local v0, "nanosElapsed":J
    sub-long v2, v4, v0

    .line 119
    .local v2, "nanosRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_4

    .line 122
    const-wide/32 v10, 0xf4240

    div-long p1, v2, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, p1

    sub-long v10, v2, v10

    long-to-int v8, v10

    .line 124
    goto :goto_1
.end method
