.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedListIterator;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$CopiesList;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/util/Collections$1;

    invoke-direct {v0}, Ljava/util/Collections$1;-><init>()V

    sput-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 49
    new-instance v0, Ljava/util/Collections$2;

    invoke-direct {v0}, Ljava/util/Collections$2;-><init>()V

    sput-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 168
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/Collections$EmptySet;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 180
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 2581
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 2582
    .local v1, "modified":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2583
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2585
    :cond_0
    return v1
.end method

.method public static asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2653
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 1414
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 1415
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "list == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1417
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1418
    const/4 v3, -0x1

    .line 1447
    :cond_1
    :goto_0
    return v3

    .line 1422
    :cond_2
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_6

    .line 1423
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1424
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1426
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    .local v4, "result":I
    if-gtz v4, :cond_3

    .line 1427
    if-nez v4, :cond_4

    .line 1428
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    goto :goto_0

    .line 1430
    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1433
    .end local v4    # "result":I
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1436
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_6
    const/4 v2, 0x0

    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "mid":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "high":I
    const/4 v4, -0x1

    .line 1437
    .restart local v4    # "result":I
    :goto_1
    if-gt v2, v0, :cond_8

    .line 1438
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 1439
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_7

    .line 1440
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 1441
    :cond_7
    if-eqz v4, :cond_1

    .line 1444
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 1447
    :cond_8
    neg-int v6, v3

    if-gez v4, :cond_9

    const/4 v5, 0x1

    :goto_2
    sub-int v3, v6, v5

    goto :goto_0

    :cond_9
    const/4 v5, 0x2

    goto :goto_2
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 1473
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_1

    .line 1474
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 1502
    :cond_0
    :goto_0
    return v3

    .line 1477
    :cond_1
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_5

    .line 1478
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1479
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1481
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    .local v4, "result":I
    if-gtz v4, :cond_2

    .line 1482
    if-nez v4, :cond_3

    .line 1483
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    goto :goto_0

    .line 1485
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1488
    .end local v4    # "result":I
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1491
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_5
    const/4 v2, 0x0

    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "mid":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "high":I
    const/4 v4, -0x1

    .line 1492
    .restart local v4    # "result":I
    :goto_1
    if-gt v2, v0, :cond_7

    .line 1493
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 1494
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_6

    .line 1495
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 1496
    :cond_6
    if-eqz v4, :cond_0

    .line 1499
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 1502
    :cond_7
    neg-int v6, v3

    if-gez v4, :cond_8

    const/4 v5, 0x1

    :goto_2
    sub-int v3, v6, v5

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_2
.end method

