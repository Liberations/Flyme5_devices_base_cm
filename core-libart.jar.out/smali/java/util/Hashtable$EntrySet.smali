.class final Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 998
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .prologue
    .line 998
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1018
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1019
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1003
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1004
    const/4 v1, 0x0

    .line 1006
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1005
    check-cast v0, Ljava/util/Map$Entry;

    .line 1006
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Ljava/util/Hashtable;->access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1031
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1032
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1036
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1037
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1041
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/Hashtable$EntryIterator;

    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$EntryIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1009
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1010
    const/4 v1, 0x0

    .line 1012
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1011
    check-cast v0, Ljava/util/Map$Entry;

    .line 1012
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Ljava/util/Hashtable;->access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1022
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1027
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1015
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1049
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1050
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1055
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1044
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1045
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
