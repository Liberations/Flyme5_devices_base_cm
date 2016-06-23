.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BASE_HEADER:Ljava/lang/Object;

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final LT:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final seedGenerator:Ljava/util/Random;

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient randomSeed:I

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 300
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    .line 305
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    .line 3082
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    .line 3083
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 3084
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3089
    return-void

    .line 3086
    :catch_0
    move-exception v0

    .line 3087
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1353
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1354
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1355
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1356
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1367
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1368
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1369
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
    .line 1382
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1384
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1385
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    .line 1386
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1397
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1398
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1399
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1400
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1401
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    return-object v0
.end method

.method private addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V
    .locals 9
    .param p3, "indexLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move v1, p3

    .line 944
    .local v1, "insertionLevel":I
    iget-object v8, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 945
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    if-nez v3, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 950
    :cond_0
    iget v2, p2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 951
    .local v2, "j":I
    move-object v5, p2

    .line 952
    .local v5, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 953
    .local v6, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v7, p1

    .line 955
    .local v7, "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_2

    .line 956
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 958
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 959
    .local v0, "c":I
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 960
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 962
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 963
    goto :goto_0

    .line 965
    :cond_1
    if-lez v0, :cond_2

    .line 966
    move-object v5, v6

    .line 967
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 968
    goto :goto_0

    .line 972
    .end local v0    # "c":I
    .end local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    if-ne v2, v1, :cond_5

    .line 974
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 975
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 984
    :cond_3
    :goto_1
    return-void

    .line 978
    :cond_4
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 980
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    .line 982
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 983
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    .line 988
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_6

    if-ge v2, p3, :cond_6

    .line 989
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 990
    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 991
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p1, :cond_0

    .line 1429
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1431
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1432
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1436
    .local v0, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v10, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v4, v14, :cond_1

    .line 1440
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1441
    :cond_1
    move-object v11, v2

    .line 1442
    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v4, :cond_2

    .line 1443
    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1442
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1447
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1449
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1450
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1451
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v8

    .line 1452
    .local v8, "j":I
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v8, v14, :cond_4

    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v8, v14, 0x1

    .line 1453
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 1454
    .local v9, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 1455
    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_5

    if-nez v12, :cond_6

    .line 1456
    :cond_5
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1457
    :cond_6
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1458
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1459
    move-object v0, v13

    .line 1460
    if-lez v8, :cond_3

    .line 1461
    const/4 v5, 0x0

    .line 1462
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v4, 0x1

    move-object v6, v5

    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    if-gt v4, v8, :cond_a

    .line 1463
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v5, v13, v6, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1464
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v4, v14, :cond_9

    .line 1465
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v2, v14, v3, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1467
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_7

    .line 1468
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v5, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1469
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1462
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3

    .line 1471
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1475
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v8    # "j":I
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_8
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1476
    return-void

    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8    # "j":I
    .restart local v9    # "k":Ljava/lang/Object;, "TK;"
    .restart local v12    # "v":Ljava/lang/Object;, "TV;"
    .restart local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_9
    move-object v2, v3

    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_a
    move-object v2, v3

    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    .prologue
    .line 1144
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1146
    .local v0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1147
    .local v1, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_1

    .line 1150
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v2, :cond_3

    .line 1151
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 1152
    :cond_3
    return-void
.end method

