.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapEntry;
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
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x15

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final loadFactor:I = 0x1d4c

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field transient modCount:I

.field size:I

.field transient threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 254
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 76
    iput v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 264
    if-gez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iput v0, p0, Ljava/util/IdentityHashMap;->size:I

    .line 268
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 269
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 270
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
    .line 303
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 304
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 305
    return-void

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1
    .param p0, "x0"    # Ljava/util/IdentityHashMap;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1
    .param p0, "x0"    # Ljava/util/IdentityHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method private computeElementArraySize()I
    .locals 6

    .prologue
    .line 279
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v1, p0, Ljava/util/IdentityHashMap;->threshold:I

    int-to-long v2, v1

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1d4c

    div-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 282
    .local v0, "arraySize":I
    if-gez v0, :cond_0

    neg-int v0, v0

    .end local v0    # "arraySize":I
    :cond_0
    return v0
.end method

.method private computeMaxSize()V
    .locals 4

    .prologue
    .line 526
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/16 v2, 0x1d4c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 527
    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 427
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    array-length v2, p2

    .line 428
    .local v2, "length":I
    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    .line 429
    .local v0, "index":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x2

    rem-int v1, v3, v2

    .line 430
    .local v1, "last":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 431
    aget-object v3, p2, v0

    if-eq v3, p1, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_1

    .line 440
    :cond_0
    return v0

    .line 438
    :cond_1
    add-int/lit8 v3, v0, 0x2

    rem-int v0, v3, v2

    goto :goto_0
.end method

.method private getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 410
    .local v0, "key":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    aget-object v1, v2, v3

    .line 412
    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 415
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 416
    const/4 v1, 0x0

    .line 419
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;-><init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 392
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 395
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 396
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 397
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "length"    # I

    .prologue
    .line 444
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Collections;->secondaryIdentityHash(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    rem-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getThreshold(I)I
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x3

    .line 275
    if-le p1, v0, :cond_0

    .end local p1    # "maxSize":I
    :goto_0
    return p1

    .restart local p1    # "maxSize":I
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private massageValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 293
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/lang/Object;

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
    .line 820
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 823
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 808
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 809
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 810
    .local v2, "savedSize":I
    const/16 v3, 0x15

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v3

    iput v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 811
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 812
    move v0, v2

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 813
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 814
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 816
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    .line 817
    return-void
.end method

.method private rehash()V
    .locals 8

    .prologue
    .line 507
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v4, v5, 0x2

    .line 508
    .local v4, "newlength":I
    if-nez v4, :cond_0

    .line 509
    const/4 v4, 0x1

    .line 511
    :cond_0
    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 512
    .local v3, "newData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 513
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v5, v0

    .line 514
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 516
    invoke-direct {p0, v2, v3}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 517
    .local v1, "index":I
    aput-object v2, v3, v1

    .line 518
    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    .line 512
    .end local v1    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 521
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 522
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeMaxSize()V

    .line 523
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 796
    iget v2, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 797
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 798
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/MapEntry;

    .line 800
    .local v0, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<**>;"
    iget-object v2, v0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 801
    iget-object v2, v0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 803
    .end local v0    # "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<**>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 320
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/IdentityHashMap;->size:I

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 322
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 325
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 763
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    .line 764
    .local v0, "cloneHashMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 765
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    return-object v0

    .line 767
    .end local v0    # "cloneHashMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 337
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 338
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 341
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 342
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 355
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 356
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 359
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 360
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 361
    const/4 v1, 0x1

    .line 364
    :goto_1
    return v1

    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 364
    :cond_2
    const/4 v1, 0x0

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
    .line 598
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 737
    if-ne p0, p1, :cond_1

    .line 738
    const/4 v2, 0x1

    .line 750
    :cond_0
    :goto_0
    return v2

    .line 740
    :cond_1
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 741
    check-cast v0, Ljava/util/Map;

    .line 742
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 746
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 748
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 377
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 380
    :cond_0
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 382
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 383
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 384
    .local v1, "result":Ljava/lang/Object;
    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 781
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

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
    .line 610
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Ljava/util/IdentityHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$1;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 647
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    .line 460
    .local v0, "_key":Ljava/lang/Object;
    move-object v1, p2

    .line 461
    .local v1, "_value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 462
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 465
    :cond_0
    if-nez v1, :cond_1

    .line 466
    sget-object v1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 469
    :cond_1
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 472
    .local v2, "index":I
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eq v4, v0, :cond_3

    .line 473
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 474
    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->size:I

    iget v5, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-le v4, v5, :cond_2

    .line 475
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->rehash()V

    .line 476
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 480
    :cond_2
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 481
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 485
    :cond_3
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v4, v5

    .line 486
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aput-object v1, v4, v5

    .line 488
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
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
    .line 503
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 504
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 539
    if-nez p1, :cond_0

    .line 540
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 546
    :cond_0
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v10}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    .local v4, "next":I
    move v2, v4

    .line 548
    .local v2, "index":I
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v10, v10, v2

    if-eq v10, p1, :cond_1

    move-object v7, v9

    .line 586
    :goto_0
    return-object v7

    .line 553
    :cond_1
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    aget-object v6, v10, v11

    .line 557
    .local v6, "result":Ljava/lang/Object;
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v3, v10

    .line 559
    .local v3, "length":I
    :cond_2
    :goto_1
    add-int/lit8 v10, v4, 0x2

    rem-int v4, v10, v3

    .line 560
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v5, v10, v4

    .line 561
    .local v5, "object":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 579
    iget v7, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->size:I

    .line 580
    iget v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 583
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v9, v7, v2

    .line 584
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    aput-object v9, v7, v8

    .line 586
    invoke-direct {p0, v6}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 565
    :cond_3
    invoke-direct {p0, v5, v3}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    .line 566
    .local v0, "hash":I
    if-le v0, v2, :cond_5

    move v1, v8

    .line 567
    .local v1, "hashedOk":Z
    :goto_2
    if-ge v4, v2, :cond_7

    .line 568
    if-nez v1, :cond_4

    if-gt v0, v4, :cond_6

    :cond_4
    move v1, v8

    .line 572
    :goto_3
    if-nez v1, :cond_2

    .line 573
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v5, v10, v2

    .line 574
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    iget-object v12, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v13, v4, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 575
    move v2, v4

    goto :goto_1

    .end local v1    # "hashedOk":Z
    :cond_5
    move v1, v7

    .line 566
    goto :goto_2

    .restart local v1    # "hashedOk":Z
    :cond_6
    move v1, v7

    .line 568
    goto :goto_3

    .line 570
    :cond_7
    if-eqz v1, :cond_8

    if-gt v0, v4, :cond_8

    move v1, v8

    :goto_4
    goto :goto_3

    :cond_8
    move v1, v7

    goto :goto_4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 791
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

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
    .line 671
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/util/IdentityHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$2;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    .line 711
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
