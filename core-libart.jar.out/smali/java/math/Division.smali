.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideArrayByInt([I[III)I
    .locals 22
    .param p0, "quotient"    # [I
    .param p1, "dividend"    # [I
    .param p2, "dividendLength"    # I
    .param p3, "divisor"    # I

    .prologue
    .line 52
    const-wide/16 v12, 0x0

    .line 53
    .local v12, "rem":J
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v4, v16, v18

    .line 55
    .local v4, "bLong":J
    add-int/lit8 v8, p2, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 56
    const/16 v9, 0x20

    shl-long v16, v12, v9

    aget v9, p1, v8

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    or-long v14, v16, v18

    .line 58
    .local v14, "temp":J
    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-ltz v9, :cond_1

    .line 59
    div-long v10, v14, v4

    .line 60
    .local v10, "quot":J
    rem-long v12, v14, v4

    .line 87
    :cond_0
    :goto_1
    const-wide v16, 0xffffffffL

    and-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v9, v0

    aput v9, p0, v8

    .line 55
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 66
    .end local v10    # "quot":J
    :cond_1
    const/4 v9, 0x1

    ushr-long v2, v14, v9

    .line 67
    .local v2, "aPos":J
    ushr-int/lit8 v9, p3, 0x1

    int-to-long v6, v9

    .line 68
    .local v6, "bPos":J
    div-long v10, v2, v6

    .line 69
    .restart local v10    # "quot":J
    rem-long v12, v2, v6

    .line 71
    const/4 v9, 0x1

    shl-long v16, v12, v9

    const-wide/16 v18, 0x1

    and-long v18, v18, v14

    add-long v12, v16, v18

    .line 72
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 74
    cmp-long v9, v10, v12

    if-gtz v9, :cond_2

    .line 75
    sub-long/2addr v12, v10

    goto :goto_1

    .line 77
    :cond_2
    sub-long v16, v10, v12

    cmp-long v9, v16, v4

    if-gtz v9, :cond_3

    .line 78
    sub-long v16, v4, v10

    add-long v12, v12, v16

    .line 79
    const-wide/16 v16, 0x1

    sub-long v10, v10, v16

    goto :goto_1

    .line 81
    :cond_3
    const/4 v9, 0x1

    shl-long v16, v4, v9

    sub-long v16, v16, v10

    add-long v12, v12, v16

    .line 82
    const-wide/16 v16, 0x2

    sub-long v10, v10, v16

    goto :goto_1

    .line 89
    .end local v2    # "aPos":J
    .end local v6    # "bPos":J
    .end local v10    # "quot":J
    .end local v14    # "temp":J
    :cond_4
    long-to-int v9, v12

    return v9
.end method
