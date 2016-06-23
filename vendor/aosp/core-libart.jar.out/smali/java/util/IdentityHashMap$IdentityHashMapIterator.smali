.class Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field canRemove:Z

.field expectedModCount:I

.field private lastPosition:I

.field private position:I

.field final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    .local p1, "value":Ljava/util/MapEntry$Type;, "Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, "hm":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TKT;TVT;>;"
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 133
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    .line 141
    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 145
    iput-object p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    .line 146
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    .line 147
    iget v0, p2, Ljava/util/IdentityHashMap;->modCount:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 148
    return-void
.end method


# virtual methods
.method checkConcurrentMod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 166
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 151
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    :goto_0
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 159
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    .line 170
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 174
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    # invokes: Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->access$000(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    .line 176
    .local v0, "result":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TKT;TVT;>;"
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    .line 177
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 180
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    invoke-interface {v1, v0}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 184
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    .line 185
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 190
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 192
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 193
    return-void
.end method
