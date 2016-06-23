.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$1;,
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$ValueIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field transient header:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 81
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 82
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 97
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    .prologue
    .line 119
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 120
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 121
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/LinkedHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method private makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 272
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 275
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 276
    .local v0, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 277
    .local v1, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 278
    iput-object v1, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 279
    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object p1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 280
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 281
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 8
    .param p3, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 188
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 189
    .local v7, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 195
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 197
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    aput-object v0, v1, p4

    .line 198
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 201
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 204
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 205
    .local v7, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 211
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 213
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 214
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 322
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 325
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 326
    .local v1, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_0

    .line 327
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 328
    .local v2, "nxt":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 329
    move-object v0, v2

    .line 330
    goto :goto_0

    .line 332
    .end local v2    # "nxt":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_0
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 333
    return-void
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 7
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 222
    .local v5, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 223
    .local v6, "oldTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 225
    .local v0, "newTail":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 301
    if-nez p1, :cond_3

    .line 302
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v1, "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 303
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_2

    .line 304
    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 318
    :cond_0
    :goto_1
    return v2

    .line 303
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 308
    goto :goto_1

    .line 312
    .end local v0    # "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    .end local v1    # "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_3
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .restart local v1    # "header":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 313
    .restart local v0    # "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_2
    if-eq v0, v1, :cond_4

    .line 314
    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_2

    :cond_4
    move v2, v3

    .line 318
    goto :goto_1
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 168
    .local v0, "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v0, v1, :cond_0

    .end local v0    # "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "eldest":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 241
    if-nez p1, :cond_3

    .line 242
    iget-object v0, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 243
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v4

    .line 245
    :cond_1
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 246
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 247
    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v2

    .line 251
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 252
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    .line 253
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 255
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_4

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 256
    :cond_4
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_5

    move-object v4, v0

    .line 257
    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 258
    :cond_5
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_6
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method init()V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {v0}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 138
    return-void
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
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
    .line 386
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    .line 291
    .local v0, "le":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 292
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 293
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 294
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 285
    check-cast p1, Ljava/util/LinkedHashMap$LinkedEntry;

    .end local p1    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 287
    :cond_0
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
