.class Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field index:I

.field next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 2471
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2472
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2473
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    .line 2474
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    .line 2475
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    .line 2476
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2477
    return-void
.end method


# virtual methods
.method final advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2484
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2488
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2489
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2492
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    return-object v0

    .line 2490
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    if-ge v4, v5, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    array-length v2, v3

    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .local v1, "i":I
    if-le v2, v1, :cond_2

    if-gez v1, :cond_3

    .line 2492
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_1

    .line 2493
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    invoke-static {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v4, :cond_5

    .line 2494
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v4, :cond_4

    .line 2495
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2496
    const/4 v0, 0x0

    .line 2497
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_0

    .line 2499
    :cond_4
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v4, :cond_6

    .line 2500
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2504
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    :goto_2
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v4, v2, :cond_0

    .line 2505
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    goto :goto_0

    .line 2502
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
