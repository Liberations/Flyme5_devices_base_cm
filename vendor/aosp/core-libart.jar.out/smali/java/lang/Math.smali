.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 58
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 83
    if-ltz p0, :cond_0

    .end local p0    # "i":I
    :goto_0
    return p0

    .restart local p0    # "i":I
    :cond_0
    neg-int p0, p0

    goto :goto_0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .end local p0    # "l":J
    :goto_0
    return-wide p0

    .restart local p0    # "l":J
    :cond_0
    neg-long p0, p0

    goto :goto_0
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
    .line 1009
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1010
    .local v0, "magnitudeBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1011
    .local v2, "signBits":J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 1012
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 1022
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1023
    .local v0, "magnitudeBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1024
    .local v1, "signBits":I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 1025
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
    .locals 6
    .param p0, "d"    # D

    .prologue
    .line 1043
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1044
    .local v0, "bits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long v0, v2, v4

    .line 1045
    long-to-int v2, v0

    add-int/lit16 v2, v2, -0x3ff

    return v2
.end method

.method public static getExponent(F)I
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 1033
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1034
    .local v0, "bits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x17

    .line 1035
    add-int/lit8 v1, v0, -0x7f

    return v1
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
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    .line 453
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    move-wide p2, p0

    .line 468
    .end local p2    # "d2":D
    :cond_0
    :goto_0
    return-wide p2

    .line 456
    .restart local p2    # "d2":D
    :cond_1
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    .line 460
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 461
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 465
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 468
    const-wide/16 p2, 0x0

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 484
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p1, p0

    .line 499
    .end local p1    # "f2":F
    :cond_0
    :goto_0
    return p1

    .line 487
    .restart local p1    # "f2":F
    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 491
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    .line 492
    const/high16 p1, 0x7fc00000    # NaNf

    goto :goto_0

    .line 496
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-nez v0, :cond_0

    .line 499
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 507
    if-le p0, p1, :cond_0

    .end local p0    # "i1":I
    :goto_0
    return p0

    .restart local p0    # "i1":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    .prologue
    .line 515
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
    .line 531
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    .line 546
    .end local p2    # "d2":D
    :cond_0
    :goto_0
    return-wide p2

    .line 534
    .restart local p2    # "d2":D
    :cond_1
    cmpg-double v0, p0, p2

    if-gez v0, :cond_2

    move-wide p2, p0

    .line 535
    goto :goto_0

    .line 538
    :cond_2
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_3

    .line 539
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 543
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 544
    const-wide/high16 p2, -0x8000000000000000L

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 562
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    .line 577
    .end local p1    # "f2":F
    :cond_0
    :goto_0
    return p1

    .line 565
    .restart local p1    # "f2":F
    :cond_1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_2

    move p1, p0

    .line 566
    goto :goto_0

    .line 569
    :cond_2
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_3

    .line 570
    const/high16 p1, 0x7fc00000    # NaNf

    goto :goto_0

    .line 574
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 575
    const/high16 p1, -0x80000000

    goto :goto_0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 585
    if-ge p0, p1, :cond_0

    .end local p0    # "i1":I
    :goto_0
    return p0

    .restart local p0    # "i1":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    .prologue
    .line 593
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

    .line 1053
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    cmpl-double v0, p2, v2

    if-nez v0, :cond_0

    .line 1056
    .end local p2    # "direction":D
    :goto_0
    return-wide p2

    .restart local p2    # "direction":D
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static nextAfter(FD)F
    .locals 9
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    const v2, -0x800001

    const v4, -0x7fffffff

    const/4 v0, 0x0

    .line 1064
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1065
    :cond_0
    const/high16 v0, 0x7fc00000    # NaNf

    .line 1100
    :cond_1
    :goto_0
    return v0

    .line 1067
    :cond_2
    cmpl-float v5, p0, v0

    if-nez v5, :cond_3

    const-wide/16 v6, 0x0

    cmpl-double v5, p1, v6

    if-nez v5, :cond_3

    .line 1068
    double-to-float v0, p1

    goto :goto_0

    .line 1070
    :cond_3
    cmpl-float v5, p0, v3

    if-nez v5, :cond_4

    float-to-double v6, p0

    cmpg-double v5, p1, v6

    if-ltz v5, :cond_5

    :cond_4
    cmpl-float v5, p0, v4

    if-nez v5, :cond_6

    float-to-double v6, p0

    cmpl-double v5, p1, v6

    if-lez v5, :cond_6

    .line 1072
    :cond_5
    cmpl-float v1, p0, v0

    if-gtz v1, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    .line 1074
    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_8

    float-to-double v6, p0

    cmpl-double v5, p1, v6

    if-eqz v5, :cond_8

    .line 1075
    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    .line 1077
    :cond_8
    cmpl-float v1, p0, v1

    if-nez v1, :cond_9

    float-to-double v6, p0

    cmpl-double v1, p1, v6

    if-gtz v1, :cond_a

    :cond_9
    cmpl-float v1, p0, v2

    if-nez v1, :cond_c

    float-to-double v6, p0

    cmpg-double v1, p1, v6

    if-gez v1, :cond_c

    .line 1079
    :cond_a
    cmpl-float v0, p0, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_b
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 1082
    :cond_c
    float-to-double v6, p0

    cmpl-double v1, p1, v6

    if-lez v1, :cond_f

    .line 1083
    cmpl-float v1, p0, v0

    if-lez v1, :cond_d

    .line 1084
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    .line 1086
    :cond_d
    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    .line 1087
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_e
    move v0, v3

    .line 1089
    goto :goto_0

    .line 1091
    :cond_f
    float-to-double v2, p0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_12

    .line 1092
    cmpl-float v1, p0, v0

    if-lez v1, :cond_10

    .line 1093
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_0

    .line 1095
    :cond_10
    cmpg-float v0, p0, v0

    if-gez v0, :cond_11

    .line 1096
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_0

    :cond_11
    move v0, v4

    .line 1098
    goto/16 :goto_0

    .line 1100
    :cond_12
    double-to-float v0, p1

    goto/16 :goto_0
