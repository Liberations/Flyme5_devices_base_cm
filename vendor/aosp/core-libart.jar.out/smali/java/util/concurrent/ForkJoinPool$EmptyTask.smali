.class final Ljava/util/concurrent/ForkJoinPool$EmptyTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    const/high16 v0, -0x10000000

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->status:I

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 550
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Void;

    .prologue
    .line 554
    return-void
.end method
