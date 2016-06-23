.class Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;
.super Ljava/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FinalizableDelegatedExecutorService"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 625
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 627
    invoke-super {p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;->shutdown()V

    .line 628
    return-void
.end method
