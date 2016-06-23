.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 109
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 112
    array-length v0, p1

    .line 114
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 116
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 128
    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    .line 131
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 132
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 133
    return-void

    .line 114
    .end local v1    # "newArray":[Ljava/lang/Object;
    .end local v2    # "stackLen":I
    :cond_0
    const/16 v3, 0x100

    goto :goto_0

    .line 128
    .restart local v1    # "newArray":[Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .prologue
    .line 211
    if-ne p3, p1, :cond_0

    .line 212
    add-int/lit8 p3, p3, 0x1

    .line 213
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    .line 215
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 218
    .local v3, "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v0, p1

    .line 219
    .local v0, "left":I
    move v4, p3

    .line 226
    .local v4, "right":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 227
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 228
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 229
    move v4, v1

    goto :goto_1

    .line 231
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 242
    .end local v1    # "mid":I
    :cond_2
    sub-int v2, p3, v0

    .line 244
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 248
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :goto_2
    aput-object v3, p0, v0

    .line 213
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 245
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 246
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_2

    .line 252
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v4    # "right":I
    :cond_3
    return-void

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 281
    add-int/lit8 v0, p1, 0x1

    .line 282
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 295
    :goto_0
    return v2

    .line 286
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v0, v1

    .line 287
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_1
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 295
    :cond_2
    sub-int v2, v0, p1

    goto :goto_0

    .line 291
    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 849
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 851
    move v1, p1

    .line 852
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 853
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 854
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 855
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 856
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 857
    add-int/lit8 v1, v1, 0x1

    .line 859
    if-gez v1, :cond_1

    .line 860
    move v1, p1

    .line 865
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 866
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 868
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 862
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 475
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 477
    sub-int v2, p3, p4

    .line 478
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 479
    move v0, v3

    .line 480
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 481
    if-gtz v3, :cond_0

    .line 482
    move v3, v2

    goto :goto_0

    .line 484
    :cond_1
    if-le v3, v2, :cond_2

    .line 485
    move v3, v2

    .line 488
    :cond_2
    add-int/2addr v0, p4

    .line 489
    add-int/2addr v3, p4

    .line 514
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 515
    :goto_2
    if-ge v0, v3, :cond_8

    .line 516
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 518
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7

    .line 519
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 492
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 493
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    .line 494
    move v0, v3

    .line 495
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 496
    if-gtz v3, :cond_4

    .line 497
    move v3, v2

    goto :goto_3

    .line 499
    :cond_5
    if-le v3, v2, :cond_6

    .line 500
    move v3, v2

    .line 503
    :cond_6
    move v4, v0

    .line 504
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 505
    sub-int v3, p4, v4

    goto :goto_1

    .line 521
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_7
    move v3, v1

    goto :goto_2

    .line 524
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 544
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 545
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 547
    add-int/lit8 v2, p4, 0x1

    .line 548
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 549
    move v0, v3

    .line 550
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 551
    if-gtz v3, :cond_0

    .line 552
    move v3, v2

    goto :goto_0

    .line 554
    :cond_1
    if-le v3, v2, :cond_2

    .line 555
    move v3, v2

    .line 558
    :cond_2
    move v4, v0

    .line 559
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 560
    sub-int v3, p4, v4

    .line 584
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 585
    :goto_2
    if-ge v0, v3, :cond_8

    .line 586
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 588
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7

    .line 589
    move v3, v1

    goto :goto_2

    .line 563
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    sub-int v2, p3, p4

    .line 564
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 565
    move v0, v3

    .line 566
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 567
    if-gtz v3, :cond_4

    .line 568
    move v3, v2

    goto :goto_3

    .line 570
    :cond_5
    if-le v3, v2, :cond_6

    .line 571
    move v3, v2

    .line 574
    :cond_6
    add-int/2addr v0, p4

    .line 575
    add-int/2addr v3, p4

    goto :goto_1

    .line 591
    .restart local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 594
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 405
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 406
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 407
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    .line 408
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    .line 417
    .local v4, "len2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    .line 418
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_0

    .line 419
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 420
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 422
    :cond_0
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 428
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 430
    .local v2, "k":I
    add-int/2addr v0, v2

    .line 431
    sub-int/2addr v3, v2

    .line 432
    if-nez v3, :cond_2

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 442
    if-eqz v4, :cond_1

    .line 446
    if-gt v3, v4, :cond_3

    .line 447
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 365
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 366
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 367
    .local v0, "n":I
    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 368
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 369
    add-int/lit8 v0, v0, -0x1

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 372
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 377
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 384
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 385
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 386
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 387
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 390
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 736
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 737
    .local v12, "tmp":[Ljava/lang/Object;
    const/4 v13, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    add-int v13, p1, p2

    add-int/lit8 v5, v13, -0x1

    .line 740
    .local v5, "cursor1":I
    add-int/lit8 v7, p4, -0x1

    .line 741
    .local v7, "cursor2":I
    add-int v13, p3, p4

    add-int/lit8 v9, v13, -0x1

    .line 744
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 745
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    .line 746
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 838
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_0
    return-void

    .line 749
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 750
    sub-int v9, v10, p2

    .line 751
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    .line 752
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    .line 757
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v11, "minGallop":I
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 760
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_1
    const/4 v3, 0x0

    .line 761
    .local v3, "count1":I
    const/4 v4, 0x0

    .line 769
    .local v4, "count2":I
    :cond_2
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    aget-object v14, v2, v5

    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_5

    .line 770
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 771
    add-int/lit8 v3, v3, 0x1

    .line 772
    const/4 v4, 0x0

    .line 773
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 822
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_3
    :goto_2
    const/4 v13, 0x1

    if-ge v11, v13, :cond_4

    const/4 v11, 0x1

    .end local v11    # "minGallop":I
    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 824
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_d

    .line 826
    sub-int v9, v9, p2

    .line 827
    sub-int v5, v5, p2

    .line 828
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    .line 776
    .restart local v11    # "minGallop":I
    :cond_5
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 777
    add-int/lit8 v4, v4, 0x1

    .line 778
    const/4 v3, 0x0

    .line 779
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_6

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 780
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_2

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_6
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 782
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_3
    or-int v13, v3, v4

    if-lt v13, v11, :cond_2

    .line 791
    :goto_4
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v2, v0, v1, v14}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v3, p2, v13

    .line 792
    if-eqz v3, :cond_7

    .line 793
    sub-int/2addr v9, v3

    .line 794
    sub-int/2addr v5, v3

    .line 795
    sub-int p2, p2, v3

    .line 796
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v2, v13, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    if-eqz p2, :cond_3

    .line 800
    :cond_7
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 801
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_8

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 802
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_2

    .line 804
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_8
    aget-object v13, v2, v5

    check-cast v13, Ljava/lang/Comparable;

    const/4 v14, 0x0

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v13, v12, v14, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v4, p4, v13

    .line 805
    if-eqz v4, :cond_10

    .line 806
    sub-int v9, v10, v4

    .line 807
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    .line 808
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    .line 809
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v12, v13, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    const/4 v13, 0x1

    move/from16 v0, p4

    if-le v0, v13, :cond_3

    .line 813
    :goto_5
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 814
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 815
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_2

    .line 816
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_9
    add-int/lit8 v11, v11, -0x1

    .line 817
    const/4 v13, 0x7

    if-lt v3, v13, :cond_b

    const/4 v13, 0x1

    move v14, v13

    :goto_6
    const/4 v13, 0x7

    if-lt v4, v13, :cond_c

    const/4 v13, 0x1

    :goto_7
    or-int/2addr v13, v14

    if-nez v13, :cond_f

    .line 818
    if-gez v11, :cond_a

    .line 819
    const/4 v11, 0x0

    .line 820
    :cond_a
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 821
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    .line 817
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_b
    const/4 v13, 0x0

    move v14, v13

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    .line 830
    .end local v6    # "cursor1":I
    .end local v10    # "dest":I
    .end local v11    # "minGallop":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_d
    if-nez p4, :cond_e

    .line 831
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Comparison method violates its general contract!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 836
    :cond_e
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_f
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_4

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_10
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_5

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_11
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 14
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 618
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 619
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 620
    .local v11, "tmp":[Ljava/lang/Object;
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, p1, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, "cursor1":I
    move/from16 v6, p3

    .line 624
    .local v6, "cursor2":I
    move v8, p1

    .line 627
    .local v8, "dest":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 628
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    .line 629
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 717
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_0
    return-void

    .line 632
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 633
    move/from16 v0, p4

    invoke-static {v1, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    add-int v12, v9, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 635
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_0

    .line 638
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_1
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v10, "minGallop":I
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 641
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_1
    const/4 v2, 0x0

    .line 642
    .local v2, "count1":I
    const/4 v3, 0x0

    .line 650
    .local v3, "count2":I
    :cond_2
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_5

    .line 651
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 652
    add-int/lit8 v3, v3, 0x1

    .line 653
    const/4 v2, 0x0

    .line 654
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 703
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-ge v10, v12, :cond_4

    const/4 v10, 0x1

    .end local v10    # "minGallop":I
    :cond_4
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 705
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    .line 707
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    goto :goto_0

    .line 657
    .restart local v10    # "minGallop":I
    :cond_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 658
    add-int/lit8 v2, v2, 0x1

    .line 659
    const/4 v3, 0x0

    .line 660
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 661
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_2

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_6
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 663
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_3
    or-int v12, v2, v3

    if-lt v12, v10, :cond_2

    .line 672
    :goto_4
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 673
    if-eqz v2, :cond_7

    .line 674
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/2addr v8, v2

    .line 676
    add-int/2addr v4, v2

    .line 677
    sub-int p2, p2, v2

    .line 678
    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_3

    .line 681
    :cond_7
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 682
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 683
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_2

    .line 685
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_8
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 686
    if-eqz v3, :cond_10

    .line 687
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    add-int v8, v9, v3

    .line 689
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    .line 690
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    .line 691
    if-eqz p4, :cond_3

    .line 694
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 695
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 696
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_2

    .line 697
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 698
    const/4 v12, 0x7

    if-lt v2, v12, :cond_b

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const/4 v12, 0x7

    if-lt v3, v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    or-int/2addr v12, v13

    if-nez v12, :cond_f

    .line 699
    if-gez v10, :cond_a

    .line 700
    const/4 v10, 0x0

    .line 701
    :cond_a
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 702
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    .line 698
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_b
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    .line 709
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .end local v10    # "minGallop":I
    .restart local v4    # "cursor1":I
    .restart local v8    # "dest":I
    :cond_d
    if-nez p2, :cond_e

    .line 710
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 715
    :cond_e
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_f
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_4

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_10
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_5

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_11
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 335
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 336
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 349
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 350
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 351
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 306
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 307
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 308
    aget-object v2, p0, v1

    .line 309
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 310
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .line 311
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_0

    .line 312
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 142
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 143
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 146
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 147
    sub-int v3, p2, p1

    .line 148
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_0

    .line 189
    :goto_0
    return-void

    .line 152
    :cond_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1

    .line 153
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 154
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    .line 163
    .end local v1    # "initRunLen":I
    :cond_1
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 164
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 167
    .local v2, "minRun":I
    :cond_2
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 170
    .local v4, "runLen":I
    if-ge v4, v2, :cond_3

    .line 171
    if-gt v3, v2, :cond_4

    move v0, v3

    .line 172
    .local v0, "force":I
    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 173
    move v4, v0

    .line 177
    .end local v0    # "force":I
    :cond_3
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 178
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 181
    add-int/2addr p1, v4

    .line 182
    sub-int/2addr v3, v4

    .line 183
    if-nez v3, :cond_2

    .line 187
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 171
    goto :goto_1
.end method
