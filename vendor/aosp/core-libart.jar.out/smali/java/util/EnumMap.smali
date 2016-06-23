.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EnumMapEntrySet;,
        Ljava/util/EnumMap$EnumMapEntryIterator;,
        Ljava/util/EnumMap$EnumMapValueCollection;,
        Ljava/util/EnumMap$EnumMapKeySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/EnumMap$EnumMapEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap$EnumMapEntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient enumSize:I

.field transient hasMapping:[Z

.field private keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Enum;

.field private transient mappingsCount:I

.field transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 404
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 417
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 436
    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_0

    .line 437
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    .line 452
    :goto_0
    return-void

    .line 439
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 443
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 444
    .local v1, "enumKey":Ljava/lang/Enum;, "TK;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 445
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    invoke-direct {p0, v0}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 450
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method private initialization(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 758
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    .line 759
    iget-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    array-length v0, v0

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    .line 760
    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    .line 761
    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    .line 762
    return-void
.end method

.method private initialization(Ljava/util/EnumMap;)V
    .locals 1
    .param p1, "enumMap"    # Ljava/util/EnumMap;

    .prologue
    .line 748
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 749
    iget-object v0, p1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    .line 750
    iget v0, p1, Ljava/util/EnumMap;->enumSize:I

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    .line 751
    iget-object v0, p1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    .line 752
    iget-object v0, p1, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    .line 753
    iget v0, p1, Ljava/util/EnumMap;->mappingsCount:I

    iput v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 754
    return-void
.end method

.method private isValidKeyType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 740
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 766
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 767
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 769
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 771
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method private putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 776
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 780
    .local v0, "keyOrdinal":I
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 781
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 782
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 784
    :cond_1
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 785
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 786
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 717
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 718
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 721
    .local v0, "elementCount":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 722
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 723
    .local v1, "enumKey":Ljava/lang/Enum;, "Ljava/lang/Enum<TK;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 724
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 726
    .end local v1    # "enumKey":Ljava/lang/Enum;, "Ljava/lang/Enum<TK;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
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
    .line 729
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 730
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 731
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 732
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 734
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 735
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 737
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 464
    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 465
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 477
    .local v1, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {v1, p0}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return-object v1

    .line 479
    .end local v1    # "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 494
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 496
    .local v0, "keyOrdinal":I
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v1, v1, v0

    .line 498
    .end local v0    # "keyOrdinal":I
    :goto_0
    return v1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x1

    .line 511
    if-nez p1, :cond_2

    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_4

    .line 513
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 524
    :cond_0
    :goto_1
    return v1

    .line 512
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_4

    .line 519
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 524
    :cond_4
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
    .line 539
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/util/EnumMap$EnumMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapEntrySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 542
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    if-ne p0, p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    instance-of v3, p1, Ljava/util/EnumMap;

    if-nez v3, :cond_2

    .line 563
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 565
    check-cast v0, Ljava/util/EnumMap;

    .line 566
    .local v0, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v4, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_3
    move v1, v2

    .line 567
    goto :goto_0

    .line 569
    :cond_4
    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    iget-object v4, v0, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const/4 v1, 0x0

    .line 588
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 587
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 588
    .local v0, "keyOrdinal":I
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

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
    .line 603
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Ljava/util/EnumMap$EnumMapKeySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapKeySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 606
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

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
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 670
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 680
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 673
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 674
    .local v0, "keyOrdinal":I
    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 675
    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 676
    iget v3, p0, Ljava/util/EnumMap;->mappingsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 678
    :cond_1
    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 679
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 690
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->mappingsCount:I

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
    .line 707
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/util/EnumMap$EnumMapValueCollection;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapValueCollection;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    .line 710
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
