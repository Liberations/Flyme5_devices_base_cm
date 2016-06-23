.class abstract Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final oomeMsg:Ljava/lang/String; = "Required array size too large"

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2648
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2661
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2761
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_2

    .line 2762
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2763
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2764
    :cond_1
    const/4 v2, 0x0

    .line 2767
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2655
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 2663
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2771
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 2772
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2774
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2775
    const/4 v1, 0x1

    goto :goto_0

    .line 2778
    :cond_1
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2782
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 2783
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2785
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2786
    const/4 v1, 0x1

    goto :goto_0

    .line 2789
    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2662
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 10

    .prologue
    .line 2682
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v6

    .line 2683
    .local v6, "sz":J
    const-wide/32 v8, 0x7ffffff7

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2684
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2685
    :cond_0
    long-to-int v4, v6

    .line 2686
    .local v4, "n":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 2687
    .local v5, "r":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2688
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2689
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v1, v4, :cond_2

    .line 2690
    const v8, 0x7ffffff7

    if-lt v4, v8, :cond_1

    .line 2691
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2692
    :cond_1
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v4, v8, :cond_3

    .line 2693
    const v4, 0x7ffffff7

    .line 2696
    :goto_1
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 2698
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v0, v5, v1

    move v1, v2

    .line 2699
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 2695
    :cond_3
    ushr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    goto :goto_1

    .line 2700
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    if-ne v1, v4, :cond_5

    .end local v5    # "r":[Ljava/lang/Object;
    :goto_2
    return-object v5

    .restart local v5    # "r":[Ljava/lang/Object;
    :cond_5
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2705
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v8

    .line 2706
    .local v8, "sz":J
    const-wide/32 v10, 0x7ffffff7

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 2707
    new-instance v7, Ljava/lang/OutOfMemoryError;

    const-string v10, "Required array size too large"

    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2708
    :cond_0
    long-to-int v4, v8

    .line 2709
    .local v4, "m":I
    array-length v7, p1

    if-lt v7, v4, :cond_1

    move-object v6, p1

    .line 2712
    .local v6, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    array-length v5, v6

    .line 2713
    .local v5, "n":I
    const/4 v1, 0x0

    .line 2714
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2715
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v1, v5, :cond_3

    .line 2716
    const v7, 0x7ffffff7

    if-lt v5, v7, :cond_2

    .line 2717
    new-instance v7, Ljava/lang/OutOfMemoryError;

    const-string v10, "Required array size too large"

    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2709
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "n":I
    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v6, v7

    goto :goto_0

    .line 2718
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "n":I
    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_2
    const v7, 0x3ffffffb    # 1.9999994f

    if-lt v5, v7, :cond_4

    .line 2719
    const v5, 0x7ffffff7

    .line 2722
    :goto_2
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 2724
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v0, v6, v1

    move v1, v2

    .line 2725
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 2721
    :cond_4
    ushr-int/lit8 v7, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    .line 2726
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    if-ne p1, v6, :cond_7

    if-ge v1, v5, :cond_7

    .line 2727
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 2730
    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_6
    :goto_3
    return-object v6

    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_7
    if-eq v1, v5, :cond_6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2745
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2746
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2747
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2748
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2750
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2751
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_0

    const-string v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2752
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2757
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2754
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
