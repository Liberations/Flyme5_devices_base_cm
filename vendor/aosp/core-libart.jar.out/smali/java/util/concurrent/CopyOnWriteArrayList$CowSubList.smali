.class Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;
.super Ljava/util/AbstractList;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CowSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

.field final synthetic this$0:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V
    .locals 1
    .param p2, "expectedElements"    # [Ljava/lang/Object;
    .param p3, "from"    # I
    .param p4, "to"    # I

    .prologue
    .line 484
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 485
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 486
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    .line 582
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 585
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->add(ILjava/lang/Object;)V

    .line 591
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 597
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    .line 598
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 599
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    .line 600
    .local v0, "oldSize":I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 601
    .local v1, "result":Z
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/2addr v6, v7

    invoke-direct {v2, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 602
    monitor-exit v3

    return v1

    .line 603
    .end local v0    # "oldSize":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 608
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 572
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    # invokes: Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$500(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    .line 575
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 576
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 542
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 547
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v1

    .line 548
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 549
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    move-result v2

    return v2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 501
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v1

    .line 502
    .local v1, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    .line 503
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 504
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    add-int/2addr v2, p1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v3, -0x1

    .line 526
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 527
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    .line 528
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 529
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    .line 530
    .local v0, "result":I
    if-eq v0, v3, :cond_0

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    sub-int v3, v0, v3

    :cond_0
    return v3
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 494
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 495
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v1

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v3, -0x1

    .line 534
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 535
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    .line 536
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 537
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    .line 538
    .local v0, "result":I
    if-eq v0, v3, :cond_0

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    sub-int v3, v0, v3

    :cond_0
    return v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 517
    .local v1, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    .line 518
    .local v2, "snapshot":[Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    .line 519
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 520
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    .line 521
    .local v0, "result":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    # setter for: Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I
    invoke-static {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->access$002(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    .line 522
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 563
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    .line 564
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 565
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "removed":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 567
    monitor-exit v2

    return-object v0

    .line 568
    .end local v0    # "removed":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 623
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 624
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 625
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 626
    const/4 v1, 0x0

    monitor-exit v2

    .line 629
    :goto_0
    return v1

    .line 628
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->remove(I)Ljava/lang/Object;

    .line 629
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 630
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 634
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 635
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 636
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    # invokes: Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    invoke-static {v3, p1, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$600(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    move-result v0

    .line 637
    .local v0, "removed":I
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 638
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .line 639
    .end local v0    # "removed":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x1

    .line 643
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 644
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 645
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x1

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    # invokes: Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    invoke-static {v3, p1, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$600(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    move-result v0

    .line 646
    .local v0, "removed":I
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 647
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 648
    .end local v0    # "removed":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 614
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    .line 615
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    .line 616
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    .local v0, "result":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 618
    monitor-exit v2

    return-object v0

    .line 619
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 489
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 490
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v1

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.CowSubList;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    .line 554
    .local v0, "slice":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 555
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", list size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$400(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)[Ljava/lang/Object;

    move-result-object v3

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/2addr v4, p1

    # getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    add-int/2addr v5, p2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    return-object v1
.end method