.method private comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 631
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 632
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;-><init>(Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 634
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "okey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 799
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 800
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 801
    const/4 v2, 0x0

    .line 804
    :goto_0
    return-object v2

    .line 802
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 803
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "kkey":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 821
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 822
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 824
    .local v5, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_4

    .line 825
    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 826
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v5, v8, :cond_0

    .line 828
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 829
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 830
    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 833
    :cond_1
    if-eq v6, v5, :cond_0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 835
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 836
    .local v1, "c":I
    if-lez v1, :cond_2

    .line 837
    move-object v0, v5

    .line 838
    move-object v5, v2

    .line 839
    goto :goto_1

    .line 841
    :cond_2
    if-nez v1, :cond_4

    .line 842
    if-nez p3, :cond_3

    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 856
    .end local v1    # "c":I
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v6    # "v":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-object v6

    .line 850
    :cond_4
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v7, p1, p2, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 851
    .local v7, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {v0, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 853
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v4

    .line 854
    .local v4, "level":I
    if-lez v4, :cond_5

    .line 855
    invoke-direct {p0, v7, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V

    .line 856
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v5, 0x0

    .line 760
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 761
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 763
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_2

    move-object v3, v5

    .line 779
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    :goto_2
    return-object v3

    .line 765
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 766
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v3, v6, :cond_0

    .line 768
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 769
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 770
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 773
    :cond_3
    if-eq v4, v3, :cond_0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 775
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 776
    .local v1, "c":I
    if-eqz v1, :cond_1

    .line 778
    if-gez v1, :cond_4

    move-object v3, v5

    .line 779
    goto :goto_2

    .line 780
    :cond_4
    move-object v0, v3

    .line 781
    move-object v3, v2

    .line 782
    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    if-nez p1, :cond_0

    .line 684
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 686
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 687
    .local v3, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 689
    .local v4, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 690
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 691
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 692
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 693
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 696
    goto :goto_0

    .line 698
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    .line 699
    move-object v3, v4

    .line 700
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 701
    goto :goto_0

    .line 704
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 705
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 706
    move-object v3, v0

    .line 707
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    .line 709
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v5
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1216
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1219
    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 1220
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_1

    .line 1226
    move-object v1, v2

    .line 1227
    goto :goto_1

    .line 1230
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 1231
    move-object v1, v0

    goto :goto_1

    .line 1233
    :cond_2
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v3
.end method

.method private insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V
    .locals 15
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 889
    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v8, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 891
    .local v8, "max":I
    move/from16 v0, p2

    if-gt v0, v8, :cond_1

    .line 892
    const/4 v3, 0x0

    .line 893
    .local v3, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    move/from16 v0, p2

    if-gt v2, v0, :cond_0

    .line 894
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 893
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_0

    .line 895
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v4, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    .line 932
    :goto_1
    return-void

    .line 906
    .end local v2    # "i":I
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    add-int/lit8 p2, v8, 0x1

    .line 907
    add-int/lit8 v14, p2, 0x1

    new-array v5, v14, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v5, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 908
    .local v5, "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x0

    .line 909
    .restart local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    .restart local v2    # "i":I
    move-object v4, v3

    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2
    move/from16 v0, p2

    if-gt v2, v0, :cond_2

    .line 910
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v3, v5, v2

    .line 909
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_2

    .line 915
    :cond_2
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 916
    .local v13, "oldh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v11, v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 917
    .local v11, "oldLevel":I
    move/from16 v0, p2

    if-gt v0, v11, :cond_3

    .line 918
    move/from16 v7, p2

    .line 930
    .local v7, "k":I
    :goto_3
    aget-object v14, v5, v7

    invoke-direct {p0, v14, v13, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    goto :goto_1

    .line 921
    .end local v7    # "k":I
    :cond_3
    move-object v9, v13

    .line 922
    .local v9, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v12, v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 923
    .local v12, "oldbase":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    add-int/lit8 v6, v11, 0x1

    .local v6, "j":I
    move-object v10, v9

    .end local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v10, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    move/from16 v0, p2

    if-gt v6, v0, :cond_4

    .line 924
    new-instance v9, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    aget-object v14, v5, v6

    invoke-direct {v9, v12, v10, v14, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 923
    .end local v10    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    add-int/lit8 v6, v6, 0x1

    move-object v10, v9

    .end local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v10    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    .line 925
    :cond_4
    invoke-direct {p0, v13, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 926
    move v7, v11

    .line 927
    .restart local v7    # "k":I
    goto :goto_3
.end method

.method private randomLevel()I
    .locals 3

    .prologue
    .line 871
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 872
    .local v1, "x":I
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 873
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 874
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 875
    const v2, -0x7fffffff

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 876
    const/4 v0, 0x0

    .line 879
    :cond_0
    return v0

    .line 877
    :cond_1
    const/4 v0, 0x1

    .line 878
    .local v0, "level":I
    :goto_0
    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1511
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1513
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1523
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1524
    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1525
    .local v0, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v9, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v3, v14, :cond_0

    .line 1527
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1528
    :cond_0
    move-object v10, v1

    .line 1529
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v3, :cond_2

    .line 1530
    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1531
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1529
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, "j":I
    .local v7, "k":Ljava/lang/Object;
    .local v8, "key":Ljava/lang/Object;, "TK;"
    .local v11, "v":Ljava/lang/Object;
    .local v12, "val":Ljava/lang/Object;, "TV;"
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    move-object v1, v2

    .line 1535
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6    # "j":I
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "v":Ljava/lang/Object;
    .end local v12    # "val":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 1536
    .restart local v7    # "k":Ljava/lang/Object;
    if-nez v7, :cond_3

    .line 1563
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1564
    return-void

    .line 1538
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 1539
    .restart local v11    # "v":Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 1540
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1541
    :cond_4
    move-object v8, v7

    .line 1542
    .restart local v8    # "key":Ljava/lang/Object;, "TK;"
    move-object v12, v11

    .line 1543
    .restart local v12    # "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v6

    .line 1544
    .restart local v6    # "j":I
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v6, v14, :cond_5

    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v6, v14, 0x1

    .line 1545
    :cond_5
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1546
    .restart local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1547
    move-object v0, v13

    .line 1548
    if-lez v6, :cond_2

    .line 1549
    const/4 v4, 0x0

    .line 1550
    .local v4, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x1

    move-object v5, v4

    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_2
    if-gt v3, v6, :cond_1

    .line 1551
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v5, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1552
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v3, v14, :cond_7

    .line 1553
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v1, v14, v2, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1555
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 1556
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v4, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1557
    invoke-virtual {v9, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2

    .line 1559
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_7
    move-object v1, v2

    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2270
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2272
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2273
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v2
.end method

.method private tryReduceLevel()V
    .locals 5

    .prologue
    .line 1080
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1083
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v3, :cond_0

    .line 1091
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    .line 1092
    .end local v0    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1495
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1497
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 1498
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1495
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1502
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1503
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2070
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2078
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2079
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1693
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1694
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
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1412
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1414
    .local v0, "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1415
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    return-object v0

    .line 1417
    .end local v0    # "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 1418
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1921
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 643
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 646
    .end local p1    # "k1":Ljava/lang/Object;, "TK;"
    :goto_0
    return v1

    .restart local p1    # "k1":Ljava/lang/Object;, "TK;"
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k1":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1579
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1646
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1647
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1648
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1649
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1650
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    const/4 v2, 0x1

    .line 1653
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_1
    return v2

    .line 1648
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1653
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1797
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1791
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1792
    .local v7, "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v7, :cond_0

    .end local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :goto_0
    return-object v7

    .restart local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    move-object v7, v0

    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "okey"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1018
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1020
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1021
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1023
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 1054
    :cond_1
    :goto_2
    return-object v5

    .line 1025
    :cond_2
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1026
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1028
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1029
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1030
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1033
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1035
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1036
    .local v1, "c":I
    if-gez v1, :cond_4

    move-object v5, v6

    .line 1037
    goto :goto_2

    .line 1038
    :cond_4
    if-lez v1, :cond_5

    .line 1039
    move-object v0, v4

    .line 1040
    move-object v4, v2

    .line 1041
    goto :goto_1

    .line 1043
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v5, v6

    .line 1044
    goto :goto_2

    .line 1045
    :cond_6
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1047
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1048
    :cond_7
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_2

    .line 1050
    :cond_8
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1051
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_1

    .line 1052
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 1118
    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1119
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1120
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    .line 1135
    :goto_1
    return-object v4

    .line 1122
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1123
    .local v1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v2, v5, :cond_0

    .line 1125
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1126
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 1127
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1130
    :cond_2
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1132
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1133
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1134
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    .line 1135
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1245
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1246
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1247
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v4, :cond_2

    .line 1248
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1280
    :goto_1
    return-object v6

    .line 1264
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v5, "v":Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_4

    .line 1265
    move-object v0, v4

    .line 1266
    move-object v4, v2

    .line 1254
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1255
    .restart local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1257
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1258
    .restart local v5    # "v":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1259
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1262
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v7, :cond_1

    goto :goto_0

    .line 1269
    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1271
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 1272
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1273
    .local v1, "ck":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1274
    :cond_5
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1280
    :cond_6
    :goto_2
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1276
    :cond_7
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1277
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_6

    .line 1278
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
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
    .line 2257
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
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
    .line 1786
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 1787
    .local v0, "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1815
    if-ne p1, p0, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return v7

    .line 1817
    :cond_1
    instance-of v9, p1, Ljava/util/Map;

    if-nez v9, :cond_2

    move v7, v8

    .line 1818
    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 1819
    check-cast v4, Ljava/util/Map;

    .line 1821
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1822
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    .line 1823
    goto :goto_0

    .line 1824
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1825
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1826
    .local v3, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1827
    .local v6, "v":Ljava/lang/Object;
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_5

    :cond_6
    move v7, v8

    .line 1828
    goto :goto_0

    .line 1831
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/Object;
    .end local v6    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .local v5, "unused":Ljava/lang/ClassCastException;
    move v7, v8

    .line 1832
    goto :goto_0

    .line 1833
    .end local v5    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v5

    .local v5, "unused":Ljava/lang/NullPointerException;
    move v7, v8

    .line 1834
    goto :goto_0
.end method

.method findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1102
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1103
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1104
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 1105
    const/4 v1, 0x0

    .line 1107
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_0
    return-object v1

    .line 1106
    .restart local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1108
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1174
    .local v4, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v5, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v5, :cond_1

    .line 1175
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1176
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 1177
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1180
    :cond_0
    move-object v4, v5

    goto :goto_0

    .line 1181
    :cond_1
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v1, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    .line 1182
    move-object v4, v1

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1185
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1187
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_4

    .line 1188
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    return-object v0

    .line 1189
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1190
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v7, :cond_6

    .line 1202
    :cond_5
    :goto_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1192
    :cond_6
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1193
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_7

    .line 1194
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_2

    .line 1197
    :cond_7
    if-eq v6, v3, :cond_5

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 1199
    move-object v0, v3

    .line 1200
    move-object v3, v2

    .line 1201
    goto :goto_1
.end method

.method findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "kkey":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    .line 1300
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1302
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1303
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1305
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    .line 1306
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move-object v0, v6

    .line 1322
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    :goto_2
    return-object v0

    .line 1307
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1308
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1310
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1311
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1312
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1315
    :cond_4
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1317
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1318
    .local v1, "c":I
    if-nez v1, :cond_5

    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_6

    :cond_5
    if-gez v1, :cond_7

    and-int/lit8 v7, p2, 0x2

    if-nez v7, :cond_7

    :cond_6
    move-object v0, v4

    .line 1320
    goto :goto_2

    .line 1321
    :cond_7
    if-gtz v1, :cond_9

    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_9

    .line 1322
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto :goto_3

    .line 1323
    :cond_9
    move-object v0, v4

    .line 1324
    move-object v4, v2

    .line 1325
    goto :goto_1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2114
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2115
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 2116
    const/4 v0, 0x0

    .line 2119
    :goto_0
    return-object v0

    .line 2117
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2118
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1928
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1929
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1930
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1931
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2047
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2056
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2057
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1597
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 2
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1338
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 1339
    const/4 v0, 0x0

    .line 1342
    :goto_0
    return-object v0

    .line 1340
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 1341
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2000
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 1966
    if-nez p1, :cond_0

    .line 1967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1968
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2093
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2102
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2103
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method inHalfOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "least":Ljava/lang/Object;, "TK;"
    .local p3, "fence":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method inOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "least":Ljava/lang/Object;, "TK;"
    .local p3, "fence":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 668
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initialize()V
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 340
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 341
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 342
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 343
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 344
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 345
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 347
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1686
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2249
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1729
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1730
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2132
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    .line 2133
    const/4 v0, 0x0

    .line 2136
    :goto_0
    return-object v0

    .line 2134
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2135
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1938
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1939
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1940
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1941
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2024
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2032
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2033
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1734
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1735
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2147
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2157
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1616
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1850
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1852
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1630
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1863
    if-nez p1, :cond_0

    .line 1864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1865
    :cond_0
    if-nez p2, :cond_2

    .line 1867
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1905
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1906
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1907
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1909
    .local v0, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1910
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_2

    .line 1911
    const/4 v2, 0x0

    .line 1914
    :goto_0
    return-object v2

    .line 1912
    :cond_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1913
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 1878
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1879
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1880
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1882
    .local v0, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1883
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_4

    .line 1890
    :cond_3
    :goto_0
    return v3

    .line 1885
    :cond_4
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1886
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 1887
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1889
    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1890
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 1673
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1674
    .local v0, "count":J
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 1675
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1676
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1674
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1678
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    const v3, 0x7fffffff

    :goto_1
    return v3

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1991
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1953
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1954
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1955
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2009
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 1979
    if-nez p1, :cond_0

    .line 1980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1981
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2253
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
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
    .line 1757
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 1758
    .local v0, "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    goto :goto_0
.end method
