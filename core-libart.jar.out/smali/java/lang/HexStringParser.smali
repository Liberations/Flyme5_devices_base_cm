.class final Ljava/lang/HexStringParser;
.super Ljava/lang/Object;
.source "HexStringParser.java"


# static fields
.field private static final BINARY_EXPONENT:Ljava/lang/String; = "[pP]([+-]?\\d+)"

.field private static final DOUBLE_EXPONENT_WIDTH:I = 0xb

.field private static final DOUBLE_MANTISSA_WIDTH:I = 0x34

.field private static final FLOAT_EXPONENT_WIDTH:I = 0x8

.field private static final FLOAT_MANTISSA_WIDTH:I = 0x17

.field private static final FLOAT_TYPE_SUFFIX:Ljava/lang/String; = "[fFdD]?"

.field private static final HEX_PATTERN:Ljava/lang/String; = "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

.field private static final HEX_RADIX:I = 0x10

.field private static final HEX_SIGNIFICANT:Ljava/lang/String; = "0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)"

.field private static final MAX_SIGNIFICANT_LENGTH:I = 0xf

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final EXPONENT_BASE:J

.field private final EXPONENT_WIDTH:I

.field private final MANTISSA_MASK:J

.field private final MANTISSA_WIDTH:I

.field private final MAX_EXPONENT:J

.field private final MIN_EXPONENT:J

.field private abandonedNumber:Ljava/lang/String;

.field private exponent:J

.field private mantissa:J

.field private sign:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "exponentWidth"    # I
    .param p2, "mantissaWidth"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 76
    iput p1, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    .line 77
    iput p2, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    .line 79
    add-int/lit8 v0, p1, -0x1

    shl-long v0, v2, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    .line 80
    shl-long v0, v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    .line 81
    iget v0, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    .line 82
    shl-long v0, v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    .line 83
    return-void
.end method

.method private checkedAddExponent(J)V
    .locals 9
    .param p1, "offset"    # J

    .prologue
    .line 205
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    add-long v2, v4, p1

    .line 206
    .local v2, "result":J
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 207
    .local v0, "expSign":I
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int/2addr v1, v0

    if-lez v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 208
    int-to-long v4, v0

    const-wide v6, 0x7fffffffffffffffL

    mul-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    goto :goto_0
.end method

.method private countBitsLength(J)I
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 314
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 315
    .local v0, "leadingZeros":I
    rsub-int/lit8 v1, v0, 0x40

    return v1
.end method

.method private discardTrailingBits(J)V
    .locals 7
    .param p1, "num"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 246
    long-to-int v2, p1

    shl-long v2, v4, v2

    xor-long v0, v2, v4

    .line 247
    .local v0, "mask":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 248
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    long-to-int v4, p1

    shr-long/2addr v2, v4

    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 249
    return-void
.end method

.method private fitMantissaInDesiredWidth(I)V
    .locals 4
    .param p1, "desiredWidth"    # I

    .prologue
    .line 234
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v2, v3}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v0

    .line 235
    .local v0, "bitLength":I
    if-le v0, p1, :cond_0

    .line 236
    sub-int v1, v0, p1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Ljava/lang/HexStringParser;->discardTrailingBits(J)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    sub-int v1, p1, v0

    shl-long/2addr v2, v1

    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    goto :goto_0
.end method

.method private getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strIntegerPart"    # Ljava/lang/String;
    .param p2, "strDecimalPart"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "significand":Ljava/lang/String;
    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const-string v0, "0"

    .line 285
    :cond_0
    return-object v0
.end method

