.class public Ljava/util/concurrent/atomic/Fences;
.super Ljava/lang/Object;
.source "Fences.java"


# static fields
.field private static volatile theVolatile:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static orderAccesses(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 516
    return-object p0
.end method

.method public static orderReads(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    sget v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 487
    .local v0, "ignore":I
    return-object p0
.end method

.method public static orderWrites(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    .line 502
    return-object p0
.end method

.method public static reachabilityFence(Ljava/lang/Object;)V
    .locals 1
    .param p0, "ref"    # Ljava/lang/Object;

    .prologue
    .line 535
    if-eqz p0, :cond_0

    .line 536
    monitor-enter p0

    :try_start_0
    monitor-exit p0

    .line 538
    :cond_0
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
