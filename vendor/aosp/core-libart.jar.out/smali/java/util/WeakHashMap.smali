.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 189
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 200
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 201
    if-gez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 205
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .end local p1    # "capacity":I
    :cond_1
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 206
    const/16 v0, 0x1d4c

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 207
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 208
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 209
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 223
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 224
    if-gez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 231
    if-nez p1, :cond_2

    const/4 p1, 0x1

    .end local p1    # "capacity":I
    :cond_2
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 232
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 233
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 234
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 246
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 247
    return-void

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private computeMaxSize()V
    .locals 4

    .prologue
    .line 268
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 269
    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 712
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 622
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    mul-int/lit8 v3, v6, 0x2

    .line 623
    .local v3, "length":I
    if-nez v3, :cond_0

    .line 624
    const/4 v3, 0x1

    .line 626
    :cond_0
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 627
    .local v4, "newData":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 628
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v6, v1

    .line 629
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 630
    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    .line 632
    .local v2, "index":I
    :goto_2
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 633
    .local v5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 634
    aput-object v0, v4, v2

    .line 635
    move-object v0, v5

    .line 636
    goto :goto_1

    .line 630
    .end local v2    # "index":I
    .end local v5    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int v2, v6, v3

    goto :goto_2

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 639
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 640
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 257
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-lez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 259
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 261
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 281
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v3, 0x1

    .line 509
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 510
    if-eqz p1, :cond_4

    .line 511
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 512
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 513
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 515
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    return v3

    .line 519
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 520
    goto :goto_0

    .line 523
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_4
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    .restart local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 524
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 525
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_5

    .line 526
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 527
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_6

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 530
    :cond_7
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 531
    goto :goto_2

    .line 534
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 295
    new-instance v0, Ljava/util/WeakHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 455
    if-eqz p1, :cond_2

    .line 456
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 457
    .local v1, "index":I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 458
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 473
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return-object v2

    .line 462
    .restart local v1    # "index":I
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 466
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "index":I
    :cond_2
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 467
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_0

    .line 468
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_3

    .line 469
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 471
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 478
    if-eqz p1, :cond_3

    .line 479
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 480
    .local v1, "index":I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 481
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return-object v0

    .line 485
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v1    # "index":I
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 487
    goto :goto_1

    .line 489
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "index":I
    :cond_3
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 490
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_4

    .line 491
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_0

    .line 494
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 496
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 544
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 353
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/WeakHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 389
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .locals 2

    .prologue
    .line 550
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    .local v0, "toRemove":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const v6, 0x7fffffff

    const/4 v3, 0x0

    .line 589
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "index":I
    if-eqz p1, :cond_0

    .line 593
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v4

    and-int/2addr v4, v6

    iget-object v5, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    rem-int v1, v4, v5

    .line 594
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    .line 595
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 596
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 599
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v3

    .line 600
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v4, :cond_1

    .line 601
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 604
    :cond_1
    if-nez v0, :cond_4

    .line 605
    iget v4, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 606
    iget v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v4, v5, :cond_2

    .line 607
    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    .line 608
    if-nez p1, :cond_3

    move v1, v3

    .line 611
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 612
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v3, v3, v1

    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 613
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aput-object v0, v3, v1

    .line 614
    const/4 v2, 0x0

    .line 618
    :goto_3
    return-object v2

    .line 608
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    goto :goto_2

    .line 616
    :cond_4
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 617
    .local v2, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 655
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, "index":I
    const/4 v2, 0x0

    .line 670
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 671
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 672
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 673
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 674
    move-object v2, v0

    .line 675
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 678
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 679
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_1

    .line 680
    move-object v2, v0

    .line 681
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 684
    :cond_1
    if-eqz v0, :cond_3

    .line 685
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 686
    if-nez v2, :cond_2

    .line 687
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 691
    :goto_2
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 692
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 694
    :goto_3
    return-object v3

    .line 689
    :cond_2
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    .line 694
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "toRemove":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 557
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 558
    .local v1, "index":I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 561
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 562
    if-ne p1, v0, :cond_2

    .line 563
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 564
    if-nez v2, :cond_1

    .line 565
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 569
    :goto_1
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 575
    :cond_0
    return-void

    .line 567
    :cond_1
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 572
    :cond_2
    move-object v2, v0

    .line 573
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 704
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 705
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 414
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/util/WeakHashMap$3;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    .line 441
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
