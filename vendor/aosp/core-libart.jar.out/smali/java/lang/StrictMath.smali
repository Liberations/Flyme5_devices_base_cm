.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 67
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 82
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 92
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 102
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 8
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 933
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 934
    .local v0, "magnitudeBits":J
    cmpl-double v4, p2, p2

    if-eqz v4, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .end local p2    # "sign":D
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 935
    .local v2, "signBits":J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 936
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 950
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 951
    .local v0, "magnitudeBits":I
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .end local p1    # "sign":F
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 952
    .local v1, "signBits":I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 953
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 969
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 961
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 6
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 448
    cmpl-double v2, p0, p2

    if-lez v2, :cond_1

    .line 459
    .end local p0    # "d1":D
    :cond_0
    :goto_0
    return-wide p0

    .line 450
    .restart local p0    # "d1":D
    :cond_1
    cmpg-double v2, p0, p2

    if-gez v2, :cond_2

    move-wide p0, p2

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_3

    .line 454
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 456
    :cond_3
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide p0, v0

    .line 458
    goto :goto_0
.end method

.method public static max(FF)F
    .locals 3
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    const/4 v0, 0x0

    .line 475
    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    .line 486
    .end local p0    # "f1":F
    :cond_0
    :goto_0
    return p0

    .line 477
    .restart local p0    # "f1":F
    :cond_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p0, p1

    .line 478
    goto :goto_0

    .line 480
    :cond_2
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_3

    .line 481
    const/high16 p0, 0x7fc00000    # NaNf

    goto :goto_0

    .line 483
    :cond_3
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    and-int/2addr v1, v2

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    move p0, v0

    .line 485
    goto :goto_0
.end method

.method public static max(II)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 494
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    .prologue
    .line 502
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    .line 518
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    move-wide p0, p2

    .line 529
    .end local p0    # "d1":D
    :cond_0
    :goto_0
    return-wide p0

    .line 520
    .restart local p0    # "d1":D
    :cond_1
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 523
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 524
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 526
    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 528
    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 545
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    .line 556
    .end local p0    # "f1":F
    :cond_0
    :goto_0
    return p0

    .line 547
    .restart local p0    # "f1":F
    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 550
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    .line 551
    const/high16 p0, 0x7fc00000    # NaNf

    goto :goto_0

    .line 553
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 555
    const/high16 p0, -0x80000000

    goto :goto_0
.end method

.method public static min(II)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 564
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    .prologue
    .line 572
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 4
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 977
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    cmpl-double v0, p2, v2

    if-nez v0, :cond_0

    .line 980
    .end local p2    # "direction":D
    :goto_0
    return-wide p2

    .restart local p2    # "direction":D
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static nextAfter(FD)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    .line 988
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 996
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1004
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    .prologue
    .line 622
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 687
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 664
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 18
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .prologue
    .line 1012
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_0

    const-wide/16 v12, 0x0

    cmpl-double v11, p0, v12

    if-nez v11, :cond_1

    :cond_0
    move-wide/from16 v12, p0

    .line 1060
    :goto_0
    return-wide v12

    .line 1016
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1018
    .local v0, "bits":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long v8, v0, v12

    .line 1020
    .local v8, "sign":J
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v12, v0

    const/16 v11, 0x34

    shr-long/2addr v12, v11

    long-to-int v11, v12

    add-int/lit16 v11, v11, -0x3ff

    add-int v11, v11, p2

    int-to-long v4, v11

    .line 1024
    .local v4, "factor":J
    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v11

    add-int/lit8 v10, v11, -0xc

    .line 1026
    .local v10, "subNormalFactor":I
    if-gez v10, :cond_2

    .line 1028
    const/4 v10, 0x0

    .line 1030
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10000000000000L

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    .line 1031
    int-to-long v12, v10

    sub-long/2addr v4, v12

    .line 1033
    :cond_3
    const-wide/16 v12, 0x3ff

    cmp-long v11, v4, v12

    if-lez v11, :cond_5

    .line 1034
    const-wide/16 v12, 0x0

    cmpl-double v11, p0, v12

    if-lez v11, :cond_4

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_4
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 1039
    :cond_5
    const-wide/16 v12, -0x3ff

    cmp-long v11, v4, v12

    if-gez v11, :cond_7

    .line 1041
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v4

    int-to-long v14, v10

    add-long v2, v12, v14

    .line 1042
    .local v2, "digits":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10000000000000L

    cmpg-double v11, v12, v14

    if-gez v11, :cond_6

    .line 1044
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .line 1060
    .end local v2    # "digits":J
    .local v6, "result":J
    :goto_1
    or-long v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    .line 1047
    .end local v6    # "result":J
    .restart local v2    # "digits":J
    :cond_6
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v0

    const-wide/high16 v14, 0x10000000000000L

    or-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long v14, v2, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide v6

    .restart local v6    # "result":J
    goto :goto_1

    .line 1050
    .end local v2    # "digits":J
    .end local v6    # "result":J
    :cond_7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10000000000000L

    cmpl-double v11, v12, v14

    if-ltz v11, :cond_8

    .line 1052
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v4

    const/16 v11, 0x34

    shl-long/2addr v12, v11

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v0

    or-long v6, v12, v14

    .restart local v6    # "result":J
    goto :goto_1

    .line 1056
    .end local v6    # "result":J
    :cond_8
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v4

    const/16 v11, 0x34

    shl-long/2addr v12, v11

    add-int/lit8 v11, v10, 0x1

    shl-long v14, v0, v11

    const-wide v16, 0xfffffffffffffL

    and-long v14, v14, v16

    or-long v6, v12, v14

    .restart local v6    # "result":J
    goto :goto_1
