.class Ljava/util/WeakHashMap$1;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    .prologue
    .line 295
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    iput-object p1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 304
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 318
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 319
    iget-object v3, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 321
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<**>;"
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_0

    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_1

    .line 324
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 328
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<**>;"
    .end local v1    # "key":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
    .line 333
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/WeakHashMap$1$1;

    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$1$1;-><init>(Ljava/util/WeakHashMap$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 308
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Ljava/util/WeakHashMap$1;, "Ljava/util/WeakHashMap.1;"
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