.end method

.method public static nextUp(D)D
    .locals 8
    .param p0, "d"    # D

    .prologue
    const-wide/16 v6, 0x1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v4, 0x0

    .line 1108
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 1119
    :cond_0
    :goto_0
    return-wide v0

    .line 1111
    :cond_1
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_0

    .line 1114
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    .line 1115
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    cmpl-double v0, p0, v4

    if-lez v0, :cond_3

    .line 1117
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0

    .line 1119
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    .line 1128
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    const/high16 v0, 0x7fc00000    # NaNf

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1131
    :cond_1
    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    .line 1134
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    .line 1135
    const/4 v0, 0x1

    goto :goto_0

    .line 1136
    :cond_2
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    .line 1137
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    .line 1139
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static declared-synchronized random()D
    .locals 4

    .prologue
    .line 879
    const-class v1, Ljava/lang/Math;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    .line 882
    :cond_0
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 702
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    .line 703
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 675
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 676
    const-wide/16 v0, 0x0

    .line 678
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0
.end method

.method public static scalb(DI)D
    .locals 20
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .prologue
    .line 1148
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-nez v13, :cond_0

    const-wide/16 v14, 0x0

    cmpl-double v13, p0, v14

    if-nez v13, :cond_1

    :cond_0
    move-wide/from16 v14, p0

    .line 1195
    :goto_0
    return-wide v14

    .line 1152
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1154
    .local v2, "bits":J
    const-wide/high16 v14, -0x8000000000000000L

    and-long v10, v2, v14

    .line 1156
    .local v10, "sign":J
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v14, v2

    const/16 v13, 0x34

    shr-long/2addr v14, v13

    const-wide/16 v16, 0x3ff

    sub-long v14, v14, v16

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 1160
    .local v6, "factor":J
    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v13

    add-int/lit8 v12, v13, -0xc

    .line 1162
    .local v12, "subNormalFactor":I
    if-gez v12, :cond_2

    .line 1164
    const/4 v12, 0x0

    .line 1168
    :goto_1
    const-wide/16 v14, 0x3ff

    cmp-long v13, v6, v14

    if-lez v13, :cond_4

    .line 1169
    const-wide/16 v14, 0x0

    cmpl-double v13, p0, v14

    if-lez v13, :cond_3

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1166
    :cond_2
    int-to-long v14, v12

    sub-long/2addr v6, v14

    goto :goto_1

    .line 1169
    :cond_3
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 1174
    :cond_4
    const-wide/16 v14, -0x3ff

    cmp-long v13, v6, v14

    if-gtz v13, :cond_6

    .line 1176
    const-wide/16 v14, 0x3ff

    add-long/2addr v14, v6

    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 1177
    .local v4, "digits":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x10000000000000L

    cmpg-double v13, v14, v16

    if-gez v13, :cond_5

    .line 1179
    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v2

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v8

    .line 1195
    .end local v4    # "digits":J
    .local v8, "result":J
    :goto_2
    or-long v14, v8, v10

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    goto :goto_0

    .line 1182
    .end local v8    # "result":J
    .restart local v4    # "digits":J
    :cond_5
    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v2

    const-wide/high16 v16, 0x10000000000000L

    or-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v16, v4, v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v8

    .restart local v8    # "result":J
    goto :goto_2

    .line 1185
    .end local v4    # "digits":J
    .end local v8    # "result":J
    :cond_6
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x10000000000000L

    cmpl-double v13, v14, v16

    if-ltz v13, :cond_7

    .line 1187
    const-wide/16 v14, 0x3ff

    add-long/2addr v14, v6

    const/16 v13, 0x34

    shl-long/2addr v14, v13

    const-wide v16, 0xfffffffffffffL

    and-long v16, v16, v2

    or-long v8, v14, v16

    .restart local v8    # "result":J
    goto :goto_2

    .line 1191
    .end local v8    # "result":J
    :cond_7
    const-wide/16 v14, 0x3ff

    add-long/2addr v14, v6

    const/16 v13, 0x34

    shl-long/2addr v14, v13

    add-int/lit8 v13, v12, 0x1

    shl-long v16, v2, v13

    const-wide v18, 0xfffffffffffffL

    and-long v16, v16, v18

    or-long v8, v14, v16

    .restart local v8    # "result":J
    goto :goto_2
