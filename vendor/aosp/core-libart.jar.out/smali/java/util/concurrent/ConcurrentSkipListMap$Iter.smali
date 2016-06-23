.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 2

    .prologue
    .line 2175
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2177
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2178
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 2186
    :goto_0
    return-void

    .line 2180
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2181
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 2182
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 2

    .prologue
    .line 2194
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_0

    .line 2195
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2196
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2198
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2199
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_2

    .line 2207
    :goto_0
    return-void

    .line 2201
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2202
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_1

    .line 2203
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2189
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 2210
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2211
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2212
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2215
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2217
    return-void
.end method
