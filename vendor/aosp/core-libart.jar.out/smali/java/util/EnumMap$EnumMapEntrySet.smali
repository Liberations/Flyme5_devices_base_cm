.class Ljava/util/EnumMap$EnumMapEntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 316
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    .line 317
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 322
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 326
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    const/4 v2, 0x0

    .line 327
    .local v2, "isEqual":Z
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 328
    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "enumKey":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 330
    .local v1, "enumValue":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 332
    .local v3, "value":Ljava/lang/Object;, "TVT;"
    if-nez v3, :cond_2

    .line 333
    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 339
    .end local v0    # "enumKey":Ljava/lang/Object;
    .end local v1    # "enumValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;, "TVT;"
    :cond_0
    :goto_0
    return v2

    .line 333
    .restart local v0    # "enumKey":Ljava/lang/Object;
    .restart local v1    # "enumValue":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;, "TVT;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

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
            "<TKT;TVT;>;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapEntryIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapEntrySet$1;-><init>(Ljava/util/EnumMap$EnumMapEntrySet;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapEntryIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 354
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    .line 358
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
    .line 363
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 368
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 369
    .local v0, "entryArray":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap$EnumMapEntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 375
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v6, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v6}, Ljava/util/EnumMap;->size()I

    move-result v5

    .line 376
    .local v5, "size":I
    const/4 v3, 0x0

    .line 377
    .local v3, "index":I
    move-object v2, p1

    .line 378
    .local v2, "entryArray":[Ljava/lang/Object;
    array-length v6, p1

    if-le v5, v6, :cond_0

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 380
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, [Ljava/lang/Object;

    .line 382
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 383
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKT;TVT;>;>;"
    :goto_0
    if-ge v3, v5, :cond_1

    .line 384
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKT;TVT;>;"
    new-instance v6, Ljava/util/MapEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKT;TVT;>;"
    :cond_1
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 389
    const/4 v6, 0x0

    aput-object v6, v2, v3

    .line 391
    :cond_2
    return-object v2
.end method