.method static checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2627
    .local p0, "obj":Ljava/lang/Object;, "TE;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to insert element of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into collection of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2631
    :cond_0
    return-object p0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2468
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2503
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 2504
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 2506
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2487
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$1;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2522
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2541
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2558
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p0, "destination":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1523
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination.size() < source.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1526
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1527
    .local v2, "srcIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1528
    .local v0, "destIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1530
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1531
    :catch_0
    move-exception v1

    .line 1533
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fit into destination"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1538
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2601
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2603
    :cond_1
    move-object v1, p0

    .line 2604
    .local v1, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object p0, p1

    .line 2605
    move-object p1, v1

    .line 2607
    .end local v1    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2608
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2609
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2610
    const/4 v2, 0x0

    .line 2613
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2434
    sget-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2443
    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static final emptyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2401
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2425
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2413
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1548
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v0, p0

    .line 1549
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v1, Ljava/util/Collections$3;

    invoke-direct {v1, v0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1573
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1574
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1576
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1578
    :cond_0
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2375
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    .line 2376
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "c == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2378
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2379
    const/4 v2, 0x0

    .line 2389
    :cond_1
    return v2

    .line 2381
    :cond_2
    const/4 v2, 0x0

    .line 2382
    .local v2, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2383
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2385
    .local v0, "e":Ljava/lang/Object;
    if-nez p1, :cond_4

    if-nez v0, :cond_3

    .line 2386
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2385
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sublist":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 2024
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2025
    .local v5, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2027
    .local v7, "sublistSize":I
    if-le v7, v5, :cond_1

    move v3, v8

    .line 2074
    :cond_0
    :goto_0
    return v3

    .line 2031
    :cond_1
    if-eqz v7, :cond_0

    .line 2036
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2037
    .local v2, "firstObj":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2038
    .local v3, "index":I
    if-ne v3, v8, :cond_3

    move v3, v8

    .line 2039
    goto :goto_0

    .line 2072
    .local v4, "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 2042
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_3
    if-ge v3, v5, :cond_9

    sub-int v9, v5, v3

    if-lt v9, v7, :cond_9

    .line 2043
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2045
    .restart local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-nez v2, :cond_5

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 2050
    :goto_1
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2051
    .local v6, "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2052
    .local v0, "difFound":Z
    :cond_4
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2053
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2054
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    move v3, v8

    .line 2055
    goto :goto_0

    .line 2045
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 2057
    .restart local v0    # "difFound":Z
    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_6
    if-nez v1, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2059
    :goto_2
    const/4 v0, 0x1

    .line 2065
    .end local v1    # "element":Ljava/lang/Object;
    :cond_7
    if-nez v0, :cond_2

    goto :goto_0

    .line 2057
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_8
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_9
    move v3, v8

    .line 2074
    goto :goto_0
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sublist":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v8, -0x1

    .line 2091
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2092
    .local v7, "sublistSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2094
    .local v5, "size":I
    if-le v7, v5, :cond_1

    move v5, v8

    .line 2138
    .end local v5    # "size":I
    :cond_0
    :goto_0
    return v5

    .line 2098
    .restart local v5    # "size":I
    :cond_1
    if-eqz v7, :cond_0

    .line 2103
    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2104
    .local v3, "lastObj":Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2106
    .local v2, "index":I
    :goto_1
    if-le v2, v8, :cond_9

    add-int/lit8 v9, v2, 0x1

    if-lt v9, v7, :cond_9

    .line 2107
    add-int/lit8 v9, v2, 0x1

    invoke-interface {p0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2109
    .local v4, "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-nez v3, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    .line 2113
    :cond_2
    add-int/lit8 v9, v7, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2115
    .local v6, "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2116
    .local v0, "difFound":Z
    :cond_3
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2117
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 2118
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v8

    .line 2119
    goto :goto_0

    .line 2109
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2136
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 2137
    goto :goto_1

    .line 2121
    .restart local v0    # "difFound":Z
    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_6
    if-nez v1, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 2123
    :goto_2
    const/4 v0, 0x1

    .line 2129
    .end local v1    # "element":Ljava/lang/Object;
    :cond_7
    if-nez v0, :cond_5

    .line 2130
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_0

    .line 2121
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_8
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_9
    move v5, v8

    .line 2138
    goto :goto_0
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2151
    .local p0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2155
    :cond_0
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1593
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1594
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1595
    .local v1, "max":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    .line 1597
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1598
    move-object v1, v2

    goto :goto_0

    .line 1601
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1619
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    .line 1621
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    .line 1633
    :goto_0
    return-object v3

    .line 1625
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1626
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1627
    .local v1, "max":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1629
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 1630
    move-object v1, v2

    goto :goto_1

    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v3, v1

    .line 1633
    goto :goto_0
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1649
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1650
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1651
    .local v1, "min":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1652
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    .line 1653
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1654
    move-object v1, v2

    goto :goto_0

    .line 1657
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1675
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    .line 1677
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    .line 1689
    :goto_0
    return-object v3

    .line 1681
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1682
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1683
    .local v1, "min":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1685
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1686
    move-object v1, v2

    goto :goto_1

    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v3, v1

    .line 1689
    goto :goto_0
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1705
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2641
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2642
    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 2644
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "map not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 1943
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "obj2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 1945
    .local v0, "found":Z
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1946
    const/4 v0, 0x1

    .line 1947
    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1949
    :cond_0
    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1719
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1720
    .local v5, "size":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1721
    .local v2, "front":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1723
    .local v0, "back":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_0

    .line 1724
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1725
    .local v3, "frontNext":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 1726
    .local v1, "backPrev":Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1727
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1723
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1729
    .end local v1    # "backPrev":Ljava/lang/Object;
    .end local v3    # "frontNext":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1739
    # getter for: Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;
    invoke-static {}, Ljava/util/Collections$ReverseComparator;->access$400()Ljava/util/Collections$ReverseComparator;

    move-result-object v0

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1756
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_0

    .line 1757
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 1762
    :goto_0
    return-object v0

    .line 1759
    :cond_0
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_1

    .line 1760
    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    .end local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    # getter for: Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;
    invoke-static {p0}, Ljava/util/Collections$ReverseComparator2;->access$500(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 1762
    .restart local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_1
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static rotate(Ljava/util/List;I)V
    .locals 12
    .param p1, "dist"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v11, 0x0

    .line 1967
    move-object v4, p0

    .line 1968
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1971
    .local v6, "size":I
    if-nez v6, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    if-lez p1, :cond_3

    .line 1978
    rem-int v5, p1, v6

    .line 1983
    .local v5, "normdist":I
    :goto_1
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    .line 1987
    instance-of v10, v4, Ljava/util/RandomAccess;

    if-eqz v10, :cond_4

    .line 1990
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1991
    .local v9, "temp":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "index":I
    const/4 v0, 0x0

    .line 1992
    .local v0, "beginIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_0

    .line 1993
    add-int v10, v3, v5

    rem-int v3, v10, v6

    .line 1994
    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1995
    if-ne v3, v0, :cond_2

    .line 1996
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 1997
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1992
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1980
    .end local v0    # "beginIndex":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v5    # "normdist":I
    .end local v9    # "temp":Ljava/lang/Object;
    :cond_3
    rem-int v10, p1, v6

    mul-int/lit8 v10, v10, -0x1

    sub-int v5, v6, v10

    .restart local v5    # "normdist":I
    goto :goto_1

    .line 2001
    :cond_4
    sub-int v10, v6, v5

    rem-int v1, v10, v6

    .line 2002
    .local v1, "divideIndex":I
    invoke-interface {v4, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2003
    .local v7, "sublist1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 2004
    .local v8, "sublist2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2005
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2006
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static roundUpToPowerOfTwo(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 3439
    add-int/lit8 p0, p0, -0x1

    .line 3442
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 3443
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 3444
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 3445
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 3446
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 3448
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 3422
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 3423
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 3424
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 3425
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 3426
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 3427
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method public static secondaryHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 3405
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/Collections;->secondaryHash(I)I

    move-result v0

    return v0
.end method

.method public static secondaryIdentityHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 3416
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/util/Collections;->secondaryHash(I)I

    move-result v0

    return v0
.end method

.method public static shuffle(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1775
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 1776
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 8
    .param p1, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1791
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v5, p0

    .line 1793
    .local v5, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v7, p0, Ljava/util/RandomAccess;

    if-eqz v7, :cond_0

    .line 1794
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 1795
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1796
    .local v3, "index":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1794
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1799
    .end local v1    # "i":I
    .end local v3    # "index":I
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1800
    .local v0, "array":[Ljava/lang/Object;
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_1

    .line 1801
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1802
    .restart local v3    # "index":I
    aget-object v6, v0, v1

    .line 1803
    .local v6, "temp":Ljava/lang/Object;
    aget-object v7, v0, v3

    aput-object v7, v0, v1

    .line 1804
    aput-object v6, v0, v3

    .line 1800
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1807
    .end local v3    # "index":I
    .end local v6    # "temp":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    .line 1808
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 1809
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1810
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1811
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v7, v0, v1

    invoke-interface {v4, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1814
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1825
    .local p0, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1837
    .local p0, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1863
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1864
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1865
    const/4 v1, 0x0

    .line 1866
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1867
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1868
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1869
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1871
    :cond_0
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1882
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1883
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1884
    const/4 v1, 0x0

    .line 1885
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1886
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1887
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1888
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1890
    :cond_0
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 1910
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 1911
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "list == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1913
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1914
    .local v1, "size":I
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    if-lt p2, v1, :cond_2

    .line 1915
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1917
    :cond_2
    if-ne p1, p2, :cond_3

    .line 1922
    :goto_0
    return-void

    .line 1920
    :cond_3
    move-object v0, p0

    .line 1921
    .local v0, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2168
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    .line 2169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "collection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2183
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 2184
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2186
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    .line 2187
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2189
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2201
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    .line 2202
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "map == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2204
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2216
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-nez p0, :cond_0

    .line 2217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2219
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2232
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    if-nez p0, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "map == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2235
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2247
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_0

    .line 2248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2250
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2265
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p0, :cond_0

    .line 2266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "collection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    if-nez p0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2285
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    .line 2286
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2288
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2303
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-nez p0, :cond_0

    .line 2304
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "map == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2306
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2320
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-nez p0, :cond_0

    .line 2321
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2323
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2338
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "map == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2354
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
