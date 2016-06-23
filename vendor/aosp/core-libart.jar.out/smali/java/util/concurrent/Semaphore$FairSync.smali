.class final Ljava/util/concurrent/Semaphore$FairSync;
.super Ljava/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bf45e7bb79d96b0L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 212
    return-void
.end method


# virtual methods
.method protected tryAcquireShared(I)I
    .locals 3
    .param p1, "acquires"    # I

    .prologue
    .line 216
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->hasQueuedPredecessors()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    const/4 v1, -0x1

    .line 222
    :cond_1
    :goto_0
    return v1

    .line 218
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->getState()I

    move-result v0

    .line 219
    .local v0, "available":I
    sub-int v1, v0, p1

    .line 220
    .local v1, "remaining":I
    if-ltz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$FairSync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