.end method

.method public static scalb(FI)F
    .locals 10
    .param p0, "d"    # F
    .param p1, "scaleFactor"    # I

    .prologue
    const/high16 v9, 0x800000

    const/4 v7, 0x0

    const v8, 0x7fffff

    .line 1203
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_0

    cmpl-float v6, p0, v7

    if-nez v6, :cond_1

    :cond_0
    move v6, p0

    .line 1246
    :goto_0
    return v6

    .line 1206
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1207
    .local v0, "bits":I
    const/high16 v6, -0x80000000

    and-int v4, v0, v6

    .line 1208
    .local v4, "sign":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    .line 1211
    .local v2, "factor":I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    .line 1213
    .local v5, "subNormalFactor":I
    if-gez v5, :cond_2

    .line 1215
    const/4 v5, 0x0

    .line 1219
    :goto_1
    const/16 v6, 0x7f

    if-le v2, v6, :cond_4

    .line 1220
    cmpl-float v6, p0, v7

    if-lez v6, :cond_3

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 1217
    :cond_2
    sub-int/2addr v2, v5

    goto :goto_1

    .line 1220
    :cond_3
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 1225
    :cond_4
    const/16 v6, -0x7f

    if-gt v2, v6, :cond_6

    .line 1227
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1228
    .local v1, "digits":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_5

    .line 1230
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .line 1246
    .end local v1    # "digits":I
    .local v3, "result":I
    :goto_2
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    .line 1233
    .end local v3    # "result":I
    .restart local v1    # "digits":I
    :cond_5
    and-int v6, v0, v8

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .restart local v3    # "result":I
    goto :goto_2

    .line 1236
    .end local v1    # "digits":I
    .end local v3    # "result":I
    :cond_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_7

    .line 1238
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3    # "result":I
    goto :goto_2

    .line 1242
    .end local v3    # "result":I
    :cond_7
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3    # "result":I
    goto :goto_2
.end method