.method private getOffset(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "strIntegerPart"    # Ljava/lang/String;
    .param p2, "strDecimalPart"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    .line 295
    const-string v3, "^0+"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "leadingNumber":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 310
    .end local v1    # "leadingNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 305
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 309
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "leadingNumber":Ljava/lang/String;
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;Z)J
    .locals 8
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "isDouble"    # Z

    .prologue
    .line 104
    sget-object v4, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 105
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid hex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_0

    const-string v4, "double"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string v4, "float"

    goto :goto_0

    .line 110
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "signStr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "significantStr":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "exponentStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/lang/HexStringParser;->parseHexSign(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->parseExponent(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v3}, Ljava/lang/HexStringParser;->parseMantissa(Ljava/lang/String;)V

    .line 118
    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    iget v7, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    add-int/2addr v6, v7

    shl-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    .line 119
    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    shl-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 120
    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    or-long/2addr v4, v6

    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/HexStringParser;

    const/16 v1, 0xb

    const/16 v4, 0x34

    invoke-direct {v0, v1, v4}, Ljava/lang/HexStringParser;-><init>(II)V

    .line 90
    .local v0, "parser":Ljava/lang/HexStringParser;
    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    move-result-wide v2

    .line 91
    .local v2, "result":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method private parseExponent(Ljava/lang/String;)V
    .locals 8
    .param p1, "exponentStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 134
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 135
    .local v2, "leadingChar":C
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1

    const/4 v1, -0x1

    .line 136
    .local v1, "expSign":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    int-to-long v4, v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 142
    iget-wide v4, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    invoke-direct {p0, v4, v5}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    return-void

    .end local v1    # "expSign":I
    :cond_1
    move v1, v3

    .line 135
    goto :goto_0

    .line 143
    .restart local v1    # "expSign":I
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    int-to-long v4, v1

    const-wide v6, 0x7fffffffffffffffL

    mul-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    goto :goto_1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 4
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/HexStringParser;

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3}, Ljava/lang/HexStringParser;-><init>(II)V

    .line 99
    .local v0, "parser":Ljava/lang/HexStringParser;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    .line 100
    .local v1, "result":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method private parseHexSign(Ljava/lang/String;)V
    .locals 2
    .param p1, "signStr"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Ljava/lang/HexStringParser;->sign:J

    .line 128
    return-void

    .line 127
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private parseMantissa(Ljava/lang/String;)V
    .locals 12
    .param p1, "significantStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/16 v10, 0xf

    .line 152
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "strings":[Ljava/lang/String;
    aget-object v3, v4, v11

    .line 154
    .local v3, "strIntegerPart":Ljava/lang/String;
    array-length v5, v4

    if-le v5, v6, :cond_0

    aget-object v2, v4, v6

    .line 156
    .local v2, "strDecimalPart":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "significand":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    .line 188
    :goto_1
    return-void

    .line 154
    .end local v1    # "significand":Ljava/lang/String;
    .end local v2    # "strDecimalPart":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 162
    .restart local v1    # "significand":Ljava/lang/String;
    .restart local v2    # "strDecimalPart":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "offset":I
    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    .line 165
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v8, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 166
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setInfinite()V

    goto :goto_1

    .line 170
    :cond_2
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v8, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 171
    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_4

    .line 176
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_4
    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 182
    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 183
    invoke-direct {p0}, Ljava/lang/HexStringParser;->processNormalNumber()V

    goto :goto_1

    .line 185
    :cond_5
    invoke-direct {p0}, Ljava/lang/HexStringParser;->processSubNormalNumber()V

    goto :goto_1
.end method

.method private processNormalNumber()V
    .locals 6

    .prologue
    .line 215
    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x2

    .line 216
    .local v0, "desiredWidth":I
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 217
    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    .line 218
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v4, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v2, v4

    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 219
    return-void
.end method

.method private processSubNormalNumber()V
    .locals 6

    .prologue
    .line 222
    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x1

    .line 223
    .local v0, "desiredWidth":I
    iget-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 224
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 225
    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    .line 226
    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    .line 227
    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v4, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v2, v4

    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 228
    return-void
.end method

.method private round()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v6, 0x1

    .line 257
    iget-object v7, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    const-string v8, "0+"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v6

    .line 260
    .local v1, "moreThanZero":Z
    :goto_0
    iget-wide v8, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v8, v10

    long-to-int v0, v8

    .line 261
    .local v0, "lastDiscardedBit":I
    iget-wide v8, p0, Ljava/lang/HexStringParser;->mantissa:J

    shr-long/2addr v8, v6

    iput-wide v8, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 262
    iget-wide v8, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v8, v10

    long-to-int v5, v8

    .line 264
    .local v5, "tailBitInMantissa":I
    if-ne v0, v6, :cond_1

    if-nez v1, :cond_0

    if-ne v5, v6, :cond_1

    .line 265
    :cond_0
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    .line 266
    .local v3, "oldLength":I
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 267
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v2

    .line 270
    .local v2, "newLength":I
    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    if-lt v3, v6, :cond_1

    if-le v2, v3, :cond_1

    .line 271
    invoke-direct {p0, v10, v11}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    .line 274
    .end local v2    # "newLength":I
    .end local v3    # "oldLength":I
    :cond_1
    return-void

    .line 258
    .end local v0    # "lastDiscardedBit":I
    .end local v1    # "moreThanZero":Z
    .end local v5    # "tailBitInMantissa":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setInfinite()V
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 193
    return-void
.end method

.method private setZero()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    .line 197
    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    .line 198
    return-void
.end method
