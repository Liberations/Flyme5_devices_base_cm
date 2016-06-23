.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 155
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 169
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 5
    .param p0, "array"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 189
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 190
    move v1, p1

    .line 191
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 193
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 194
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 195
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 197
    .local v3, "midVal":B
    if-ge v3, p3, :cond_0

    .line 198
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    if-le v3, p3, :cond_2

    .line 200
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 205
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 219
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 5
    .param p0, "array"    # [C
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # C

    .prologue
    .line 239
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 240
    move v1, p1

    .line 241
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 243
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 244
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 245
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 247
    .local v3, "midVal":C
    if-ge v3, p3, :cond_0

    .line 248
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    if-le v3, p3, :cond_2

    .line 250
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 255
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([DD)I
    .locals 3
    .param p0, "array"    # [D
    .param p1, "value"    # D

    .prologue
    .line 269
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 13
    .param p0, "array"    # [D
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # D

    .prologue
    .line 289
    array-length v3, p0

    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 290
    move v1, p1

    .line 291
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 293
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_5

    .line 294
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 295
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 297
    .local v4, "midVal":D
    cmpg-double v3, v4, p3

    if-gez v3, :cond_0

    .line 298
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 299
    :cond_0
    cmpl-double v3, v4, p3

    if-lez v3, :cond_1

    .line 300
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 301
    :cond_1
    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-eqz v3, :cond_3

    cmpl-double v3, v4, p3

    if-nez v3, :cond_3

    .line 316
    .end local v2    # "mid":I
    .end local v4    # "midVal":D
    :cond_2
    :goto_1
    return v2

    .line 304
    .restart local v2    # "mid":I
    .restart local v4    # "midVal":D
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 305
    .local v6, "midValBits":J
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 307
    .local v8, "valueBits":J
    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    .line 308
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 309
    :cond_4
    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 310
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 316
    .end local v2    # "mid":I
    .end local v4    # "midVal":D
    .end local v6    # "midValBits":J
    .end local v8    # "valueBits":J
    :cond_5
    xor-int/lit8 v2, v1, -0x1

    goto :goto_1
.end method

.method public static binarySearch([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    .prologue
    .line 330
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 7
    .param p0, "array"    # [F
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # F

    .prologue
    .line 350
    array-length v6, p0

    invoke-static {p1, p2, v6}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 351
    move v1, p1

    .line 352
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 354
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_5

    .line 355
    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    .line 356
    .local v2, "mid":I
    aget v3, p0, v2

    .line 358
    .local v3, "midVal":F
    cmpg-float v6, v3, p3

    if-gez v6, :cond_0

    .line 359
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    cmpl-float v6, v3, p3

    if-lez v6, :cond_1

    .line 361
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_3

    cmpl-float v6, v3, p3

    if-nez v6, :cond_3

    .line 377
    .end local v2    # "mid":I
    .end local v3    # "midVal":F
    :cond_2
    :goto_1
    return v2

    .line 365
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":F
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 366
    .local v4, "midValBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 368
    .local v5, "valueBits":I
    if-ge v4, v5, :cond_4

    .line 369
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 370
    :cond_4
    if-le v4, v5, :cond_2

    .line 371
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 377
    .end local v2    # "mid":I
    .end local v3    # "midVal":F
    .end local v4    # "midValBits":I
    .end local v5    # "valueBits":I
    :cond_5
    xor-int/lit8 v2, v1, -0x1

    goto :goto_1
.end method

.method public static binarySearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .prologue
    .line 411
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 412
    move v1, p1

    .line 413
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 415
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 416
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 417
    .local v2, "mid":I
    aget v3, p0, v2

    .line 419
    .local v3, "midVal":I
    if-ge v3, p3, :cond_0

    .line 420
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 421
    :cond_0
    if-le v3, p3, :cond_2

    .line 422
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 427
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([JIIJ)I
    .locals 7
    .param p0, "array"    # [J
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # J

    .prologue
    .line 461
    array-length v3, p0

    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 462
    move v1, p1

    .line 463
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 465
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 466
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 467
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 469
    .local v4, "midVal":J
    cmp-long v3, v4, p3

    if-gez v3, :cond_0

    .line 470
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 471
    :cond_0
    cmp-long v3, v4, p3

    if-lez v3, :cond_2

    .line 472
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 477
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 441
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 517
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 518
    move v1, p1

    .line 519
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 521
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 522
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 524
    .local v2, "mid":I
    aget-object v4, p0, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 526
    .local v3, "midValCmp":I
    if-gez v3, :cond_0

    .line 527
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 528
    :cond_0
    if-lez v3, :cond_2

    .line 529
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 534
    .end local v2    # "mid":I
    .end local v3    # "midValCmp":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_1

    .line 580
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v2

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 583
    :cond_1
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 584
    move v1, p1

    .line 585
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 587
    .local v0, "hi":I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 588
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 589
    .local v2, "mid":I
    aget-object v4, p0, v2

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 591
    .local v3, "midValCmp":I
    if-gez v3, :cond_2

    .line 592
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 593
    :cond_2
    if-lez v3, :cond_0

    .line 594
    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 599
    .end local v2    # "mid":I
    .end local v3    # "midValCmp":I
    :cond_3
    xor-int/lit8 v2, v1, -0x1

    goto :goto_0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 494
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 5
    .param p0, "array"    # [S
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # S

    .prologue
    .line 633
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 634
    move v1, p1

    .line 635
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 637
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 638
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 639
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 641
    .local v3, "midVal":S
    if-ge v3, p3, :cond_0

    .line 642
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 643
    :cond_0
    if-le v3, p3, :cond_2

    .line 644
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 649
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static binarySearch([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 613
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 653
    if-le p0, p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 656
    :cond_0
    if-ltz p0, :cond_1

    if-le p1, p2, :cond_2

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 659
    :cond_2
    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1718
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 1719
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 1722
    :cond_1
    return-void
.end method

.method public static checkStartAndEnd(III)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1731
    if-ltz p1, :cond_0

    if-le p2, p0, :cond_1

    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0 || end > len. start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_1
    if-le p1, p2, :cond_2

    .line 1736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_2
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 2
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .prologue
    .line 2452
    if-gez p1, :cond_0

    .line 2453
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2455
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 2
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .prologue
    .line 2471
    if-gez p1, :cond_0

    .line 2472
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2474
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 2
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .prologue
    .line 2490
    if-gez p1, :cond_0

    .line 2491
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 2
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .prologue
    .line 2509
    if-gez p1, :cond_0

    .line 2510
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2512
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 2
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .prologue
    .line 2528
    if-gez p1, :cond_0

    .line 2529
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2531
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 2
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .prologue
    .line 2547
    if-gez p1, :cond_0

    .line 2548
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 2585
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "original == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2588
    :cond_0
    if-gez p1, :cond_1

    .line 2589
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2610
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-gez p1, :cond_0

    .line 2611
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2613
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 2
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .prologue
    .line 2566
    if-gez p1, :cond_0

    .line 2567
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 2
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .prologue
    .line 2433
    if-gez p1, :cond_0

    .line 2434
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2436
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2662
    if-le p1, p2, :cond_0

    .line 2663
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2665
    :cond_0
    array-length v1, p0

    .line 2666
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2667
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2669
    :cond_2
    sub-int v3, p2, p1

    .line 2670
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2671
    .local v0, "copyLength":I
    new-array v2, v3, [B

    .line 2672
    .local v2, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2673
    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .locals 5
    .param p0, "original"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2692
    if-le p1, p2, :cond_0

    .line 2693
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2695
    :cond_0
    array-length v1, p0

    .line 2696
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2697
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2699
    :cond_2
    sub-int v3, p2, p1

    .line 2700
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2701
    .local v0, "copyLength":I
    new-array v2, v3, [C

    .line 2702
    .local v2, "result":[C
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 2703
    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .locals 5
    .param p0, "original"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2722
    if-le p1, p2, :cond_0

    .line 2723
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2725
    :cond_0
    array-length v1, p0

    .line 2726
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2727
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2729
    :cond_2
    sub-int v3, p2, p1

    .line 2730
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2731
    .local v0, "copyLength":I
    new-array v2, v3, [D

    .line 2732
    .local v2, "result":[D
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 2733
    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2752
    if-le p1, p2, :cond_0

    .line 2753
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2755
    :cond_0
    array-length v1, p0

    .line 2756
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2757
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2759
    :cond_2
    sub-int v3, p2, p1

    .line 2760
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2761
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 2762
    .local v2, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2763
    return-object v2
.end method

.method public static copyOfRange([III)[I
    .locals 5
    .param p0, "original"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2782
    if-le p1, p2, :cond_0

    .line 2783
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2785
    :cond_0
    array-length v1, p0

    .line 2786
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2787
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2789
    :cond_2
    sub-int v3, p2, p1

    .line 2790
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2791
    .local v0, "copyLength":I
    new-array v2, v3, [I

    .line 2792
    .local v2, "result":[I
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2793
    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .locals 5
    .param p0, "original"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2812
    if-le p1, p2, :cond_0

    .line 2813
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2815
    :cond_0
    array-length v1, p0

    .line 2816
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2817
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2819
    :cond_2
    sub-int v3, p2, p1

    .line 2820
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2821
    .local v0, "copyLength":I
    new-array v2, v3, [J

    .line 2822
    .local v2, "result":[J
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 2823
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 2873
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 2874
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 2875
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2877
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2878
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2880
    :cond_2
    sub-int v3, p2, p1

    .line 2881
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2882
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 2883
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2884
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2905
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-le p1, p2, :cond_0

    .line 2906
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2908
    :cond_0
    array-length v1, p0

    .line 2909
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2910
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2912
    :cond_2
    sub-int v3, p2, p1

    .line 2913
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2914
    .local v0, "copyLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 2915
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2916
    return-object v2
.end method

.method public static copyOfRange([SII)[S
    .locals 5
    .param p0, "original"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2842
    if-le p1, p2, :cond_0

    .line 2843
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2845
    :cond_0
    array-length v1, p0

    .line 2846
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2847
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2849
    :cond_2
    sub-int v3, p2, p1

    .line 2850
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2851
    .local v0, "copyLength":I
    new-array v2, v3, [S

    .line 2852
    .local v2, "result":[S
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 2853
    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5
    .param p0, "original"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2632
    if-le p1, p2, :cond_0

    .line 2633
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2635
    :cond_0
    array-length v1, p0

    .line 2636
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2637
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2639
    :cond_2
    sub-int v3, p2, p1

    .line 2640
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2641
    .local v0, "copyLength":I
    new-array v2, v3, [Z

    .line 2642
    .local v2, "result":[Z
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 2643
    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1621
    if-ne p0, p1, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return v3

    .line 1624
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 1625
    goto :goto_0

    .line 1627
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1628
    aget-object v0, p0, v2

    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1630
    .local v1, "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 1631
    goto :goto_0

    .line 1627
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1640
    if-ne p0, p1, :cond_1

    .line 1641
    const/4 v2, 0x1

    .line 1679
    .end local p0    # "e1":Ljava/lang/Object;
    .end local p1    # "e2":Ljava/lang/Object;
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 1644
    .end local v0    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1648
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1649
    .restart local v0    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1651
    .restart local v1    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_0

    .line 1655
    if-nez v0, :cond_2

    .line 1656
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1662
    :cond_2
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1663
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1664
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_4

    .line 1665
    check-cast p0, [I

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [I

    check-cast p1, [I

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    .line 1666
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    .line 1667
    check-cast p0, [C

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [C

    check-cast p1, [C

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_0

    .line 1668
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    .line 1669
    check-cast p0, [Z

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_0

    .line 1670
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    .line 1671
    check-cast p0, [B

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [B

    check-cast p1, [B

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    .line 1672
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    .line 1673
    check-cast p0, [J

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [J

    check-cast p1, [J

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_0

    .line 1674
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_8
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    .line 1675
    check-cast p0, [F

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [F

    check-cast p1, [F

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_0

    .line 1676
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_a

    .line 1677
    check-cast p0, [D

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [D

    check-cast p1, [D

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    .line 1679
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_a
    check-cast p0, [S

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p0, [S

    check-cast p1, [S

    .end local p1    # "e2":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 7
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1296
    if-nez p0, :cond_1

    .line 1297
    const/4 v3, 0x0

    .line 1304
    :cond_0
    return v3

    .line 1299
    :cond_1
    const/4 v3, 0x1

    .line 1300
    .local v3, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 1301
    .local v1, "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v2

    .line 1302
    .local v2, "elementHashCode":I
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1300
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    .prologue
    .line 1309
    if-nez p0, :cond_0

    .line 1310
    const/4 v1, 0x0

    .line 1339
    .end local p0    # "element":Ljava/lang/Object;
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    .line 1313
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1315
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 1316
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1322
    :cond_1
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1323
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 1324
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1325
    check-cast p0, [I

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    .line 1326
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1327
    check-cast p0, [C

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_0

    .line 1328
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1329
    check-cast p0, [Z

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_0

    .line 1330
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1331
    check-cast p0, [B

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_0

    .line 1332
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1333
    check-cast p0, [J

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_0

    .line 1334
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 1335
    check-cast p0, [F

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto :goto_0

    .line 1336
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    .line 1337
    check-cast p0, [D

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto :goto_0

    .line 1339
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_9
    check-cast p0, [S

    .end local p0    # "element":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto :goto_0
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2302
    if-nez p0, :cond_0

    .line 2303
    const-string v1, "null"

    .line 2308
    :goto_0
    return-object v1

    .line 2306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2307
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "origArrays"    # [Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 2327
    if-nez p0, :cond_0

    .line 2328
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    :goto_0
    return-void

    .line 2332
    :cond_0
    const/16 v6, 0x5b

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2334
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_e

    .line 2335
    if-eqz v3, :cond_1

    .line 2336
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    :cond_1
    aget-object v0, p0, v3

    .line 2340
    .local v0, "elem":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 2342
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    .end local v0    # "elem":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2345
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2346
    .local v1, "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2350
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 2351
    .local v2, "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2353
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2354
    check-cast v0, [Z

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2355
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2356
    check-cast v0, [B

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2357
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_4
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2358
    check-cast v0, [C

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2359
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2360
    check-cast v0, [D

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2361
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_6
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2362
    check-cast v0, [F

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2363
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_7
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2364
    check-cast v0, [I

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2365
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2366
    check-cast v0, [J

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2367
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_9
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2368
    check-cast v0, [S

    .end local v0    # "elem":Ljava/lang/Object;
    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2371
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_a
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2376
    :cond_b
    invoke-static {p1, v0}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2377
    const-string v6, "[...]"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2379
    :cond_c
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "elem":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 2380
    .local v4, "newArray":[Ljava/lang/Object;
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    .line 2381
    .local v5, "newOrigArrays":[Ljava/lang/Object;
    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2383
    array-length v6, p1

    aput-object v4, v5, v6

    .line 2385
    invoke-static {v4, v5, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    .line 2389
    .end local v2    # "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "newArray":[Ljava/lang/Object;
    .end local v5    # "newOrigArrays":[Ljava/lang/Object;
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_d
    aget-object v6, p0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2393
    .end local v0    # "elem":Ljava/lang/Object;
    .end local v1    # "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    const/16 v6, 0x5d

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "origArrays"    # [Ljava/lang/Object;
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 2409
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 2417
    :cond_0
    :goto_0
    return v4

    .line 2412
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2413
    .local v1, "element":Ljava/lang/Object;
    if-ne v1, p1, :cond_2

    .line 2414
    const/4 v4, 0x1

    goto :goto_0

    .line 2412
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static equals([B[B)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1355
    if-ne p0, p1, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v1

    .line 1358
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1359
    goto :goto_0

    .line 1361
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1362
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1363
    goto :goto_0

    .line 1361
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([C[C)Z
    .locals 5
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1407
    if-ne p0, p1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v1

    .line 1410
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1411
    goto :goto_0

    .line 1413
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1414
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1415
    goto :goto_0

    .line 1413
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1516
    if-ne p0, p1, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return v1

    .line 1519
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1520
    goto :goto_0

    .line 1522
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1523
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 1525
    goto :goto_0

    .line 1522
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1487
    if-ne p0, p1, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return v1

    .line 1490
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1491
    goto :goto_0

    .line 1493
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1494
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1496
    goto :goto_0

    .line 1493
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1433
    if-ne p0, p1, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return v1

    .line 1436
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1437
    goto :goto_0

    .line 1439
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1440
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1441
    goto :goto_0

    .line 1439
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([J[J)Z
    .locals 8
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1459
    if-ne p0, p1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return v1

    .line 1462
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1463
    goto :goto_0

    .line 1465
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1466
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 1467
    goto :goto_0

    .line 1465
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1569
    if-ne p0, p1, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v3

    .line 1572
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 1573
    goto :goto_0

    .line 1575
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1576
    aget-object v0, p0, v2

    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1577
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_5

    if-nez v1, :cond_6

    .line 1575
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1577
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_6
    move v3, v4

    .line 1578
    goto :goto_0
.end method

.method public static equals([S[S)Z
    .locals 5
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1381
    if-ne p0, p1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v1

    .line 1384
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1385
    goto :goto_0

    .line 1387
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1388
    aget-short v3, p0, v0

    aget-short v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1389
    goto :goto_0

    .line 1387
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 5
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1543
    if-ne p0, p1, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return v1

    .line 1546
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1547
    goto :goto_0

    .line 1549
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1550
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1551
    goto :goto_0

    .line 1549
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 671
    aput-byte p1, p0, v0

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    return-void
.end method

.method public static fill([BIIB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # B

    .prologue
    .line 692
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 693
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 694
    aput-byte p3, p0, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 745
    aput-char p1, p0, v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method public static fill([CIIC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # C

    .prologue
    .line 766
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 767
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 768
    aput-char p3, p0, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method public static fill([DD)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "value"    # D

    .prologue
    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 893
    aput-wide p1, p0, v0

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_0
    return-void
.end method

.method public static fill([DIID)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # D

    .prologue
    .line 914
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 915
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 916
    aput-wide p3, p0, v0

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_0
    return-void
.end method

.method public static fill([FF)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    .prologue
    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 856
    aput p1, p0, v0

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    return-void
.end method

.method public static fill([FIIF)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # F

    .prologue
    .line 877
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 878
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 879
    aput p3, p0, v0

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 782
    aput p1, p0, v0

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method

.method public static fill([IIII)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .prologue
    .line 803
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 804
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 805
    aput p3, p0, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .prologue
    .line 840
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 841
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 842
    aput-wide p3, p0, v0

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 819
    aput-wide p1, p0, v0

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 988
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 989
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 990
    aput-object p3, p0, v0

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 967
    aput-object p1, p0, v0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_0
    return-void
.end method

.method public static fill([SIIS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # S

    .prologue
    .line 729
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 730
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 731
    aput-short p3, p0, v0

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 708
    aput-short p1, p0, v0

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .prologue
    .line 951
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 952
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 953
    aput-boolean p3, p0, v0

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_0
    return-void
.end method

.method public static fill([ZZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "value"    # Z

    .prologue
    .line 929
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 930
    aput-boolean p1, p0, v0

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 6
    .param p0, "array"    # [B

    .prologue
    .line 1123
    if-nez p0, :cond_1

    .line 1124
    const/4 v2, 0x0

    .line 1131
    :cond_0
    return v2

    .line 1126
    :cond_1
    const/4 v2, 0x1

    .line 1127
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 1129
    .local v1, "element":B
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 6
    .param p0, "array"    # [C

    .prologue
    .line 1095
    if-nez p0, :cond_1

    .line 1096
    const/4 v2, 0x0

    .line 1103
    :cond_0
    return v2

    .line 1098
    :cond_1
    const/4 v2, 0x1

    .line 1099
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 1101
    .local v1, "element":C
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1099
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 12
    .param p0, "array"    # [D

    .prologue
    .line 1214
    if-nez p0, :cond_1

    .line 1215
    const/4 v1, 0x0

    .line 1227
    :cond_0
    return v1

    .line 1217
    :cond_1
    const/4 v1, 0x1

    .line 1219
    .local v1, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v2, v0, v4

    .line 1220
    .local v2, "element":D
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 1225
    .local v6, "v":J
    mul-int/lit8 v8, v1, 0x1f

    const/16 v9, 0x20

    ushr-long v10, v6, v9

    xor-long/2addr v10, v6

    long-to-int v9, v10

    add-int v1, v8, v9

    .line 1219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 7
    .param p0, "array"    # [F

    .prologue
    .line 1183
    if-nez p0, :cond_1

    .line 1184
    const/4 v2, 0x0

    .line 1194
    :cond_0
    return v2

    .line 1186
    :cond_1
    const/4 v2, 0x1

    .line 1187
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 1192
    .local v1, "element":F
    mul-int/lit8 v5, v2, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v2, v5, v6

    .line 1187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 6
    .param p0, "array"    # [I

    .prologue
    .line 1039
    if-nez p0, :cond_1

    .line 1040
    const/4 v2, 0x0

    .line 1047
    :cond_0
    return v2

    .line 1042
    :cond_1
    const/4 v2, 0x1

    .line 1043
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 1045
    .local v1, "element":I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1043
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 10
    .param p0, "array"    # [J

    .prologue
    .line 1151
    if-nez p0, :cond_1

    .line 1152
    const/4 v1, 0x0

    .line 1163
    :cond_0
    return v1

    .line 1154
    :cond_1
    const/4 v1, 0x1

    .line 1155
    .local v1, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v2, v0, v4

    .line 1160
    .local v2, "elementValue":J
    mul-int/lit8 v6, v1, 0x1f

    const/16 v7, 0x20

    ushr-long v8, v2, v7

    xor-long/2addr v8, v2

    long-to-int v7, v8

    add-int v1, v6, v7

    .line 1155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 7
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1251
    if-nez p0, :cond_1

    .line 1252
    const/4 v3, 0x0

    .line 1265
    :cond_0
    return v3

    .line 1254
    :cond_1
    const/4 v3, 0x1

    .line 1255
    .local v3, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 1258
    .local v1, "element":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 1259
    const/4 v2, 0x0

    .line 1263
    .local v2, "elementHashCode":I
    :goto_1
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1261
    .end local v2    # "elementHashCode":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .restart local v2    # "elementHashCode":I
    goto :goto_1
.end method

.method public static hashCode([S)I
    .locals 6
    .param p0, "array"    # [S

    .prologue
    .line 1067
    if-nez p0, :cond_1

    .line 1068
    const/4 v2, 0x0

    .line 1075
    :cond_0
    return v2

    .line 1070
    :cond_1
    const/4 v2, 0x1

    .line 1071
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[S
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-short v1, v0, v3

    .line 1073
    .local v1, "element":S
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1071
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 7
    .param p0, "array"    # [Z

    .prologue
    .line 1011
    if-nez p0, :cond_1

    .line 1012
    const/4 v2, 0x0

    .line 1019
    :cond_0
    return v2

    .line 1014
    :cond_1
    const/4 v2, 0x1

    .line 1015
    .local v2, "hashCode":I
    move-object v0, p0

    .local v0, "arr$":[Z
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-boolean v1, v0, v3

    .line 1017
    .local v1, "element":Z
    mul-int/lit8 v6, v2, 0x1f

    if-eqz v1, :cond_2

    const/16 v5, 0x4cf

    :goto_1
    add-int v2, v6, v5

    .line 1015
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1017
    :cond_2
    const/16 v5, 0x4d5

    goto :goto_1
.end method

.method public static sort([B)V
    .locals 0
    .param p0, "array"    # [B

    .prologue
    .line 1690
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([B)V

    .line 1691
    return-void
.end method

.method public static sort([BII)V
    .locals 0
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1708
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 1709
    return-void
.end method

.method public static sort([C)V
    .locals 0
    .param p0, "array"    # [C

    .prologue
    .line 1747
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([C)V

    .line 1748
    return-void
.end method

.method public static sort([CII)V
    .locals 0
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1765
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 1766
    return-void
.end method

.method public static sort([D)V
    .locals 0
    .param p0, "array"    # [D

    .prologue
    .line 1776
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([D)V

    .line 1777
    return-void
.end method

.method public static sort([DII)V
    .locals 0
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1796
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DII)V

    .line 1797
    return-void
.end method

.method public static sort([F)V
    .locals 0
    .param p0, "array"    # [F

    .prologue
    .line 1807
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([F)V

    .line 1808
    return-void
.end method

.method public static sort([FII)V
    .locals 0
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1827
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FII)V

    .line 1828
    return-void
.end method

.method public static sort([I)V
    .locals 0
    .param p0, "array"    # [I

    .prologue
    .line 1837
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([I)V

    .line 1838
    return-void
.end method

.method public static sort([III)V
    .locals 0
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1855
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([III)V

    .line 1856
    return-void
.end method

.method public static sort([J)V
    .locals 0
    .param p0, "array"    # [J

    .prologue
    .line 1865
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([J)V

    .line 1866
    return-void
.end method

.method public static sort([JII)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1883
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JII)V

    .line 1884
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 0
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1957
    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    .line 1958
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 0
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1975
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 1976
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1998
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1999
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2010
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2011
    return-void
.end method

.method public static sort([S)V
    .locals 0
    .param p0, "array"    # [S

    .prologue
    .line 1893
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([S)V

    .line 1894
    return-void
.end method

.method public static sort([SII)V
    .locals 0
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1911
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 1912
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 2056
    if-nez p0, :cond_0

    .line 2057
    const-string v2, "null"

    .line 2070
    :goto_0
    return-object v2

    .line 2059
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2060
    const-string v2, "[]"

    goto :goto_0

    .line 2062
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2063
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2064
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2065
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2066
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2065
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2069
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2070
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [C

    .prologue
    .line 2086
    if-nez p0, :cond_0

    .line 2087
    const-string v2, "null"

    .line 2100
    :goto_0
    return-object v2

    .line 2089
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2090
    const-string v2, "[]"

    goto :goto_0

    .line 2092
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2093
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2094
    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2095
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2096
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2099
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D

    .prologue
    .line 2116
    if-nez p0, :cond_0

    .line 2117
    const-string v2, "null"

    .line 2130
    :goto_0
    return-object v2

    .line 2119
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2120
    const-string v2, "[]"

    goto :goto_0

    .line 2122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2123
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2124
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2125
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2126
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2129
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 2146
    if-nez p0, :cond_0

    .line 2147
    const-string v2, "null"

    .line 2160
    :goto_0
    return-object v2

    .line 2149
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2150
    const-string v2, "[]"

    goto :goto_0

    .line 2152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2153
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2154
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2155
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2156
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2159
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 2176
    if-nez p0, :cond_0

    .line 2177
    const-string v2, "null"

    .line 2190
    :goto_0
    return-object v2

    .line 2179
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2180
    const-string v2, "[]"

    goto :goto_0

    .line 2182
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2183
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2184
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2185
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2186
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2189
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J

    .prologue
    .line 2206
    if-nez p0, :cond_0

    .line 2207
    const-string v2, "null"

    .line 2220
    :goto_0
    return-object v2

    .line 2209
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2210
    const-string v2, "[]"

    goto :goto_0

    .line 2212
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2213
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2214
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2215
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2216
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2219
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2266
    if-nez p0, :cond_0

    .line 2267
    const-string v2, "null"

    .line 2280
    :goto_0
    return-object v2

    .line 2269
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2270
    const-string v2, "[]"

    goto :goto_0

    .line 2272
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2273
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2274
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2275
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2276
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2279
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 2236
    if-nez p0, :cond_0

    .line 2237
    const-string v2, "null"

    .line 2250
    :goto_0
    return-object v2

    .line 2239
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2240
    const-string v2, "[]"

    goto :goto_0

    .line 2242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2243
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2244
    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2245
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2246
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2249
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    .line 2026
    if-nez p0, :cond_0

    .line 2027
    const-string v2, "null"

    .line 2040
    :goto_0
    return-object v2

    .line 2029
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2030
    const-string v2, "[]"

    goto :goto_0

    .line 2032
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2033
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2034
    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2035
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2036
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2035
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2039
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2040
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