.end method

.method public static scalb(FI)F
    .locals 10
    .param p0, "d"    # F
    .param p1, "scaleFactor"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x800000

    const v8, 0x7fffff

    .line 1068
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_0

    cmpl-float v6, p0, v9

    if-nez v6, :cond_1

    :cond_0
    move v6, p0

    .line 1112
    :goto_0
    return v6

    .line 1071
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1072
    .local v0, "bits":I
    const/high16 v6, -0x80000000

    and-int v4, v0, v6

    .line 1073
    .local v4, "sign":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    .line 1076
    .local v2, "factor":I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    .line 1078
    .local v5, "subNormalFactor":I
    if-gez v5, :cond_2

    .line 1080
    const/4 v5, 0x0

    .line 1082
    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1083
    sub-int/2addr v2, v5

    .line 1085
    :cond_3
    const/16 v6, 0x7f

    if-le v2, v6, :cond_5

    .line 1086
    cmpl-float v6, p0, v9

    if-lez v6, :cond_4

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_4
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 1091
    :cond_5
    const/16 v6, -0x7f

    if-ge v2, v6, :cond_7

    .line 1093
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1094
    .local v1, "digits":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 1096
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .line 1112
    .end local v1    # "digits":I
    .local v3, "result":I
    :goto_1
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    .line 1099
    .end local v3    # "result":I
    .restart local v1    # "digits":I
    :cond_6
    and-int v6, v0, v8

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .restart local v3    # "result":I
    goto :goto_1

    .line 1102
    .end local v1    # "digits":I
    .end local v3    # "result":I
    :cond_7
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 1104
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3    # "result":I
    goto :goto_1

    .line 1108
    .end local v3    # "result":I
    :cond_8
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3    # "result":I
    goto :goto_1
.end method

.method private static shiftIntBits(II)I
    .locals 3
    .param p0, "bits"    # I
    .param p1, "digits"    # I

    .prologue
    .line 1118
    if-lez p1, :cond_0

    .line 1119
    shl-int v1, p0, p1

    .line 1131
    :goto_0
    return v1

    .line 1122
    :cond_0
    neg-int v0, p1

    .line 1123
    .local v0, "absDigits":I
    const v1, 0x7fffffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x20

    if-gt v1, v2, :cond_3

    .line 1125
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    .line 1127
    :cond_1
    shr-int v1, p0, v0

    goto :goto_0

    .line 1129
    :cond_2
    shr-int v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1131
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static shiftLongBits(JJ)J
    .locals 10
    .param p0, "bits"    # J
    .param p2, "digits"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x1

    .line 1137
    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 1138
    long-to-int v2, p2

    shl-long v2, p0, v2

    .line 1150
    :cond_0
    :goto_0
    return-wide v2

    .line 1141
    :cond_1
    neg-long v0, p2

    .line 1142
    .local v0, "absDigits":J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x40

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1144
    sub-long v4, v0, v8

    long-to-int v4, v4

    shr-long v4, p0, v4

    and-long/2addr v4, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1146
    :cond_2
    long-to-int v2, v0

    shr-long v2, p0, v2

    goto :goto_0

    .line 1148
    :cond_3
    long-to-int v2, v0

    shr-long v2, p0, v2

    add-long/2addr v2, v8

    goto :goto_0
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 710
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 733
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 2
    .param p0, "angrad"    # D

    .prologue
    .line 843
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 2
    .param p0, "angdeg"    # D

    .prologue
    .line 864
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 888
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 894
    :goto_0
    return-wide v0

    .line 890
    :cond_0
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 891
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, 0x408e580000000000L    # 971.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 893
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 894
    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 917
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
