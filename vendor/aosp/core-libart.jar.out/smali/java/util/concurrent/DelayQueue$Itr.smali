.class Ljava/util/concurrent/DelayQueue$Itr;
.super Ljava/lang/Object;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/DelayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/concurrent/DelayQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 507
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 509
    iput-object p2, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    .line 510
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 513
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 502
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue$Itr;->next()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/concurrent/Delayed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 519
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 520
    :cond_0
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 521
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/concurrent/Delayed;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 525
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    if-gez v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 527
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/DelayQueue;->removeEQ(Ljava/lang/Object;)V

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 529
    return-void
.end method
