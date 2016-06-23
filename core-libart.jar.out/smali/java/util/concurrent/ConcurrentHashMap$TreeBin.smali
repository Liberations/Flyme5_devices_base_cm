.class final Ljava/util/concurrent/ConcurrentHashMap$TreeBin;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Lsun/misc/Unsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile lockState:I

.field root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1921
    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->$assertionsDisabled:Z

    .line 2430
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    .line 2431
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2432
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    const-string v3, "lockState"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    return-void

    .line 1921
    .end local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2434
    .restart local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 2435
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v11, 0x0

    .line 1935
    const/high16 v10, -0x80000000

    invoke-direct {p0, v10, v11, v11, v11}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1936
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1937
    const/4 v7, 0x0

    .line 1938
    .local v7, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v8, p1

    .local v8, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-eqz v8, :cond_8

    .line 1939
    iget-object v4, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1940
    .local v4, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1941
    if-nez v7, :cond_0

    .line 1942
    iput-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1943
    const/4 v10, 0x0

    iput-boolean v10, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 1944
    move-object v7, v8

    .line 1938
    :goto_1
    move-object v8, v4

    goto :goto_0

    .line 1947
    :cond_0
    iget-object v3, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 1948
    .local v3, "key":Ljava/lang/Object;
    iget v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .line 1949
    .local v1, "hash":I
    const/4 v2, 0x0

    .line 1950
    .local v2, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v7

    .line 1952
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .local v6, "ph":I
    if-le v6, v1, :cond_2

    .line 1953
    const/4 v0, -0x1

    .line 1961
    .local v0, "dir":I
    :goto_2
    move-object v9, v5

    .line 1962
    .local v9, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v0, :cond_6

    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3
    if-nez v5, :cond_1

    .line 1963
    iput-object v9, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1964
    if-gtz v0, :cond_7

    .line 1965
    iput-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1968
    :goto_4
    invoke-static {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    .line 1969
    goto :goto_1

    .line 1954
    .end local v0    # "dir":I
    .end local v9    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    if-ge v6, v1, :cond_3

    .line 1955
    const/4 v0, 0x1

    .restart local v0    # "dir":I
    goto :goto_2

    .line 1956
    .end local v0    # "dir":I
    :cond_3
    if-nez v2, :cond_4

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1958
    :cond_4
    iget-object v10, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "dir":I
    goto :goto_2

    .line 1960
    .end local v0    # "dir":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dir":I
    goto :goto_2

    .line 1962
    .restart local v9    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    .line 1967
    :cond_7
    iput-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    .line 1974
    .end local v0    # "dir":I
    .end local v1    # "hash":I
    .end local v2    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "ph":I
    .end local v9    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1975
    return-void
.end method

.method static balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2312
    :goto_0
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 2320
    .end local p0    # "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    :goto_1
    return-object p0

    .line 2314
    .restart local p0    # "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_2

    .line 2315
    iput-boolean v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p0, p1

    .line 2316
    goto :goto_1

    .line 2318
    :cond_2
    iget-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_3

    .line 2319
    iput-boolean v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_1

    .line 2322
    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v3, p1, :cond_11

    .line 2323
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v4, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_4

    iget-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_4

    .line 2324
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2325
    iput-boolean v8, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2326
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2327
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_5

    move-object v4, v5

    .line 2329
    :cond_4
    :goto_2
    if-nez v4, :cond_6

    .line 2330
    move-object p1, v2

    goto :goto_0

    .line 2327
    :cond_5
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    .line 2332
    :cond_6
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2333
    .local v1, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_7

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_9

    .line 2335
    :cond_8
    iput-boolean v8, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2336
    move-object p1, v2

    goto :goto_0

    .line 2339
    :cond_9
    if-eqz v1, :cond_a

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_c

    .line 2340
    :cond_a
    if-eqz v0, :cond_b

    .line 2341
    iput-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2342
    :cond_b
    iput-boolean v8, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2343
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2344
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_f

    move-object v4, v5

    .line 2347
    :cond_c
    :goto_3
    if-eqz v4, :cond_d

    .line 2348
    if-nez v2, :cond_10

    move v6, v7

    :goto_4
    iput-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2349
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_d

    .line 2350
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2352
    :cond_d
    if-eqz v2, :cond_e

    .line 2353
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2354
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2356
    :cond_e
    move-object p1, p0

    goto :goto_0

    .line 2344
    :cond_f
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    .line 2348
    :cond_10
    iget-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_4

    .line 2361
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11
    if-eqz v3, :cond_12

    iget-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_12

    .line 2362
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2363
    iput-boolean v8, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2364
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2365
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_13

    move-object v3, v5

    .line 2367
    :cond_12
    :goto_5
    if-nez v3, :cond_14

    .line 2368
    move-object p1, v2

    goto/16 :goto_0

    .line 2365
    :cond_13
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_5

    .line 2370
    :cond_14
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2371
    .restart local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_15

    iget-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_17

    :cond_15
    if-eqz v1, :cond_16

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_17

    .line 2373
    :cond_16
    iput-boolean v8, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2374
    move-object p1, v2

    goto/16 :goto_0

    .line 2377
    :cond_17
    if-eqz v0, :cond_18

    iget-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_1a

    .line 2378
    :cond_18
    if-eqz v1, :cond_19

    .line 2379
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2380
    :cond_19
    iput-boolean v8, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2381
    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2382
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_1d

    move-object v3, v5

    .line 2385
    :cond_1a
    :goto_6
    if-eqz v3, :cond_1b

    .line 2386
    if-nez v2, :cond_1e

    move v6, v7

    :goto_7
    iput-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2387
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_1b

    .line 2388
    iput-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2390
    :cond_1b
    if-eqz v2, :cond_1c

    .line 2391
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2392
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2394
    :cond_1c
    move-object p1, p0

    goto/16 :goto_0

    .line 2382
    :cond_1d
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_6

    .line 2386
    :cond_1e
    iget-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_7
.end method

.method static balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2256
    iput-boolean v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2258
    :cond_0
    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1

    .line 2259
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2263
    .end local p1    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    return-object p1

    .line 2262
    .restart local p1    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_3

    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    move-object p1, p0

    .line 2263
    goto :goto_1

    .line 2264
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v0, v2, :cond_7

    .line 2265
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_4

    iget-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_4

    .line 2266
    iput-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2267
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2268
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2269
    move-object p1, v1

    goto :goto_0

    .line 2272
    :cond_4
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v5, :cond_5

    .line 2273
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2274
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_6

    move-object v1, v4

    .line 2276
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 2277
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2278
    if-eqz v1, :cond_0

    .line 2279
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2280
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    .line 2274
    :cond_6
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    .line 2286
    .end local v3    # "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_8

    .line 2287
    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2288
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2289
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2290
    move-object p1, v1

    goto :goto_0

    .line 2293
    :cond_8
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v5, :cond_9

    .line 2294
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 2295
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_a

    move-object v1, v4

    .line 2297
    :cond_9
    :goto_3
    if-eqz v0, :cond_0

    .line 2298
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2299
    if-eqz v1, :cond_0

    .line 2300
    iput-boolean v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2301
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    .line 2295
    :cond_a
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3
.end method

.method static checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 2405
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "tp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2406
    .local v4, "tr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "tb":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2407
    .local v2, "tn":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_1

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eq v6, p0, :cond_1

    .line 2423
    :cond_0
    :goto_0
    return v5

    .line 2409
    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_0

    .line 2411
    :cond_2
    if-eqz v3, :cond_3

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_3

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p0, v6, :cond_0

    .line 2413
    :cond_3
    if-eqz v1, :cond_4

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_0

    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-gt v6, v7, :cond_0

    .line 2415
    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_0

    iget v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-lt v6, v7, :cond_0

    .line 2417
    :cond_5
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    iget-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v6, :cond_0

    .line 2419
    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2421
    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2423
    :cond_8
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private final contendedLock()V
    .locals 7

    .prologue
    .line 1996
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v6, 0x0

    .line 1998
    .local v6, "waiting":Z
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .local v4, "s":I
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_2

    .line 1999
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    if-eqz v6, :cond_1

    .line 2001
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .line 2002
    :cond_1
    return-void

    .line 2005
    :cond_2
    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_3

    .line 2006
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v5, v4, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2007
    const/4 v6, 0x1

    .line 2008
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_0

    .line 2011
    :cond_3
    if-eqz v6, :cond_0

    .line 2012
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final lockRoot()V
    .locals 6

    .prologue
    .line 1981
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    .line 1983
    :cond_0
    return-void
.end method

.method static rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2221
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1

    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 2222
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 2223
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2224
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_2

    .line 2225
    move-object p0, v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2230
    :goto_0
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2231
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2233
    .end local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    return-object p0

    .line 2226
    .restart local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_3

    .line 2227
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    .line 2229
    :cond_3
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0
.end method

.method static rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2239
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 2240
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 2241
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2242
    :cond_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_2

    .line 2243
    move-object p0, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2248
    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2249
    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2251
    .end local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    return-object p0

    .line 2244
    .restart local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_3

    .line 2245
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    .line 2247
    :cond_3
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0
.end method

.method private final unlockRoot()V
    .locals 1

    .prologue
    .line 1989
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .line 1990
    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 21
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2022
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    if-eqz p2, :cond_8

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    .local v16, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v16, :cond_8

    .line 2025
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .local v8, "s":I
    and-int/lit8 v4, v8, 0x3

    if-eqz v4, :cond_1

    .line 2026
    move-object/from16 v0, v16

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    if-eqz v17, :cond_7

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2050
    .end local v8    # "s":I
    .end local v16    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "ek":Ljava/lang/Object;, "TK;"
    :cond_0
    :goto_1
    return-object v16

    .line 2030
    .restart local v8    # "s":I
    .restart local v16    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v9, v8, 0x4

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2034
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v19, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v19, :cond_4

    const/16 v18, 0x0

    .line 2040
    .local v18, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    :goto_2
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .local v14, "ls":I
    add-int/lit8 v15, v14, -0x4

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2043
    const/4 v4, 0x6

    if-ne v14, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object/from16 v20, v0

    .local v20, "w":Ljava/lang/Thread;
    if-eqz v20, :cond_3

    .line 2044
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .end local v20    # "w":Ljava/lang/Thread;
    :cond_3
    move-object/from16 v16, v18

    .line 2046
    goto :goto_1

    .line 2034
    .end local v14    # "ls":I
    .end local v18    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    goto :goto_2

    .line 2038
    .end local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v4

    .line 2040
    :cond_5
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .restart local v14    # "ls":I
    add-int/lit8 v15, v14, -0x4

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2043
    const/4 v5, 0x6

    if-ne v14, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object/from16 v20, v0

    .restart local v20    # "w":Ljava/lang/Thread;
    if-eqz v20, :cond_6

    .line 2044
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2045
    .end local v20    # "w":Ljava/lang/Thread;
    :cond_6
    throw v4

    .line 2023
    .end local v14    # "ls":I
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 2050
    .end local v8    # "s":I
    .end local v16    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    const/16 v16, 0x0

    goto :goto_1
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 13
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2058
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    .line 2059
    .local v7, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2061
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    if-nez v8, :cond_1

    .line 2062
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2105
    :goto_0
    sget-boolean v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2065
    :cond_1
    iget v9, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .local v9, "ph":I
    if-le v9, p1, :cond_4

    .line 2066
    const/4 v6, -0x1

    .line 2082
    .local v6, "dir":I
    :cond_2
    :goto_1
    move-object v5, v8

    .line 2083
    .local v5, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gez v6, :cond_d

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2
    if-nez v8, :cond_0

    .line 2084
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2085
    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .local v0, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2086
    if-eqz v4, :cond_3

    .line 2087
    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2088
    :cond_3
    if-gez v6, :cond_e

    .line 2089
    iput-object v0, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2092
    :goto_3
    iget-boolean v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v1, :cond_f

    .line 2093
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_0

    .line 2067
    .end local v0    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "dir":I
    :cond_4
    if-ge v9, p1, :cond_5

    .line 2068
    const/4 v6, 0x1

    .restart local v6    # "dir":I
    goto :goto_1

    .line 2069
    .end local v6    # "dir":I
    :cond_5
    iget-object v10, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .local v10, "pk":Ljava/lang/Object;, "TK;"
    if-eq v10, p2, :cond_6

    if-eqz v10, :cond_8

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    move-object v12, v8

    .line 2106
    .end local v9    # "ph":I
    .end local v10    # "pk":Ljava/lang/Object;, "TK;"
    :cond_7
    :goto_4
    return-object v12

    .line 2071
    .restart local v9    # "ph":I
    .restart local v10    # "pk":Ljava/lang/Object;, "TK;"
    :cond_8
    if-nez v7, :cond_9

    invoke-static {p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_a

    :cond_9
    invoke-static {v7, p2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .restart local v6    # "dir":I
    if-nez v6, :cond_2

    .line 2074
    .end local v6    # "dir":I
    :cond_a
    iget-object v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_b

    .line 2075
    const/4 v6, 0x1

    .restart local v6    # "dir":I
    goto :goto_1

    .line 2076
    .end local v6    # "dir":I
    :cond_b
    iget-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v11, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v11, :cond_c

    invoke-virtual {v11, p1, p2, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v12

    .local v12, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v12, :cond_7

    .line 2078
    .end local v12    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    const/4 v6, -0x1

    .restart local v6    # "dir":I
    goto :goto_1

    .line 2083
    .end local v10    # "pk":Ljava/lang/Object;, "TK;"
    .end local v11    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    .line 2091
    .restart local v0    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    iput-object v0, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    .line 2095
    :cond_f
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2097
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v1

    .line 2106
    .end local v0    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "dir":I
    .end local v9    # "ph":I
    :cond_10
    const/4 v12, 0x0

    goto :goto_4
.end method

.method final removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2120
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2121
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2123
    .local v5, "pred":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v5, :cond_1

    .line 2124
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2127
    :goto_0
    if-eqz v1, :cond_0

    .line 2128
    iput-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2129
    :cond_0
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_2

    .line 2130
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2131
    const/4 v13, 0x1

    .line 2212
    :goto_1
    return v13

    .line 2126
    :cond_1
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    .line 2133
    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v6, :cond_3

    iget-object v13, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v13, :cond_3

    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v8, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_3

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_4

    .line 2135
    .end local v8    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    const/4 v13, 0x1

    goto :goto_1

    .line 2136
    .restart local v8    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2139
    :try_start_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2140
    .local v2, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2141
    .local v4, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_12

    if-eqz v4, :cond_12

    .line 2142
    move-object v9, v4

    .line 2143
    .local v9, "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_2
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v10, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_5

    .line 2144
    move-object v9, v10

    goto :goto_2

    .line 2145
    :cond_5
    iget-boolean v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .local v0, "c":Z
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2146
    iget-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2147
    .local v12, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2148
    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v9, v4, :cond_c

    .line 2149
    iput-object v9, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2150
    iput-object p1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2163
    :cond_6
    :goto_3
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2164
    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_7

    .line 2165
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2166
    :cond_7
    iput-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_8

    .line 2167
    iput-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2168
    :cond_8
    iput-object v3, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_f

    .line 2169
    move-object v6, v9

    .line 2174
    :goto_4
    if-eqz v12, :cond_11

    .line 2175
    move-object v7, v12

    .line 2185
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5
    if-eq v7, p1, :cond_9

    .line 2186
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2187
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v3, :cond_15

    .line 2188
    move-object v6, v7

    .line 2193
    :goto_6
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2196
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v13, :cond_17

    move-object v13, v6

    :goto_7
    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2198
    if-ne p1, v7, :cond_b

    .line 2200
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_b

    .line 2201
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_18

    .line 2202
    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2205
    :cond_a
    :goto_8
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2209
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2211
    sget-boolean v13, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->$assertionsDisabled:Z

    if-nez v13, :cond_19

    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v13

    if-nez v13, :cond_19

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 2153
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v0    # "c":Z
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    :try_start_1
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2154
    .local v11, "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v11, :cond_d

    .line 2155
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v9, v13, :cond_e

    .line 2156
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2160
    :cond_d
    :goto_9
    iput-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v4, :cond_6

    .line 2161
    iput-object v9, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2209
    .end local v0    # "c":Z
    .end local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v13

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v13

    .line 2158
    .restart local v0    # "c":Z
    .restart local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    :try_start_2
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_9

    .line 2170
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_10

    .line 2171
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    .line 2173
    :cond_10
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    .line 2177
    :cond_11
    move-object v7, p1

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    .line 2179
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_12
    if-eqz v2, :cond_13

    .line 2180
    move-object v7, v2

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    .line 2181
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    if-eqz v4, :cond_14

    .line 2182
    move-object v7, v4

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    .line 2184
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_14
    move-object v7, p1

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    .line 2189
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_15
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_16

    .line 2190
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_6

    .line 2192
    :cond_16
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_6

    .line 2196
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_17
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    goto :goto_7

    .line 2203
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_18
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_a

    .line 2204
    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 2212
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_1
.end method
