.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x80

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0x8000

.field private static final INSERTION_SORT_THRESHOLD:I = 0x20

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([BII)V
    .locals 10
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1252
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    .line 1253
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    .line 1254
    aget-byte v0, p0, v2

    .line 1256
    .local v0, "ai":B
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_0

    .line 1257
    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    .line 1256
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1259
    :cond_0
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    .line 1253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1261
    .end local v0    # "ai":B
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x80

    if-le v8, v9, :cond_4

    .line 1263
    const/16 v8, 0x100

    new-array v1, v8, [I

    .line 1265
    .local v1, "count":[I
    move v2, p1

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    .line 1266
    aget-byte v8, p0, v2

    add-int/lit16 v8, v8, 0x80

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1268
    :cond_2
    const/4 v2, 0x0

    move v4, p1

    .local v4, "k":I
    :goto_3
    array-length v8, v1

    if-ge v2, v8, :cond_5

    if-gt v4, p2, :cond_5

    .line 1269
    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    .line 1271
    .local v7, "value":B
    aget v6, v1, v2

    .local v6, "s":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    .line 1272
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    aput-byte v7, p0, v5

    .line 1271
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    .line 1268
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    .line 1276
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":B
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([BII)V

    .line 1278
    :cond_5
    return-void
.end method

.method private static doSort([CII)V
    .locals 9
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 959
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    .line 960
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    .line 961
    aget-char v0, p0, v2

    .line 963
    .local v0, "ai":C
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    aget-char v7, p0, v3

    if-ge v0, v7, :cond_0

    .line 964
    add-int/lit8 v7, v3, 0x1

    aget-char v8, p0, v3

    aput-char v8, p0, v7

    .line 963
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 966
    :cond_0
    add-int/lit8 v7, v3, 0x1

    aput-char v0, p0, v7

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v0    # "ai":C
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const v8, 0x8000

    if-le v7, v8, :cond_4

    .line 970
    const/high16 v7, 0x10000

    new-array v1, v7, [I

    .line 972
    .local v1, "count":[I
    move v2, p1

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    .line 973
    aget-char v7, p0, v2

    aget v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v7

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 975
    :cond_2
    const/4 v2, 0x0

    move v4, p1

    .local v4, "k":I
    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_5

    if-gt v4, p2, :cond_5

    .line 976
    aget v6, v1, v2

    .local v6, "s":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    .line 977
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    int-to-char v7, v2

    aput-char v7, p0, v5

    .line 976
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    .line 975
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    .line 981
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([CII)V

    .line 983
    :cond_5
    return-void
.end method

.method private static doSort([DII)V
    .locals 8
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2012
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 2013
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_2

    .line 2014
    aget-wide v0, p0, v2

    .line 2016
    .local v0, "ai":D
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    aget-wide v4, p0, v3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 2017
    add-int/lit8 v4, v3, 0x1

    aget-wide v6, p0, v3

    aput-wide v6, p0, v4

    .line 2016
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2019
    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    .line 2013
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2022
    .end local v0    # "ai":D
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([DII)V

    .line 2024
    :cond_2
    return-void
.end method

.method private static doSort([FII)V
    .locals 5
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1639
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 1640
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 1641
    aget v0, p0, v1

    .line 1643
    .local v0, "ai":F
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_1
    if-lt v2, p1, :cond_0

    aget v3, p0, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 1644
    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    .line 1643
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1646
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1649
    .end local v0    # "ai":F
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([FII)V

    .line 1651
    :cond_2
    return-void
.end method

.method private static doSort([III)V
    .locals 5
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 105
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 106
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 107
    aget v0, p0, v1

    .line 109
    .local v0, "ai":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_1
    if-lt v2, p1, :cond_0

    aget v3, p0, v2

    if-ge v0, v3, :cond_0

    .line 110
    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    .line 109
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "ai":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([III)V

    .line 117
    :cond_2
    return-void
.end method

.method private static doSort([JII)V
    .locals 8
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 383
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 384
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_2

    .line 385
    aget-wide v0, p0, v2

    .line 387
    .local v0, "ai":J
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    aget-wide v4, p0, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 388
    add-int/lit8 v4, v3, 0x1

    aget-wide v6, p0, v3

    aput-wide v6, p0, v4

    .line 387
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 390
    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "ai":J
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([JII)V

    .line 395
    :cond_2
    return-void
.end method

.method private static doSort([SII)V
    .locals 10
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 664
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    .line 665
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    .line 666
    aget-short v0, p0, v2

    .line 668
    .local v0, "ai":S
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_0

    aget-short v8, p0, v3

    if-ge v0, v8, :cond_0

    .line 669
    add-int/lit8 v8, v3, 0x1

    aget-short v9, p0, v3

    aput-short v9, p0, v8

    .line 668
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 671
    :cond_0
    add-int/lit8 v8, v3, 0x1

    aput-short v0, p0, v8

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "ai":S
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const v9, 0x8000

    if-le v8, v9, :cond_4

    .line 675
    const/high16 v8, 0x10000

    new-array v1, v8, [I

    .line 677
    .local v1, "count":[I
    move v2, p1

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p2, :cond_2

    .line 678
    aget-short v8, p0, v2

    const/16 v9, -0x8000

    sub-int/2addr v8, v9

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 680
    :cond_2
    const/4 v2, 0x0

    move v4, p1

    .local v4, "k":I
    :goto_3
    array-length v8, v1

    if-ge v2, v8, :cond_5

    if-gt v4, p2, :cond_5

    .line 681
    add-int/lit16 v8, v2, -0x8000

    int-to-short v7, v8

    .line 683
    .local v7, "value":S
    aget v6, v1, v2

    .local v6, "s":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    :goto_4
    if-lez v6, :cond_3

    .line 684
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    aput-short v7, p0, v5

    .line 683
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    goto :goto_4

    .line 680
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_3

    .line 688
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":S
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([SII)V

    .line 690
    :cond_5
    return-void
.end method

.method private static dualPivotQuicksort([BII)V
    .locals 25
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1290
    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    .line 1291
    .local v22, "sixth":I
    add-int v9, p1, v22

    .line 1292
    .local v9, "e1":I
    sub-int v13, p2, v22

    .line 1293
    .local v13, "e5":I
    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    .line 1294
    .local v11, "e3":I
    add-int v12, v11, v22

    .line 1295
    .local v12, "e4":I
    sub-int v10, v11, v22

    .line 1298
    .local v10, "e2":I
    aget-byte v3, p0, v9

    .local v3, "ae1":B
    aget-byte v4, p0, v10

    .local v4, "ae2":B
    aget-byte v5, p0, v11

    .local v5, "ae3":B
    aget-byte v6, p0, v12

    .local v6, "ae4":B
    aget-byte v7, p0, v13

    .line 1300
    .local v7, "ae5":B
    if-le v3, v4, :cond_0

    move/from16 v23, v3

    .local v23, "t":B
    move v3, v4

    move/from16 v4, v23

    .line 1301
    .end local v23    # "t":B
    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    .restart local v23    # "t":B
    move v6, v7

    move/from16 v7, v23

    .line 1302
    .end local v23    # "t":B
    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    .restart local v23    # "t":B
    move v3, v5

    move/from16 v5, v23

    .line 1303
    .end local v23    # "t":B
    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    .restart local v23    # "t":B
    move v4, v5

    move/from16 v5, v23

    .line 1304
    .end local v23    # "t":B
    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    .restart local v23    # "t":B
    move v3, v6

    move/from16 v6, v23

    .line 1305
    .end local v23    # "t":B
    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    .restart local v23    # "t":B
    move v5, v6

    move/from16 v6, v23

    .line 1306
    .end local v23    # "t":B
    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    .restart local v23    # "t":B
    move v4, v7

    move/from16 v7, v23

    .line 1307
    .end local v23    # "t":B
    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    .restart local v23    # "t":B
    move v4, v5

    move/from16 v5, v23

    .line 1308
    .end local v23    # "t":B
    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    .restart local v23    # "t":B
    move v6, v7

    move/from16 v7, v23

    .line 1310
    .end local v23    # "t":B
    :cond_8
    aput-byte v3, p0, v9

    aput-byte v5, p0, v11

    aput-byte v7, p0, v13

    .line 1323
    move/from16 v19, v4

    .local v19, "pivot1":B
    aget-byte v24, p0, p1

    aput-byte v24, p0, v10

    .line 1324
    move/from16 v20, v6

    .local v20, "pivot2":B
    aget-byte v24, p0, p2

    aput-byte v24, p0, v12

    .line 1327
    add-int/lit8 v17, p1, 0x1

    .line 1328
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    .line 1330
    .local v14, "great":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    .line 1332
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    .line 1353
    move/from16 v16, v17

    .local v16, "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    .line 1354
    aget-byte v8, p0, v16

    .line 1355
    .local v8, "ak":B
    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 1356
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1357
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1358
    aput-byte v8, p0, v18

    .line 1360
    :cond_9
    add-int/lit8 v17, v18, 0x1

    .line 1353
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    .line 1330
    .end local v8    # "ak":B
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    .line 1361
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    .restart local v21    # "pivotsDiffer":Z
    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    .line 1362
    :goto_3
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 1363
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1432
    .end local v8    # "ak":B
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-byte v24, p0, v24

    aput-byte v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-byte v19, p0, v24

    .line 1433
    add-int/lit8 v24, v14, 0x1

    aget-byte v24, p0, v24

    aput-byte v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-byte v20, p0, v24

    .line 1436
    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1437
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1443
    if-nez v21, :cond_15

    .line 1503
    :goto_5
    return-void

    .line 1367
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v18    # "less":I
    :cond_c
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 1368
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1369
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-byte v24, p0, v14

    aput-byte v24, p0, v18

    .line 1370
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    .line 1372
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_d
    aget-byte v24, p0, v14

    aput-byte v24, p0, v16

    .line 1373
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    .end local v8    # "ak":B
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    move/from16 v17, v18

    .line 1353
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_4

    .line 1398
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    .restart local v16    # "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    .line 1399
    aget-byte v8, p0, v16

    .line 1400
    .restart local v8    # "ak":B
    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    .line 1398
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_6

    .line 1403
    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    .line 1404
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 1405
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1406
    aput-byte v8, p0, v18

    .line 1408
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1416
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_8
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 1417
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 1419
    :cond_13
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 1420
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1421
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-byte v24, p0, v14

    aput-byte v24, p0, v18

    .line 1422
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_7

    .line 1424
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-byte v19, p0, v16

    .line 1425
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1451
    .end local v8    # "ak":B
    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    .line 1452
    :goto_9
    aget-byte v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1453
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1455
    :cond_16
    :goto_a
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1456
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 1479
    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    .line 1480
    aget-byte v8, p0, v16

    .line 1481
    .restart local v8    # "ak":B
    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    .line 1482
    :goto_c
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1483
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1502
    .end local v8    # "ak":B
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    goto/16 :goto_5

    .line 1487
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v18    # "less":I
    :cond_19
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 1488
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1489
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-byte v19, p0, v18

    .line 1493
    :goto_e
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-byte v20, p0, v14

    move v14, v15

    .line 1479
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_b

    .line 1491
    :cond_1a
    aget-byte v24, p0, v14

    aput-byte v24, p0, v16

    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    .line 1494
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    .line 1495
    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    .line 1496
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-byte v19, p0, v18

    goto :goto_f

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_f

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_1d
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_c

    .end local v8    # "ak":B
    :cond_1e
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":B
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_20
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([CII)V
    .locals 25
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 995
    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    .line 996
    .local v22, "sixth":I
    add-int v9, p1, v22

    .line 997
    .local v9, "e1":I
    sub-int v13, p2, v22

    .line 998
    .local v13, "e5":I
    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    .line 999
    .local v11, "e3":I
    add-int v12, v11, v22

    .line 1000
    .local v12, "e4":I
    sub-int v10, v11, v22

    .line 1003
    .local v10, "e2":I
    aget-char v3, p0, v9

    .local v3, "ae1":C
    aget-char v4, p0, v10

    .local v4, "ae2":C
    aget-char v5, p0, v11

    .local v5, "ae3":C
    aget-char v6, p0, v12

    .local v6, "ae4":C
    aget-char v7, p0, v13

    .line 1005
    .local v7, "ae5":C
    if-le v3, v4, :cond_0

    move/from16 v23, v3

    .local v23, "t":C
    move v3, v4

    move/from16 v4, v23

    .line 1006
    .end local v23    # "t":C
    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    .restart local v23    # "t":C
    move v6, v7

    move/from16 v7, v23

    .line 1007
    .end local v23    # "t":C
    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    .restart local v23    # "t":C
    move v3, v5

    move/from16 v5, v23

    .line 1008
    .end local v23    # "t":C
    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    .restart local v23    # "t":C
    move v4, v5

    move/from16 v5, v23

    .line 1009
    .end local v23    # "t":C
    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    .restart local v23    # "t":C
    move v3, v6

    move/from16 v6, v23

    .line 1010
    .end local v23    # "t":C
    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    .restart local v23    # "t":C
    move v5, v6

    move/from16 v6, v23

    .line 1011
    .end local v23    # "t":C
    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    .restart local v23    # "t":C
    move v4, v7

    move/from16 v7, v23

    .line 1012
    .end local v23    # "t":C
    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    .restart local v23    # "t":C
    move v4, v5

    move/from16 v5, v23

    .line 1013
    .end local v23    # "t":C
    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    .restart local v23    # "t":C
    move v6, v7

    move/from16 v7, v23

    .line 1015
    .end local v23    # "t":C
    :cond_8
    aput-char v3, p0, v9

    aput-char v5, p0, v11

    aput-char v7, p0, v13

    .line 1028
    move/from16 v19, v4

    .local v19, "pivot1":C
    aget-char v24, p0, p1

    aput-char v24, p0, v10

    .line 1029
    move/from16 v20, v6

    .local v20, "pivot2":C
    aget-char v24, p0, p2

    aput-char v24, p0, v12

    .line 1032
    add-int/lit8 v17, p1, 0x1

    .line 1033
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    .line 1035
    .local v14, "great":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    .line 1037
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    .line 1058
    move/from16 v16, v17

    .local v16, "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    .line 1059
    aget-char v8, p0, v16

    .line 1060
    .local v8, "ak":C
    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 1061
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1062
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1063
    aput-char v8, p0, v18

    .line 1065
    :cond_9
    add-int/lit8 v17, v18, 0x1

    .line 1058
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    .line 1035
    .end local v8    # "ak":C
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    .line 1066
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    .restart local v21    # "pivotsDiffer":Z
    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    .line 1067
    :goto_3
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 1068
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1137
    .end local v8    # "ak":C
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-char v24, p0, v24

    aput-char v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-char v19, p0, v24

    .line 1138
    add-int/lit8 v24, v14, 0x1

    aget-char v24, p0, v24

    aput-char v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-char v20, p0, v24

    .line 1141
    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 1142
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 1148
    if-nez v21, :cond_15

    .line 1208
    :goto_5
    return-void

    .line 1072
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v18    # "less":I
    :cond_c
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 1073
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1074
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-char v24, p0, v14

    aput-char v24, p0, v18

    .line 1075
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    .line 1077
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_d
    aget-char v24, p0, v14

    aput-char v24, p0, v16

    .line 1078
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    .end local v8    # "ak":C
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    move/from16 v17, v18

    .line 1058
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_4

    .line 1103
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    .restart local v16    # "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    .line 1104
    aget-char v8, p0, v16

    .line 1105
    .restart local v8    # "ak":C
    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    .line 1103
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_6

    .line 1108
    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    .line 1109
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 1110
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1111
    aput-char v8, p0, v18

    .line 1113
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1121
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_8
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 1122
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 1124
    :cond_13
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 1125
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1126
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-char v24, p0, v14

    aput-char v24, p0, v18

    .line 1127
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_7

    .line 1129
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-char v19, p0, v16

    .line 1130
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1156
    .end local v8    # "ak":C
    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    .line 1157
    :goto_9
    aget-char v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1158
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1160
    :cond_16
    :goto_a
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1161
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 1184
    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    .line 1185
    aget-char v8, p0, v16

    .line 1186
    .restart local v8    # "ak":C
    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    .line 1187
    :goto_c
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1188
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1207
    .end local v8    # "ak":C
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    goto/16 :goto_5

    .line 1192
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v18    # "less":I
    :cond_19
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 1193
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1194
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-char v19, p0, v18

    .line 1198
    :goto_e
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-char v20, p0, v14

    move v14, v15

    .line 1184
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_b

    .line 1196
    :cond_1a
    aget-char v24, p0, v14

    aput-char v24, p0, v16

    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    .line 1199
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    .line 1200
    aget-char v24, p0, v18

    aput-char v24, p0, v16

    .line 1201
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-char v19, p0, v18

    goto :goto_f

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_f

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_1d
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_c

    .end local v8    # "ak":C
    :cond_1e
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":C
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_20
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([DII)V
    .locals 36
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2036
    sub-int v34, p2, p1

    add-int/lit8 v34, v34, 0x1

    div-int/lit8 v31, v34, 0x6

    .line 2037
    .local v31, "sixth":I
    add-int v16, p1, v31

    .line 2038
    .local v16, "e1":I
    sub-int v20, p2, v31

    .line 2039
    .local v20, "e5":I
    add-int v34, p1, p2

    ushr-int/lit8 v18, v34, 0x1

    .line 2040
    .local v18, "e3":I
    add-int v19, v18, v31

    .line 2041
    .local v19, "e4":I
    sub-int v17, v18, v31

    .line 2044
    .local v17, "e2":I
    aget-wide v4, p0, v16

    .local v4, "ae1":D
    aget-wide v6, p0, v17

    .local v6, "ae2":D
    aget-wide v8, p0, v18

    .local v8, "ae3":D
    aget-wide v10, p0, v19

    .local v10, "ae4":D
    aget-wide v12, p0, v20

    .line 2046
    .local v12, "ae5":D
    cmpl-double v34, v4, v6

    if-lez v34, :cond_0

    move-wide/from16 v32, v4

    .local v32, "t":D
    move-wide v4, v6

    move-wide/from16 v6, v32

    .line 2047
    .end local v32    # "t":D
    :cond_0
    cmpl-double v34, v10, v12

    if-lez v34, :cond_1

    move-wide/from16 v32, v10

    .restart local v32    # "t":D
    move-wide v10, v12

    move-wide/from16 v12, v32

    .line 2048
    .end local v32    # "t":D
    :cond_1
    cmpl-double v34, v4, v8

    if-lez v34, :cond_2

    move-wide/from16 v32, v4

    .restart local v32    # "t":D
    move-wide v4, v8

    move-wide/from16 v8, v32

    .line 2049
    .end local v32    # "t":D
    :cond_2
    cmpl-double v34, v6, v8

    if-lez v34, :cond_3

    move-wide/from16 v32, v6

    .restart local v32    # "t":D
    move-wide v6, v8

    move-wide/from16 v8, v32

    .line 2050
    .end local v32    # "t":D
    :cond_3
    cmpl-double v34, v4, v10

    if-lez v34, :cond_4

    move-wide/from16 v32, v4

    .restart local v32    # "t":D
    move-wide v4, v10

    move-wide/from16 v10, v32

    .line 2051
    .end local v32    # "t":D
    :cond_4
    cmpl-double v34, v8, v10

    if-lez v34, :cond_5

    move-wide/from16 v32, v8

    .restart local v32    # "t":D
    move-wide v8, v10

    move-wide/from16 v10, v32

    .line 2052
    .end local v32    # "t":D
    :cond_5
    cmpl-double v34, v6, v12

    if-lez v34, :cond_6

    move-wide/from16 v32, v6

    .restart local v32    # "t":D
    move-wide v6, v12

    move-wide/from16 v12, v32

    .line 2053
    .end local v32    # "t":D
    :cond_6
    cmpl-double v34, v6, v8

    if-lez v34, :cond_7

    move-wide/from16 v32, v6

    .restart local v32    # "t":D
    move-wide v6, v8

    move-wide/from16 v8, v32

    .line 2054
    .end local v32    # "t":D
    :cond_7
    cmpl-double v34, v10, v12

    if-lez v34, :cond_8

    move-wide/from16 v32, v10

    .restart local v32    # "t":D
    move-wide v10, v12

    move-wide/from16 v12, v32

    .line 2056
    .end local v32    # "t":D
    :cond_8
    aput-wide v4, p0, v16

    aput-wide v8, p0, v18

    aput-wide v12, p0, v20

    .line 2069
    move-wide/from16 v26, v6

    .local v26, "pivot1":D
    aget-wide v34, p0, p1

    aput-wide v34, p0, v17

    .line 2070
    move-wide/from16 v28, v10

    .local v28, "pivot2":D
    aget-wide v34, p0, p2

    aput-wide v34, p0, v19

    .line 2073
    add-int/lit8 v24, p1, 0x1

    .line 2074
    .local v24, "less":I
    add-int/lit8 v21, p2, -0x1

    .line 2076
    .local v21, "great":I
    cmpl-double v34, v26, v28

    if-eqz v34, :cond_a

    const/16 v30, 0x1

    .line 2078
    .local v30, "pivotsDiffer":Z
    :goto_0
    if-eqz v30, :cond_f

    .line 2099
    move/from16 v23, v24

    .local v23, "k":I
    move/from16 v25, v24

    .end local v24    # "less":I
    .local v25, "less":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_e

    .line 2100
    aget-wide v14, p0, v23

    .line 2101
    .local v14, "ak":D
    cmpg-double v34, v14, v26

    if-gez v34, :cond_b

    .line 2102
    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 2103
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2104
    aput-wide v14, p0, v25

    .line 2106
    :cond_9
    add-int/lit8 v24, v25, 0x1

    .line 2099
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_2
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_1

    .line 2076
    .end local v14    # "ak":D
    .end local v23    # "k":I
    .end local v25    # "less":I
    .end local v30    # "pivotsDiffer":Z
    .restart local v24    # "less":I
    :cond_a
    const/16 v30, 0x0

    goto :goto_0

    .line 2107
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v23    # "k":I
    .restart local v25    # "less":I
    .restart local v30    # "pivotsDiffer":Z
    :cond_b
    cmpl-double v34, v14, v28

    if-lez v34, :cond_21

    .line 2108
    :goto_3
    aget-wide v34, p0, v21

    cmpl-double v34, v34, v28

    if-lez v34, :cond_c

    .line 2109
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .local v22, "great":I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .line 2178
    .end local v14    # "ak":D
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_4
    add-int/lit8 v34, v24, -0x1

    aget-wide v34, p0, v34

    aput-wide v34, p0, p1

    add-int/lit8 v34, v24, -0x1

    aput-wide v26, p0, v34

    .line 2179
    add-int/lit8 v34, v21, 0x1

    aget-wide v34, p0, v34

    aput-wide v34, p0, p2

    add-int/lit8 v34, v21, 0x1

    aput-wide v28, p0, v34

    .line 2182
    add-int/lit8 v34, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 2183
    add-int/lit8 v34, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 2189
    if-nez v30, :cond_15

    .line 2249
    :goto_5
    return-void

    .line 2113
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v25    # "less":I
    :cond_c
    aget-wide v34, p0, v21

    cmpg-double v34, v34, v26

    if-gez v34, :cond_d

    .line 2114
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2115
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    aput-wide v34, p0, v25

    .line 2116
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_2

    .line 2118
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_d
    aget-wide v34, p0, v21

    aput-wide v34, p0, v23

    .line 2119
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_2

    .end local v14    # "ak":D
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_e
    move/from16 v24, v25

    .line 2099
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_4

    .line 2144
    .end local v23    # "k":I
    :cond_f
    move/from16 v23, v24

    .restart local v23    # "k":I
    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_1f

    .line 2145
    aget-wide v14, p0, v23

    .line 2146
    .restart local v14    # "ak":D
    cmpl-double v34, v14, v26

    if-nez v34, :cond_10

    move/from16 v24, v25

    .line 2144
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_7
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_6

    .line 2149
    :cond_10
    cmpg-double v34, v14, v26

    if-gez v34, :cond_12

    .line 2150
    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 2151
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2152
    aput-wide v14, p0, v25

    .line 2154
    :cond_11
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_7

    .line 2162
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_12
    :goto_8
    aget-wide v34, p0, v21

    cmpl-double v34, v34, v26

    if-lez v34, :cond_13

    .line 2163
    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    .line 2165
    :cond_13
    aget-wide v34, p0, v21

    cmpg-double v34, v34, v26

    if-gez v34, :cond_14

    .line 2166
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2167
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    aput-wide v34, p0, v25

    .line 2168
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_7

    .line 2170
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_14
    aput-wide v26, p0, v23

    .line 2171
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_7

    .line 2197
    .end local v14    # "ak":D
    :cond_15
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_18

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    .line 2198
    :goto_9
    aget-wide v34, p0, v24

    cmpl-double v34, v34, v26

    if-nez v34, :cond_16

    .line 2199
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 2201
    :cond_16
    :goto_a
    aget-wide v34, p0, v21

    cmpl-double v34, v34, v28

    if-nez v34, :cond_17

    .line 2202
    add-int/lit8 v21, v21, -0x1

    goto :goto_a

    .line 2225
    :cond_17
    move/from16 v23, v24

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    .line 2226
    aget-wide v14, p0, v23

    .line 2227
    .restart local v14    # "ak":D
    cmpl-double v34, v14, v28

    if-nez v34, :cond_1b

    .line 2228
    :goto_c
    aget-wide v34, p0, v21

    cmpl-double v34, v34, v28

    if-nez v34, :cond_19

    .line 2229
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .line 2248
    .end local v14    # "ak":D
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    goto/16 :goto_5

    .line 2233
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v25    # "less":I
    :cond_19
    aget-wide v34, p0, v21

    cmpl-double v34, v34, v26

    if-nez v34, :cond_1a

    .line 2234
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2235
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    .line 2239
    :goto_e
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v28, p0, v21

    move/from16 v21, v22

    .line 2225
    .end local v22    # "great":I
    .restart local v21    # "great":I
    :goto_f
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_b

    .line 2237
    :cond_1a
    aget-wide v34, p0, v21

    aput-wide v34, p0, v23

    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_e

    .line 2240
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1b
    cmpl-double v34, v14, v26

    if-nez v34, :cond_1c

    .line 2241
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 2242
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    goto :goto_f

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1c
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_f

    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_1d
    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_c

    .end local v14    # "ak":D
    :cond_1e
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_d

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1f
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_4

    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":D
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_20
    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([FII)V
    .locals 25
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1663
    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    .line 1664
    .local v22, "sixth":I
    add-int v9, p1, v22

    .line 1665
    .local v9, "e1":I
    sub-int v13, p2, v22

    .line 1666
    .local v13, "e5":I
    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    .line 1667
    .local v11, "e3":I
    add-int v12, v11, v22

    .line 1668
    .local v12, "e4":I
    sub-int v10, v11, v22

    .line 1671
    .local v10, "e2":I
    aget v3, p0, v9

    .local v3, "ae1":F
    aget v4, p0, v10

    .local v4, "ae2":F
    aget v5, p0, v11

    .local v5, "ae3":F
    aget v6, p0, v12

    .local v6, "ae4":F
    aget v7, p0, v13

    .line 1673
    .local v7, "ae5":F
    cmpl-float v24, v3, v4

    if-lez v24, :cond_0

    move/from16 v23, v3

    .local v23, "t":F
    move v3, v4

    move/from16 v4, v23

    .line 1674
    .end local v23    # "t":F
    :cond_0
    cmpl-float v24, v6, v7

    if-lez v24, :cond_1

    move/from16 v23, v6

    .restart local v23    # "t":F
    move v6, v7

    move/from16 v7, v23

    .line 1675
    .end local v23    # "t":F
    :cond_1
    cmpl-float v24, v3, v5

    if-lez v24, :cond_2

    move/from16 v23, v3

    .restart local v23    # "t":F
    move v3, v5

    move/from16 v5, v23

    .line 1676
    .end local v23    # "t":F
    :cond_2
    cmpl-float v24, v4, v5

    if-lez v24, :cond_3

    move/from16 v23, v4

    .restart local v23    # "t":F
    move v4, v5

    move/from16 v5, v23

    .line 1677
    .end local v23    # "t":F
    :cond_3
    cmpl-float v24, v3, v6

    if-lez v24, :cond_4

    move/from16 v23, v3

    .restart local v23    # "t":F
    move v3, v6

    move/from16 v6, v23

    .line 1678
    .end local v23    # "t":F
    :cond_4
    cmpl-float v24, v5, v6

    if-lez v24, :cond_5

    move/from16 v23, v5

    .restart local v23    # "t":F
    move v5, v6

    move/from16 v6, v23

    .line 1679
    .end local v23    # "t":F
    :cond_5
    cmpl-float v24, v4, v7

    if-lez v24, :cond_6

    move/from16 v23, v4

    .restart local v23    # "t":F
    move v4, v7

    move/from16 v7, v23

    .line 1680
    .end local v23    # "t":F
    :cond_6
    cmpl-float v24, v4, v5

    if-lez v24, :cond_7

    move/from16 v23, v4

    .restart local v23    # "t":F
    move v4, v5

    move/from16 v5, v23

    .line 1681
    .end local v23    # "t":F
    :cond_7
    cmpl-float v24, v6, v7

    if-lez v24, :cond_8

    move/from16 v23, v6

    .restart local v23    # "t":F
    move v6, v7

    move/from16 v7, v23

    .line 1683
    .end local v23    # "t":F
    :cond_8
    aput v3, p0, v9

    aput v5, p0, v11

    aput v7, p0, v13

    .line 1696
    move/from16 v19, v4

    .local v19, "pivot1":F
    aget v24, p0, p1

    aput v24, p0, v10

    .line 1697
    move/from16 v20, v6

    .local v20, "pivot2":F
    aget v24, p0, p2

    aput v24, p0, v12

    .line 1700
    add-int/lit8 v17, p1, 0x1

    .line 1701
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    .line 1703
    .local v14, "great":I
    cmpl-float v24, v19, v20

    if-eqz v24, :cond_a

    const/16 v21, 0x1

    .line 1705
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    .line 1726
    move/from16 v16, v17

    .local v16, "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    .line 1727
    aget v8, p0, v16

    .line 1728
    .local v8, "ak":F
    cmpg-float v24, v8, v19

    if-gez v24, :cond_b

    .line 1729
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1730
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1731
    aput v8, p0, v18

    .line 1733
    :cond_9
    add-int/lit8 v17, v18, 0x1

    .line 1726
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    .line 1703
    .end local v8    # "ak":F
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    .line 1734
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    .restart local v21    # "pivotsDiffer":Z
    :cond_b
    cmpl-float v24, v8, v20

    if-lez v24, :cond_21

    .line 1735
    :goto_3
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-lez v24, :cond_c

    .line 1736
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1805
    .end local v8    # "ak":F
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget v24, p0, v24

    aput v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput v19, p0, v24

    .line 1806
    add-int/lit8 v24, v14, 0x1

    aget v24, p0, v24

    aput v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput v20, p0, v24

    .line 1809
    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1810
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1816
    if-nez v21, :cond_15

    .line 1876
    :goto_5
    return-void

    .line 1740
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v18    # "less":I
    :cond_c
    aget v24, p0, v14

    cmpg-float v24, v24, v19

    if-gez v24, :cond_d

    .line 1741
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1742
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    aput v24, p0, v18

    .line 1743
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    .line 1745
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_d
    aget v24, p0, v14

    aput v24, p0, v16

    .line 1746
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    .end local v8    # "ak":F
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    move/from16 v17, v18

    .line 1726
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_4

    .line 1771
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    .restart local v16    # "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    .line 1772
    aget v8, p0, v16

    .line 1773
    .restart local v8    # "ak":F
    cmpl-float v24, v8, v19

    if-nez v24, :cond_10

    move/from16 v17, v18

    .line 1771
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_6

    .line 1776
    :cond_10
    cmpg-float v24, v8, v19

    if-gez v24, :cond_12

    .line 1777
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 1778
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1779
    aput v8, p0, v18

    .line 1781
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1789
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_8
    aget v24, p0, v14

    cmpl-float v24, v24, v19

    if-lez v24, :cond_13

    .line 1790
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 1792
    :cond_13
    aget v24, p0, v14

    cmpg-float v24, v24, v19

    if-gez v24, :cond_14

    .line 1793
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1794
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    aput v24, p0, v18

    .line 1795
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_7

    .line 1797
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput v19, p0, v16

    .line 1798
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 1824
    .end local v8    # "ak":F
    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    .line 1825
    :goto_9
    aget v24, p0, v17

    cmpl-float v24, v24, v19

    if-nez v24, :cond_16

    .line 1826
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1828
    :cond_16
    :goto_a
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-nez v24, :cond_17

    .line 1829
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 1852
    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    .line 1853
    aget v8, p0, v16

    .line 1854
    .restart local v8    # "ak":F
    cmpl-float v24, v8, v20

    if-nez v24, :cond_1b

    .line 1855
    :goto_c
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-nez v24, :cond_19

    .line 1856
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 1875
    .end local v8    # "ak":F
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    goto/16 :goto_5

    .line 1860
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v18    # "less":I
    :cond_19
    aget v24, p0, v14

    cmpl-float v24, v24, v19

    if-nez v24, :cond_1a

    .line 1861
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1862
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    .line 1866
    :goto_e
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v20, p0, v14

    move v14, v15

    .line 1852
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_b

    .line 1864
    :cond_1a
    aget v24, p0, v14

    aput v24, p0, v16

    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    .line 1867
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1b
    cmpl-float v24, v8, v19

    if-nez v24, :cond_1c

    .line 1868
    aget v24, p0, v18

    aput v24, p0, v16

    .line 1869
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    goto :goto_f

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_f

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_1d
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_c

    .end local v8    # "ak":F
    :cond_1e
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":F
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_20
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([III)V
    .locals 25
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 129
    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    .line 130
    .local v22, "sixth":I
    add-int v9, p1, v22

    .line 131
    .local v9, "e1":I
    sub-int v13, p2, v22

    .line 132
    .local v13, "e5":I
    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    .line 133
    .local v11, "e3":I
    add-int v12, v11, v22

    .line 134
    .local v12, "e4":I
    sub-int v10, v11, v22

    .line 137
    .local v10, "e2":I
    aget v3, p0, v9

    .local v3, "ae1":I
    aget v4, p0, v10

    .local v4, "ae2":I
    aget v5, p0, v11

    .local v5, "ae3":I
    aget v6, p0, v12

    .local v6, "ae4":I
    aget v7, p0, v13

    .line 139
    .local v7, "ae5":I
    if-le v3, v4, :cond_0

    move/from16 v23, v3

    .local v23, "t":I
    move v3, v4

    move/from16 v4, v23

    .line 140
    .end local v23    # "t":I
    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    .restart local v23    # "t":I
    move v6, v7

    move/from16 v7, v23

    .line 141
    .end local v23    # "t":I
    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    .restart local v23    # "t":I
    move v3, v5

    move/from16 v5, v23

    .line 142
    .end local v23    # "t":I
    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    .restart local v23    # "t":I
    move v4, v5

    move/from16 v5, v23

    .line 143
    .end local v23    # "t":I
    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    .restart local v23    # "t":I
    move v3, v6

    move/from16 v6, v23

    .line 144
    .end local v23    # "t":I
    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    .restart local v23    # "t":I
    move v5, v6

    move/from16 v6, v23

    .line 145
    .end local v23    # "t":I
    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    .restart local v23    # "t":I
    move v4, v7

    move/from16 v7, v23

    .line 146
    .end local v23    # "t":I
    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    .restart local v23    # "t":I
    move v4, v5

    move/from16 v5, v23

    .line 147
    .end local v23    # "t":I
    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    .restart local v23    # "t":I
    move v6, v7

    move/from16 v7, v23

    .line 149
    .end local v23    # "t":I
    :cond_8
    aput v3, p0, v9

    aput v5, p0, v11

    aput v7, p0, v13

    .line 162
    move/from16 v19, v4

    .local v19, "pivot1":I
    aget v24, p0, p1

    aput v24, p0, v10

    .line 163
    move/from16 v20, v6

    .local v20, "pivot2":I
    aget v24, p0, p2

    aput v24, p0, v12

    .line 166
    add-int/lit8 v17, p1, 0x1

    .line 167
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    .line 169
    .local v14, "great":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    .line 171
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    .line 192
    move/from16 v16, v17

    .local v16, "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    .line 193
    aget v8, p0, v16

    .line 194
    .local v8, "ak":I
    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 195
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 196
    aget v24, p0, v18

    aput v24, p0, v16

    .line 197
    aput v8, p0, v18

    .line 199
    :cond_9
    add-int/lit8 v17, v18, 0x1

    .line 192
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    .line 169
    .end local v8    # "ak":I
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    .line 200
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    .restart local v21    # "pivotsDiffer":Z
    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    .line 201
    :goto_3
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 202
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 271
    .end local v8    # "ak":I
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget v24, p0, v24

    aput v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput v19, p0, v24

    .line 272
    add-int/lit8 v24, v14, 0x1

    aget v24, p0, v24

    aput v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput v20, p0, v24

    .line 275
    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 276
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 282
    if-nez v21, :cond_15

    .line 342
    :goto_5
    return-void

    .line 206
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v18    # "less":I
    :cond_c
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 207
    aget v24, p0, v18

    aput v24, p0, v16

    .line 208
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    aput v24, p0, v18

    .line 209
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    .line 211
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_d
    aget v24, p0, v14

    aput v24, p0, v16

    .line 212
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    .end local v8    # "ak":I
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    move/from16 v17, v18

    .line 192
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_4

    .line 237
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    .restart local v16    # "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    .line 238
    aget v8, p0, v16

    .line 239
    .restart local v8    # "ak":I
    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    .line 237
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_6

    .line 242
    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    .line 243
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 244
    aget v24, p0, v18

    aput v24, p0, v16

    .line 245
    aput v8, p0, v18

    .line 247
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 255
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_8
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 256
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 258
    :cond_13
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 259
    aget v24, p0, v18

    aput v24, p0, v16

    .line 260
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget v24, p0, v14

    aput v24, p0, v18

    .line 261
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_7

    .line 263
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput v19, p0, v16

    .line 264
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 290
    .end local v8    # "ak":I
    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    .line 291
    :goto_9
    aget v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 292
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 294
    :cond_16
    :goto_a
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 295
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 318
    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    .line 319
    aget v8, p0, v16

    .line 320
    .restart local v8    # "ak":I
    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    .line 321
    :goto_c
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 322
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 341
    .end local v8    # "ak":I
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    goto/16 :goto_5

    .line 326
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v18    # "less":I
    :cond_19
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 327
    aget v24, p0, v18

    aput v24, p0, v16

    .line 328
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    .line 332
    :goto_e
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput v20, p0, v14

    move v14, v15

    .line 318
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_b

    .line 330
    :cond_1a
    aget v24, p0, v14

    aput v24, p0, v16

    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    .line 333
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    .line 334
    aget v24, p0, v18

    aput v24, p0, v16

    .line 335
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput v19, p0, v18

    goto :goto_f

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_f

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_1d
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_c

    .end local v8    # "ak":I
    :cond_1e
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_20
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([JII)V
    .locals 36
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 407
    sub-int v34, p2, p1

    add-int/lit8 v34, v34, 0x1

    div-int/lit8 v31, v34, 0x6

    .line 408
    .local v31, "sixth":I
    add-int v16, p1, v31

    .line 409
    .local v16, "e1":I
    sub-int v20, p2, v31

    .line 410
    .local v20, "e5":I
    add-int v34, p1, p2

    ushr-int/lit8 v18, v34, 0x1

    .line 411
    .local v18, "e3":I
    add-int v19, v18, v31

    .line 412
    .local v19, "e4":I
    sub-int v17, v18, v31

    .line 415
    .local v17, "e2":I
    aget-wide v4, p0, v16

    .local v4, "ae1":J
    aget-wide v6, p0, v17

    .local v6, "ae2":J
    aget-wide v8, p0, v18

    .local v8, "ae3":J
    aget-wide v10, p0, v19

    .local v10, "ae4":J
    aget-wide v12, p0, v20

    .line 417
    .local v12, "ae5":J
    cmp-long v34, v4, v6

    if-lez v34, :cond_0

    move-wide/from16 v32, v4

    .local v32, "t":J
    move-wide v4, v6

    move-wide/from16 v6, v32

    .line 418
    .end local v32    # "t":J
    :cond_0
    cmp-long v34, v10, v12

    if-lez v34, :cond_1

    move-wide/from16 v32, v10

    .restart local v32    # "t":J
    move-wide v10, v12

    move-wide/from16 v12, v32

    .line 419
    .end local v32    # "t":J
    :cond_1
    cmp-long v34, v4, v8

    if-lez v34, :cond_2

    move-wide/from16 v32, v4

    .restart local v32    # "t":J
    move-wide v4, v8

    move-wide/from16 v8, v32

    .line 420
    .end local v32    # "t":J
    :cond_2
    cmp-long v34, v6, v8

    if-lez v34, :cond_3

    move-wide/from16 v32, v6

    .restart local v32    # "t":J
    move-wide v6, v8

    move-wide/from16 v8, v32

    .line 421
    .end local v32    # "t":J
    :cond_3
    cmp-long v34, v4, v10

    if-lez v34, :cond_4

    move-wide/from16 v32, v4

    .restart local v32    # "t":J
    move-wide v4, v10

    move-wide/from16 v10, v32

    .line 422
    .end local v32    # "t":J
    :cond_4
    cmp-long v34, v8, v10

    if-lez v34, :cond_5

    move-wide/from16 v32, v8

    .restart local v32    # "t":J
    move-wide v8, v10

    move-wide/from16 v10, v32

    .line 423
    .end local v32    # "t":J
    :cond_5
    cmp-long v34, v6, v12

    if-lez v34, :cond_6

    move-wide/from16 v32, v6

    .restart local v32    # "t":J
    move-wide v6, v12

    move-wide/from16 v12, v32

    .line 424
    .end local v32    # "t":J
    :cond_6
    cmp-long v34, v6, v8

    if-lez v34, :cond_7

    move-wide/from16 v32, v6

    .restart local v32    # "t":J
    move-wide v6, v8

    move-wide/from16 v8, v32

    .line 425
    .end local v32    # "t":J
    :cond_7
    cmp-long v34, v10, v12

    if-lez v34, :cond_8

    move-wide/from16 v32, v10

    .restart local v32    # "t":J
    move-wide v10, v12

    move-wide/from16 v12, v32

    .line 427
    .end local v32    # "t":J
    :cond_8
    aput-wide v4, p0, v16

    aput-wide v8, p0, v18

    aput-wide v12, p0, v20

    .line 440
    move-wide/from16 v26, v6

    .local v26, "pivot1":J
    aget-wide v34, p0, p1

    aput-wide v34, p0, v17

    .line 441
    move-wide/from16 v28, v10

    .local v28, "pivot2":J
    aget-wide v34, p0, p2

    aput-wide v34, p0, v19

    .line 444
    add-int/lit8 v24, p1, 0x1

    .line 445
    .local v24, "less":I
    add-int/lit8 v21, p2, -0x1

    .line 447
    .local v21, "great":I
    cmp-long v34, v26, v28

    if-eqz v34, :cond_a

    const/16 v30, 0x1

    .line 449
    .local v30, "pivotsDiffer":Z
    :goto_0
    if-eqz v30, :cond_f

    .line 470
    move/from16 v23, v24

    .local v23, "k":I
    move/from16 v25, v24

    .end local v24    # "less":I
    .local v25, "less":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_e

    .line 471
    aget-wide v14, p0, v23

    .line 472
    .local v14, "ak":J
    cmp-long v34, v14, v26

    if-gez v34, :cond_b

    .line 473
    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 474
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 475
    aput-wide v14, p0, v25

    .line 477
    :cond_9
    add-int/lit8 v24, v25, 0x1

    .line 470
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_2
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_1

    .line 447
    .end local v14    # "ak":J
    .end local v23    # "k":I
    .end local v25    # "less":I
    .end local v30    # "pivotsDiffer":Z
    .restart local v24    # "less":I
    :cond_a
    const/16 v30, 0x0

    goto :goto_0

    .line 478
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v23    # "k":I
    .restart local v25    # "less":I
    .restart local v30    # "pivotsDiffer":Z
    :cond_b
    cmp-long v34, v14, v28

    if-lez v34, :cond_21

    .line 479
    :goto_3
    aget-wide v34, p0, v21

    cmp-long v34, v34, v28

    if-lez v34, :cond_c

    .line 480
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .local v22, "great":I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .line 549
    .end local v14    # "ak":J
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_4
    add-int/lit8 v34, v24, -0x1

    aget-wide v34, p0, v34

    aput-wide v34, p0, p1

    add-int/lit8 v34, v24, -0x1

    aput-wide v26, p0, v34

    .line 550
    add-int/lit8 v34, v21, 0x1

    aget-wide v34, p0, v34

    aput-wide v34, p0, p2

    add-int/lit8 v34, v21, 0x1

    aput-wide v28, p0, v34

    .line 553
    add-int/lit8 v34, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 554
    add-int/lit8 v34, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 560
    if-nez v30, :cond_15

    .line 620
    :goto_5
    return-void

    .line 484
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v25    # "less":I
    :cond_c
    aget-wide v34, p0, v21

    cmp-long v34, v34, v26

    if-gez v34, :cond_d

    .line 485
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 486
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    aput-wide v34, p0, v25

    .line 487
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_2

    .line 489
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_d
    aget-wide v34, p0, v21

    aput-wide v34, p0, v23

    .line 490
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_2

    .end local v14    # "ak":J
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_e
    move/from16 v24, v25

    .line 470
    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_4

    .line 515
    .end local v23    # "k":I
    :cond_f
    move/from16 v23, v24

    .restart local v23    # "k":I
    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_1f

    .line 516
    aget-wide v14, p0, v23

    .line 517
    .restart local v14    # "ak":J
    cmp-long v34, v14, v26

    if-nez v34, :cond_10

    move/from16 v24, v25

    .line 515
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :goto_7
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_6

    .line 520
    :cond_10
    cmp-long v34, v14, v26

    if-gez v34, :cond_12

    .line 521
    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 522
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 523
    aput-wide v14, p0, v25

    .line 525
    :cond_11
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_7

    .line 533
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_12
    :goto_8
    aget-wide v34, p0, v21

    cmp-long v34, v34, v26

    if-lez v34, :cond_13

    .line 534
    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    .line 536
    :cond_13
    aget-wide v34, p0, v21

    cmp-long v34, v34, v26

    if-gez v34, :cond_14

    .line 537
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 538
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aget-wide v34, p0, v21

    aput-wide v34, p0, v25

    .line 539
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_7

    .line 541
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_14
    aput-wide v26, p0, v23

    .line 542
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v14, p0, v21

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_7

    .line 568
    .end local v14    # "ak":J
    :cond_15
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_18

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    .line 569
    :goto_9
    aget-wide v34, p0, v24

    cmp-long v34, v34, v26

    if-nez v34, :cond_16

    .line 570
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 572
    :cond_16
    :goto_a
    aget-wide v34, p0, v21

    cmp-long v34, v34, v28

    if-nez v34, :cond_17

    .line 573
    add-int/lit8 v21, v21, -0x1

    goto :goto_a

    .line 596
    :cond_17
    move/from16 v23, v24

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    .line 597
    aget-wide v14, p0, v23

    .line 598
    .restart local v14    # "ak":J
    cmp-long v34, v14, v28

    if-nez v34, :cond_1b

    .line 599
    :goto_c
    aget-wide v34, p0, v21

    cmp-long v34, v34, v28

    if-nez v34, :cond_19

    .line 600
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    move/from16 v24, v25

    .line 619
    .end local v14    # "ak":J
    .end local v25    # "less":I
    .restart local v24    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    goto/16 :goto_5

    .line 604
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v25    # "less":I
    :cond_19
    aget-wide v34, p0, v21

    cmp-long v34, v34, v26

    if-nez v34, :cond_1a

    .line 605
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 606
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    .line 610
    :goto_e
    add-int/lit8 v22, v21, -0x1

    .end local v21    # "great":I
    .restart local v22    # "great":I
    aput-wide v28, p0, v21

    move/from16 v21, v22

    .line 596
    .end local v22    # "great":I
    .restart local v21    # "great":I
    :goto_f
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24    # "less":I
    .restart local v25    # "less":I
    goto :goto_b

    .line 608
    :cond_1a
    aget-wide v34, p0, v21

    aput-wide v34, p0, v23

    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_e

    .line 611
    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1b
    cmp-long v34, v14, v26

    if-nez v34, :cond_1c

    .line 612
    aget-wide v34, p0, v25

    aput-wide v34, p0, v23

    .line 613
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "less":I
    .restart local v24    # "less":I
    aput-wide v26, p0, v25

    goto :goto_f

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1c
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_f

    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_1d
    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto :goto_c

    .end local v14    # "ak":J
    :cond_1e
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto :goto_d

    .end local v24    # "less":I
    .restart local v25    # "less":I
    :cond_1f
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_4

    .end local v21    # "great":I
    .end local v24    # "less":I
    .restart local v14    # "ak":J
    .restart local v22    # "great":I
    .restart local v25    # "less":I
    :cond_20
    move/from16 v21, v22

    .end local v22    # "great":I
    .restart local v21    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v24, v25

    .end local v25    # "less":I
    .restart local v24    # "less":I
    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([SII)V
    .locals 25
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 702
    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    .line 703
    .local v22, "sixth":I
    add-int v9, p1, v22

    .line 704
    .local v9, "e1":I
    sub-int v13, p2, v22

    .line 705
    .local v13, "e5":I
    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    .line 706
    .local v11, "e3":I
    add-int v12, v11, v22

    .line 707
    .local v12, "e4":I
    sub-int v10, v11, v22

    .line 710
    .local v10, "e2":I
    aget-short v3, p0, v9

    .local v3, "ae1":S
    aget-short v4, p0, v10

    .local v4, "ae2":S
    aget-short v5, p0, v11

    .local v5, "ae3":S
    aget-short v6, p0, v12

    .local v6, "ae4":S
    aget-short v7, p0, v13

    .line 712
    .local v7, "ae5":S
    if-le v3, v4, :cond_0

    move/from16 v23, v3

    .local v23, "t":S
    move v3, v4

    move/from16 v4, v23

    .line 713
    .end local v23    # "t":S
    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    .restart local v23    # "t":S
    move v6, v7

    move/from16 v7, v23

    .line 714
    .end local v23    # "t":S
    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    .restart local v23    # "t":S
    move v3, v5

    move/from16 v5, v23

    .line 715
    .end local v23    # "t":S
    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    .restart local v23    # "t":S
    move v4, v5

    move/from16 v5, v23

    .line 716
    .end local v23    # "t":S
    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    .restart local v23    # "t":S
    move v3, v6

    move/from16 v6, v23

    .line 717
    .end local v23    # "t":S
    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    .restart local v23    # "t":S
    move v5, v6

    move/from16 v6, v23

    .line 718
    .end local v23    # "t":S
    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    .restart local v23    # "t":S
    move v4, v7

    move/from16 v7, v23

    .line 719
    .end local v23    # "t":S
    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    .restart local v23    # "t":S
    move v4, v5

    move/from16 v5, v23

    .line 720
    .end local v23    # "t":S
    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    .restart local v23    # "t":S
    move v6, v7

    move/from16 v7, v23

    .line 722
    .end local v23    # "t":S
    :cond_8
    aput-short v3, p0, v9

    aput-short v5, p0, v11

    aput-short v7, p0, v13

    .line 735
    move/from16 v19, v4

    .local v19, "pivot1":S
    aget-short v24, p0, p1

    aput-short v24, p0, v10

    .line 736
    move/from16 v20, v6

    .local v20, "pivot2":S
    aget-short v24, p0, p2

    aput-short v24, p0, v12

    .line 739
    add-int/lit8 v17, p1, 0x1

    .line 740
    .local v17, "less":I
    add-int/lit8 v14, p2, -0x1

    .line 742
    .local v14, "great":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    .line 744
    .local v21, "pivotsDiffer":Z
    :goto_0
    if-eqz v21, :cond_f

    .line 765
    move/from16 v16, v17

    .local v16, "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .local v18, "less":I
    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    .line 766
    aget-short v8, p0, v16

    .line 767
    .local v8, "ak":S
    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 768
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 769
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 770
    aput-short v8, p0, v18

    .line 772
    :cond_9
    add-int/lit8 v17, v18, 0x1

    .line 765
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_1

    .line 742
    .end local v8    # "ak":S
    .end local v16    # "k":I
    .end local v18    # "less":I
    .end local v21    # "pivotsDiffer":Z
    .restart local v17    # "less":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    .line 773
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v16    # "k":I
    .restart local v18    # "less":I
    .restart local v21    # "pivotsDiffer":Z
    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    .line 774
    :goto_3
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 775
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .local v15, "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 844
    .end local v8    # "ak":S
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-short v24, p0, v24

    aput-short v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-short v19, p0, v24

    .line 845
    add-int/lit8 v24, v14, 0x1

    aget-short v24, p0, v24

    aput-short v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-short v20, p0, v24

    .line 848
    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 849
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 855
    if-nez v21, :cond_15

    .line 915
    :goto_5
    return-void

    .line 779
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v18    # "less":I
    :cond_c
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 780
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 781
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-short v24, p0, v14

    aput-short v24, p0, v18

    .line 782
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_2

    .line 784
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_d
    aget-short v24, p0, v14

    aput-short v24, p0, v16

    .line 785
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_2

    .end local v8    # "ak":S
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_e
    move/from16 v17, v18

    .line 765
    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_4

    .line 810
    .end local v16    # "k":I
    :cond_f
    move/from16 v16, v17

    .restart local v16    # "k":I
    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    .line 811
    aget-short v8, p0, v16

    .line 812
    .restart local v8    # "ak":S
    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    .line 810
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_6

    .line 815
    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    .line 816
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 817
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 818
    aput-short v8, p0, v18

    .line 820
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 828
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_12
    :goto_8
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 829
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 831
    :cond_13
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 832
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 833
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aget-short v24, p0, v14

    aput-short v24, p0, v18

    .line 834
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_7

    .line 836
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_14
    aput-short v19, p0, v16

    .line 837
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v8, p0, v14

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_7

    .line 863
    .end local v8    # "ak":S
    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    .line 864
    :goto_9
    aget-short v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 865
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 867
    :cond_16
    :goto_a
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 868
    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    .line 891
    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    .line 892
    aget-short v8, p0, v16

    .line 893
    .restart local v8    # "ak":S
    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    .line 894
    :goto_c
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 895
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    move/from16 v17, v18

    .line 914
    .end local v8    # "ak":S
    .end local v18    # "less":I
    .restart local v17    # "less":I
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    goto/16 :goto_5

    .line 899
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v18    # "less":I
    :cond_19
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 900
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 901
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-short v19, p0, v18

    .line 905
    :goto_e
    add-int/lit8 v15, v14, -0x1

    .end local v14    # "great":I
    .restart local v15    # "great":I
    aput-short v20, p0, v14

    move v14, v15

    .line 891
    .end local v15    # "great":I
    .restart local v14    # "great":I
    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "less":I
    .restart local v18    # "less":I
    goto :goto_b

    .line 903
    :cond_1a
    aget-short v24, p0, v14

    aput-short v24, p0, v16

    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_e

    .line 906
    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    .line 907
    aget-short v24, p0, v18

    aput-short v24, p0, v16

    .line 908
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "less":I
    .restart local v17    # "less":I
    aput-short v19, p0, v18

    goto :goto_f

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1c
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_f

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_1d
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto :goto_c

    .end local v8    # "ak":S
    :cond_1e
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto :goto_d

    .end local v17    # "less":I
    .restart local v18    # "less":I
    :cond_1f
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_4

    .end local v14    # "great":I
    .end local v17    # "less":I
    .restart local v8    # "ak":S
    .restart local v15    # "great":I
    .restart local v18    # "less":I
    :cond_20
    move v14, v15

    .end local v15    # "great":I
    .restart local v14    # "great":I
    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    .end local v18    # "less":I
    .restart local v17    # "less":I
    goto/16 :goto_2
.end method

.method private static findAnyZero([DII)I
    .locals 6
    .param p0, "a"    # [D
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1986
    :goto_0
    add-int v1, p1, p2

    ushr-int/lit8 v0, v1, 0x1

    .line 1987
    .local v0, "middle":I
    aget-wide v2, p0, v0

    .line 1989
    .local v2, "middleValue":D
    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 1990
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 1991
    :cond_0
    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 1992
    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 1994
    :cond_1
    return v0
.end method

.method private static findAnyZero([FII)I
    .locals 4
    .param p0, "a"    # [F
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    const/4 v3, 0x0

    .line 1613
    :goto_0
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    .line 1614
    .local v0, "middle":I
    aget v1, p0, v0

    .line 1616
    .local v1, "middleValue":F
    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    .line 1617
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 1618
    :cond_0
    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    .line 1619
    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 1621
    :cond_1
    return v0
.end method

.method public static sort([B)V
    .locals 2
    .param p0, "a"    # [B

    .prologue
    .line 1216
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1217
    return-void
.end method

.method public static sort([BII)V
    .locals 1
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1233
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1234
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1235
    return-void
.end method

.method public static sort([C)V
    .locals 2
    .param p0, "a"    # [C

    .prologue
    .line 923
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 924
    return-void
.end method

.method public static sort([CII)V
    .locals 1
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 940
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 941
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 942
    return-void
.end method

.method public static sort([D)V
    .locals 2
    .param p0, "a"    # [D

    .prologue
    .line 1892
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    .line 1893
    return-void
.end method

.method public static sort([DII)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1917
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1918
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    .line 1919
    return-void
.end method

.method public static sort([F)V
    .locals 2
    .param p0, "a"    # [F

    .prologue
    .line 1519
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    .line 1520
    return-void
.end method

.method public static sort([FII)V
    .locals 1
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1544
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1545
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    .line 1546
    return-void
.end method

.method public static sort([I)V
    .locals 2
    .param p0, "a"    # [I

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 73
    return-void
.end method

.method public static sort([III)V
    .locals 1
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 89
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 90
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 91
    return-void
.end method

.method public static sort([J)V
    .locals 2
    .param p0, "a"    # [J

    .prologue
    .line 350
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 351
    return-void
.end method

.method public static sort([JII)V
    .locals 1
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 367
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 368
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 369
    return-void
.end method

.method public static sort([S)V
    .locals 2
    .param p0, "a"    # [S

    .prologue
    .line 628
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 629
    return-void
.end method

.method public static sort([SII)V
    .locals 1
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 645
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 646
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 647
    return-void
.end method

.method private static sortNegZeroAndNaN([DII)V
    .locals 18
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1935
    const-wide/high16 v14, -0x8000000000000000L

    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1936
    .local v2, "NEGATIVE_ZERO":J
    const/4 v12, 0x0

    .line 1937
    .local v12, "numNegativeZeros":I
    move/from16 v10, p2

    .line 1939
    .local v10, "n":I
    move/from16 v7, p1

    .local v7, "k":I
    move v8, v7

    .end local v7    # "k":I
    .local v8, "k":I
    move v11, v10

    .end local v10    # "n":I
    .local v11, "n":I
    :goto_0
    if-gt v8, v11, :cond_1

    .line 1940
    aget-wide v4, p0, v8

    .line 1941
    .local v4, "ak":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v4, v14

    if-nez v14, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_0

    .line 1942
    const-wide/16 v14, 0x0

    aput-wide v14, p0, v8

    .line 1943
    add-int/lit8 v12, v12, 0x1

    move v7, v8

    .end local v8    # "k":I
    .restart local v7    # "k":I
    move v10, v11

    .line 1939
    .end local v11    # "n":I
    .restart local v10    # "n":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    .end local v7    # "k":I
    .restart local v8    # "k":I
    move v11, v10

    .end local v10    # "n":I
    .restart local v11    # "n":I
    goto :goto_0

    .line 1944
    :cond_0
    cmpl-double v14, v4, v4

    if-eqz v14, :cond_5

    .line 1945
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "k":I
    .restart local v7    # "k":I
    aget-wide v14, p0, v11

    aput-wide v14, p0, v8

    .line 1946
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "n":I
    .restart local v10    # "n":I
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    aput-wide v14, p0, v11

    goto :goto_1

    .line 1953
    .end local v4    # "ak":D
    .end local v7    # "k":I
    .end local v10    # "n":I
    .restart local v8    # "k":I
    .restart local v11    # "n":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 1958
    if-nez v12, :cond_3

    .line 1973
    :cond_2
    return-void

    .line 1963
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->findAnyZero([DII)I

    move-result v13

    .line 1965
    .local v13, "zeroIndex":I
    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_2
    move/from16 v0, p1

    if-lt v6, v0, :cond_4

    aget-wide v14, p0, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_4

    .line 1966
    move v13, v6

    .line 1965
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1970
    :cond_4
    move v6, v13

    add-int v9, v13, v12

    .local v9, "m":I
    :goto_3
    if-ge v6, v9, :cond_2

    .line 1971
    const-wide/high16 v14, -0x8000000000000000L

    aput-wide v14, p0, v6

    .line 1970
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v6    # "i":I
    .end local v9    # "m":I
    .end local v13    # "zeroIndex":I
    .restart local v4    # "ak":D
    :cond_5
    move v7, v8

    .end local v8    # "k":I
    .restart local v7    # "k":I
    move v10, v11

    .end local v11    # "n":I
    .restart local v10    # "n":I
    goto :goto_1
.end method

.method private static sortNegZeroAndNaN([FII)V
    .locals 13
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x0

    .line 1562
    invoke-static {v12}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1563
    .local v0, "NEGATIVE_ZERO":I
    const/4 v8, 0x0

    .line 1564
    .local v8, "numNegativeZeros":I
    move v6, p2

    .line 1566
    .local v6, "n":I
    move v3, p1

    .local v3, "k":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    move v7, v6

    .end local v6    # "n":I
    .local v7, "n":I
    :goto_0
    if-gt v4, v7, :cond_1

    .line 1567
    aget v1, p0, v4

    .line 1568
    .local v1, "ak":F
    cmpl-float v10, v1, v11

    if-nez v10, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    if-ne v0, v10, :cond_0

    .line 1569
    aput v11, p0, v4

    .line 1570
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v6, v7

    .line 1566
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    move v7, v6

    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_0

    .line 1571
    :cond_0
    cmpl-float v10, v1, v1

    if-eqz v10, :cond_5

    .line 1572
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v10, p0, v7

    aput v10, p0, v4

    .line 1573
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/high16 v10, 0x7fc00000    # NaNf

    aput v10, p0, v7

    goto :goto_1

    .line 1580
    .end local v1    # "ak":F
    .end local v3    # "k":I
    .end local v6    # "n":I
    .restart local v4    # "k":I
    .restart local v7    # "n":I
    :cond_1
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1585
    if-nez v8, :cond_3

    .line 1600
    :cond_2
    return-void

    .line 1590
    :cond_3
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->findAnyZero([FII)I

    move-result v9

    .line 1592
    .local v9, "zeroIndex":I
    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_2
    if-lt v2, p1, :cond_4

    aget v10, p0, v2

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    .line 1593
    move v9, v2

    .line 1592
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1597
    :cond_4
    move v2, v9

    add-int v5, v9, v8

    .local v5, "m":I
    :goto_3
    if-ge v2, v5, :cond_2

    .line 1598
    aput v12, p0, v2

    .line 1597
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v5    # "m":I
    .end local v9    # "zeroIndex":I
    .restart local v1    # "ak":F
    :cond_5
    move v3, v4

    .end local v4    # "k":I
    .restart local v3    # "k":I
    move v6, v7

    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto :goto_1
.end method