.method private static shiftIntBits(II)I
    .locals 7
    .param p0, "bits"    # I
    .param p1, "digits"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1252
    if-lez p1, :cond_1

    .line 1253
    shl-int v2, p0, p1

    .line 1272
    :cond_0
    :goto_0
    return v2

    .line 1256
    :cond_1
    neg-int v0, p1

    .line 1257
    .local v0, "absDigits":I
    const v5, 0x7fffffff

    and-int/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v6, v0, 0x20

    if-le v5, v6, :cond_2

    move v2, v3

    .line 1258
    goto :goto_0

    .line 1260
    :cond_2
    shr-int v2, p0, v0

    .line 1261
    .local v2, "ret":I
    add-int/lit8 v5, v0, -0x1

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_4

    move v1, v4

    .line 1262
    .local v1, "halfBit":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1263
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_3

    .line 1264
    add-int/lit8 v2, v2, 0x1

    .line 1266
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_0

    .line 1267
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_0

    .line 1268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "halfBit":Z
    :cond_4
    move v1, v3

    .line 1261
    goto :goto_1
.end method

.method private static shiftLongBits(JJ)J
    .locals 12
    .param p0, "bits"    # J
    .param p2, "digits"    # J

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x1

    .line 1278
    cmp-long v3, p2, v4

    if-lez v3, :cond_1

    .line 1279
    long-to-int v3, p2

    shl-long v4, p0, v3

    .line 1300
    :cond_0
    :goto_0
    return-wide v4

    .line 1282
    :cond_1
    neg-long v0, p2

    .line 1283
    .local v0, "absDigits":J
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x40

    sub-long/2addr v8, v0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_0

    .line 1286
    long-to-int v3, v0

    shr-long v4, p0, v3

    .line 1287
    .local v4, "ret":J
    sub-long v6, v0, v10

    long-to-int v3, v6

    shr-long v6, p0, v3

    and-long/2addr v6, v10

    cmp-long v3, v6, v10

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 1288
    .local v2, "halfBit":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1291
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    int-to-long v6, v3

    sub-long v8, v0, v10

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    .line 1292
    add-long/2addr v4, v10

    .line 1294
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    int-to-long v6, v3

    sub-long v8, v0, v10

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 1295
    and-long v6, v4, v10

    cmp-long v3, v6, v10

    if-nez v3, :cond_0

    .line 1296
    add-long/2addr v4, v10

    goto :goto_0

    .line 1287
    .end local v2    # "halfBit":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static signum(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 728
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 737
    :cond_0
    :goto_0
    return-wide v0

    .line 731
    :cond_1
    move-wide v0, p0

    .line 732
    .local v0, "sig":D
    cmpl-double v2, p0, v4

    if-lez v2, :cond_2

    .line 733
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 734
    :cond_2
    cmpg-double v2, p0, v4

    if-gez v2, :cond_0

    .line 735
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 760
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    const/high16 v0, 0x7fc00000    # NaNf

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    move v0, p0

    .line 764
    .local v0, "sig":F
    cmpl-float v1, p0, v2

    if-lez v1, :cond_2

    .line 765
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 766
    :cond_2
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    .line 767
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
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
    .locals 4
    .param p0, "angrad"    # D

    .prologue
    .line 924
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "angdeg"    # D

    .prologue
    .line 903
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 948
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 954
    :goto_0
    return-wide v0

    .line 950
    :cond_0
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 951
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, 0x408e580000000000L    # 971.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 953
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 954
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_0
.end method

.method public static ulp(F)F
    .locals 6
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 980
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 981
    const/high16 v2, 0x7fc00000    # NaNf

    .line 999
    :goto_0
    return v2

    .line 982
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 983
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 984
    :cond_1
    cmpl-float v4, p0, v5

    if-eqz v4, :cond_2

    const v4, -0x800001

    cmpl-float v4, p0, v4

    if-nez v4, :cond_3

    .line 985
    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x405a000000000000L    # 104.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 988
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 989
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 990
    .local v0, "hx":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 991
    .local v1, "hy":I
    const v4, 0x7fffffff

    and-int/2addr v4, v0

    if-nez v4, :cond_4

    .line 992
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0

    .line 994
    :cond_4
    if-lez v0, :cond_5

    move v4, v2

    :goto_1
    if-le v0, v1, :cond_6

    :goto_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 999
    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, p0

    goto :goto_0

    :cond_5
    move v4, v3

    .line 994
    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 997
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method
