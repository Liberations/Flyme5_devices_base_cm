.class final Ljava/util/Hashtable$Values;
.super Ljava/util/AbstractCollection;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 963
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .prologue
    .line 963
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 974
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 975
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 971
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 977
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 978
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    new-instance v0, Ljava/util/Hashtable$ValueIterator;

    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$ValueIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 968
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 987
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 988
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 989
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
    .line 992
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 993
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 994
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
    .line 982
    .local p0, "this":Ljava/util/Hashtable$Values;, "Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 983
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
