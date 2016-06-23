.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$1;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Values;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueEnumeration;,
        Ljava/util/Hashtable$KeyEnumeration;,
        Ljava/util/Hashtable$EntryIterator;,
        Ljava/util/Hashtable$ValueIterator;,
        Ljava/util/Hashtable$KeyIterator;,
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$HashtableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CHARS_PER_ENTRY:I = 0xf

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 56
    new-array v0, v1, [Ljava/util/Hashtable$HashtableEntry;

    sput-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 1062
    new-array v0, v1, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "threshold"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Hashtable;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 106
    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    .line 117
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 118
    if-gez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    if-nez p1, :cond_1

    .line 124
    sget-object v1, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/Hashtable$HashtableEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    .line 125
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    .line 138
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 131
    const/4 p1, 0x4

    .line 137
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 132
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_3

    .line 133
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_1
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 150
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable;-><init>(I)V

    .line 152
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
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
    .line 171
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 172
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method static synthetic access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;

    .prologue
    .line 37
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;

    .prologue
    .line 37
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Hashtable;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/Hashtable;

    .prologue
    .line 37
    iget v0, p0, Ljava/util/Hashtable;->size:I

    return v0
.end method

.method private static capacityForInitSize(I)I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 195
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 198
    .local v0, "result":I
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 396
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "key == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 397
    :cond_0
    if-nez p2, :cond_1

    .line 398
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "value == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 400
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v2

    .line 401
    .local v2, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 402
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v3, v2, v5

    .line 403
    .local v3, "index":I
    aget-object v1, v4, v3

    .line 404
    .local v1, "first":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 405
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v2, :cond_2

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 414
    :goto_1
    return-void

    .line 404
    :cond_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 412
    :cond_3
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v5, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v5, v4, v3

    .line 413
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    goto :goto_1
.end method

.method private constructorPutAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    sget-object v3, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    if-ne v2, v3, :cond_0

    .line 182
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    return-void
.end method

.method private declared-synchronized containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 797
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 798
    .local v1, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 799
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int v2, v1, v4

    .line 800
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 801
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 805
    :goto_1
    monitor-exit p0

    return v4

    .line 800
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 805
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 797
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 502
    .local v9, "oldTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v8, v9

    .line 503
    .local v8, "oldCapacity":I
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_1

    move-object v6, v9

    .line 538
    :cond_0
    return-object v6

    .line 506
    :cond_1
    mul-int/lit8 v5, v8, 0x2

    .line 507
    .local v5, "newCapacity":I
    invoke-direct {p0, v5}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 508
    .local v6, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_0

    .line 512
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 517
    aget-object v1, v9, v3

    .line 518
    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    if-nez v1, :cond_3

    .line 512
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_3
    iget v10, v1, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v2, v10, v8

    .line 522
    .local v2, "highBit":I
    const/4 v0, 0x0

    .line 523
    .local v0, "broken":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 524
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .local v4, "n":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    .line 525
    iget v10, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v7, v10, v8

    .line 526
    .local v7, "nextHighBit":I
    if-eq v7, v2, :cond_4

    .line 527
    if-nez v0, :cond_5

    .line 528
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 531
    :goto_3
    move-object v0, v1

    .line 532
    move v2, v7

    .line 524
    :cond_4
    move-object v1, v4

    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2

    .line 530
    :cond_5
    iput-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3

    .line 535
    .end local v7    # "nextHighBit":I
    :cond_6
    if-eqz v0, :cond_2

    .line 536
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1
.end method

.method private ensureCapacity(I)V
    .locals 11
    .param p1, "numMappings"    # I

    .prologue
    .line 440
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 441
    .local v2, "newCapacity":I
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 442
    .local v9, "oldTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v7, v9

    .line 443
    .local v7, "oldCapacity":I
    if-gt v2, v7, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 449
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_2

    .line 450
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 455
    :cond_2
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 456
    .local v6, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_0

    .line 457
    add-int/lit8 v4, v2, -0x1

    .line 458
    .local v4, "newMask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 459
    aget-object v0, v9, v1

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 460
    iget-object v8, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 461
    .local v8, "oldNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v3, v10, v4

    .line 462
    .local v3, "newIndex":I
    aget-object v5, v6, v3

    .line 463
    .local v5, "newNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 464
    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 465
    move-object v0, v8

    .line 466
    goto :goto_2

    .line 458
    .end local v3    # "newIndex":I
    .end local v5    # "newNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v8    # "oldNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private makeTable(I)[Ljava/util/Hashtable$HashtableEntry;
    .locals 3
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    .line 489
    .local v0, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 490
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    .line 491
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1086
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1087
    .local v0, "capacity":I
    if-gez v0, :cond_0

    .line 1088
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1090
    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    .line 1091
    const/4 v0, 0x4

    .line 1097
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 1099
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1100
    .local v3, "size":I
    if-gez v3, :cond_3

    .line 1101
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1092
    .end local v3    # "size":I
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    if-le v0, v5, :cond_2

    .line 1093
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 1095
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_0

    .line 1104
    .restart local v3    # "size":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1106
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1107
    .local v4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1109
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method

.method private declared-synchronized removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    .line 813
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 814
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 815
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 816
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 817
    .local v3, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 818
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_3

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 819
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 832
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 822
    :cond_1
    if-nez v3, :cond_2

    .line 823
    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 827
    :goto_2
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 828
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    .line 829
    const/4 v5, 0x1

    goto :goto_1

    .line 825
    :cond_2
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 813
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 817
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    move-object v3, v0

    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v5, 0x3f400000    # 0.75f

    .line 1070
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1071
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "threshold"

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1072
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 1073
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1075
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1076
    iget v3, p0, Ljava/util/Hashtable;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1077
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1078
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1079
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1070
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1081
    .restart local v1    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 580
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 216
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v1, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :try_start_1
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 223
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Hashtable;->size:I

    .line 224
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 225
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 226
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 228
    invoke-direct {v1, p0}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-object v1

    .line 217
    .end local v1    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 339
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 289
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v2

    .line 290
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 291
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 292
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 293
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 294
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    :cond_0
    const/4 v4, 0x1

    .line 298
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :goto_1
    monitor-exit p0

    return v4

    .line 292
    .restart local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 289
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 310
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 311
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "value == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 314
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 315
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v2, v3

    .line 317
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 318
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 319
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    const/4 v4, 0x1

    .line 324
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;
    :goto_2
    monitor-exit p0

    return v4

    .line 318
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable$ValueEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 2
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
    .line 620
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 847
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 265
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v2

    .line 266
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 267
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 268
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 269
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 270
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    :cond_0
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :goto_1
    monitor-exit p0

    return-object v4

    .line 268
    .restart local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized hashCode()I
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    .line 852
    monitor-enter p0

    const/4 v3, 0x0

    .line 853
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 854
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 855
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 856
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eq v2, p0, :cond_0

    if-eq v4, p0, :cond_0

    .line 859
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move v7, v5

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :goto_2
    xor-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 861
    goto :goto_0

    :cond_1
    move v7, v6

    .line 859
    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    .line 862
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    monitor-exit p0

    return v3

    .line 852
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable$KeyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 360
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "key == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 361
    :cond_0
    if-nez p2, :cond_1

    .line 362
    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "value == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 364
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v2

    .line 365
    .local v2, "hash":I
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 366
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    .line 367
    .local v3, "index":I
    aget-object v1, v5, v3

    .line 368
    .local v1, "first":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 369
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_2

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 370
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 371
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    monitor-exit p0

    return-object v4

    .line 368
    :cond_2
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 377
    :cond_3
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 378
    iget v6, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/Hashtable;->size:I

    iget v7, p0, Ljava/util/Hashtable;->threshold:I

    if-le v6, v7, :cond_4

    .line 379
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 380
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    .line 381
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    .line 382
    aget-object v1, v5, v3

    .line 384
    :cond_4
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v6, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v6, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/Hashtable;->ensureCapacity(I)V

    .line 424
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 427
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected rehash()V
    .locals 0

    .prologue
    .line 480
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 553
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 554
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 555
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 556
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 557
    .local v3, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 558
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    if-nez v3, :cond_0

    .line 560
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 564
    :goto_1
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 565
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    .line 566
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :goto_2
    monitor-exit p0

    return-object v5

    .line 562
    :cond_0
    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 553
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 557
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    move-object v3, v0

    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 569
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 877
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/util/Hashtable;->size:I

    mul-int/lit8 v6, v6, 0xf

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 878
    .local v4, "result":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 880
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 881
    .local v1, "hasMore":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 882
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 884
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 885
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-ne v3, p0, :cond_1

    const-string v6, "(this Map)"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 890
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-ne v5, p0, :cond_2

    const-string v6, "(this Map)"

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 877
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "hasMore":Z
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 885
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v1    # "hasMore":Z
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 890
    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 897
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
