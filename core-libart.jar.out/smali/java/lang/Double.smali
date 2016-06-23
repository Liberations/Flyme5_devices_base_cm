.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_BITS:I = 0xc

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final MANTISSA_BITS:I = 0x34

.field static final MANTISSA_MASK:J = 0xfffffffffffffL

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field static final NON_MANTISSA_BITS:I = 0xc

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field static final SIGN_MASK:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 123
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 137
    return-void
.end method

.method public static compare(DD)I
    .locals 12
    .param p0, "double1"    # D
    .param p2, "double2"    # D

    .prologue
    const/16 v10, 0x3f

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 359
    cmpl-double v7, p0, p2

    if-lez v7, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v4

    .line 362
    :cond_1
    cmpl-double v7, p2, p0

    if-lez v7, :cond_2

    move v4, v5

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    cmpl-double v7, p0, p2

    if-nez v7, :cond_3

    const-wide/16 v8, 0x0

    cmpl-double v7, v8, p0

    if-eqz v7, :cond_3

    move v4, v6

    .line 366
    goto :goto_0

    .line 370
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 371
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    .line 372
    goto :goto_0

    .line 375
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 376
    goto :goto_0

    .line 380
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 381
    .local v0, "d1":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 384
    .local v2, "d2":J
    shr-long v4, v0, v10

    shr-long v6, v2, v10

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_0
.end method

.method public static doubleToLongBits(D)J
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 175
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 176
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 178
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 254
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaN(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 277
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/StringToReal;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .locals 16
    .param p0, "d"    # D

    .prologue
    .line 411
    cmpl-double v12, p0, p0

    if-eqz v12, :cond_0

    .line 412
    const-string v12, "NaN"

    .line 488
    :goto_0
    return-object v12

    .line 414
    :cond_0
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v12, p0, v12

    if-nez v12, :cond_1

    .line 415
    const-string v12, "Infinity"

    goto :goto_0

    .line 417
    :cond_1
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v12, p0, v12

    if-nez v12, :cond_2

    .line 418
    const-string v12, "-Infinity"

    goto :goto_0

    .line 421
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 423
    .local v0, "bitValue":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const/4 v9, 0x1

    .line 425
    .local v9, "negative":Z
    :goto_1
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v12, v0

    const/16 v14, 0x34

    ushr-long v4, v12, v14

    .line 427
    .local v4, "exponent":J
    const-wide v12, 0xfffffffffffffL

    and-long v10, v0, v12

    .line 429
    .local v10, "significand":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    .line 430
    if-eqz v9, :cond_4

    const-string v12, "-0x0.0p0"

    goto :goto_0

    .line 423
    .end local v4    # "exponent":J
    .end local v9    # "negative":Z
    .end local v10    # "significand":J
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 430
    .restart local v4    # "exponent":J
    .restart local v9    # "negative":Z
    .restart local v10    # "significand":J
    :cond_4
    const-string v12, "0x0.0p0"

    goto :goto_0

    .line 433
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v8, "hexString":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_6

    .line 435
    const-string v12, "-0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_9

    .line 441
    const-string v12, "0."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/16 v6, 0xd

    .line 446
    .local v6, "fractionDigits":I
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_7

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 447
    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    .line 448
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 437
    .end local v6    # "fractionDigits":I
    :cond_6
    const-string v12, "0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 451
    .restart local v6    # "fractionDigits":I
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "hexSignificand":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_8

    .line 455
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    .local v2, "digitDiff":I
    move v3, v2

    .line 456
    .end local v2    # "digitDiff":I
    .local v3, "digitDiff":I
    :goto_4
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    if-eqz v3, :cond_8

    .line 457
    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    goto :goto_4

    .line 460
    .end local v3    # "digitDiff":I
    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v12, "p-1022"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 463
    .end local v6    # "fractionDigits":I
    .end local v7    # "hexSignificand":Ljava/lang/String;
    :cond_9
    const-string v12, "1."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 v6, 0xd

    .line 468
    .restart local v6    # "fractionDigits":I
    :goto_6
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_a

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    .line 469
    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    .line 470
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 473
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 476
    .restart local v7    # "hexSignificand":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_b

    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    .restart local v2    # "digitDiff":I
    move v3, v2

    .line 478
    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    :goto_7
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    if-eqz v3, :cond_b

    .line 479
    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    goto :goto_7

    .line 483
    .end local v3    # "digitDiff":I
    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/16 v12, 0x70

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    const-wide/16 v12, 0x3ff

    sub-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 396
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Double;

    .prologue
    .line 160
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 215
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 226
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 227
    .local v0, "v":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
