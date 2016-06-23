.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient ndf:Llibcore/icu/NativeDecimalFormat;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 831
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    .line 1070
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positivePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positiveSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativeSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "multiplier"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSize"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparatorAlwaysShown"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseBigDecimal"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "roundingMode"

    const-class v4, Ljava/math/RoundingMode;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "symbols"

    const-class v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useExponentialNotation"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minExponentDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 512
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 521
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 522
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 536
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 512
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 550
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 551
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 512
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 556
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 557
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    if-nez p2, :cond_1

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    return-void
.end method

.method private initNative(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 562
    :try_start_0
    new-instance v1, Llibcore/icu/NativeDecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, p1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 567
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 568
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 569
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 570
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1145
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1147
    const-string v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    .line 1148
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positivePrefix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1149
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positiveSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1150
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativePrefix"

    const-string v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1151
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativeSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1152
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    .line 1153
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    .line 1154
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    .line 1155
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1157
    const-string v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 1159
    const-string v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1160
    .local v2, "maximumIntegerDigits":I
    const-string v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 1161
    .local v4, "minimumIntegerDigits":I
    const-string v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1162
    .local v1, "maximumFractionDigits":I
    const-string v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 1168
    .local v3, "minimumFractionDigits":I
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5, v2}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1169
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1171
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1172
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1173
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1174
    const-string v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1176
    const-string v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 1177
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1178
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1179
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1180
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1182
    :cond_0
    return-void
.end method

.method private updateFieldsFromNative()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 605
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 606
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 607
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 608
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1106
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1107
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    const-string v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1112
    const-string v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    const-string v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    const-string v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1116
    const-string v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1117
    const-string v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1118
    const-string v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1119
    const-string v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1120
    const-string v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1121
    const-string v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    const-string v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1123
    const-string v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1124
    const-string v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1125
    const-string v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1126
    const-string v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1127
    const-string v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1128
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1129
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1130
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromNative()V

    .line 584
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromNative()V

    .line 601
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 617
    .local v0, "clone":Ljava/text/DecimalFormat;
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/NativeDecimalFormat;

    iput-object v1, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    .line 618
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 619
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    if-ne p0, p1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    instance-of v3, p1, Ljava/text/DecimalFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 639
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 641
    check-cast v0, Ljava/text/DecimalFormat;

    .line 642
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_4

    iget-object v3, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    iget-object v4, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3, v4}, Llibcore/icu/NativeDecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 679
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 680
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 681
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 686
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 687
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 688
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "position"    # Ljava/text/FieldPosition;

    .prologue
    .line 693
    invoke-direct {p0, p2, p3}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 694
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 695
    check-cast v0, Ljava/math/BigInteger;

    .line 696
    .local v0, "bigInteger":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p3}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v1

    .line 699
    .local v1, "chars":[C
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 705
    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    .end local v1    # "chars":[C
    .end local p1    # "number":Ljava/lang/Object;
    .end local p2    # "buffer":Ljava/lang/StringBuffer;
    :goto_1
    return-object p2

    .line 696
    .restart local v0    # "bigInteger":Ljava/math/BigInteger;
    .restart local p1    # "number":Ljava/lang/Object;
    .restart local p2    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, v0, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C

    move-result-object v1

    goto :goto_0

    .line 701
    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    :cond_1
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 702
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {v2, p1, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 705
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p2

    goto :goto_1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 858
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1, p1, p2}, Llibcore/icu/NativeDecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 859
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_1

    .line 860
    const/4 v0, 0x0

    .line 882
    .end local v0    # "number":Ljava/lang/Number;
    :cond_0
    :goto_0
    return-object v0

    .line 862
    .restart local v0    # "number":Ljava/lang/Number;
    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 863
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 864
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 866
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    .line 869
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 871
    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 872
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 876
    :cond_4
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    .line 877
    :cond_5
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_0

    .line 879
    :cond_6
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 4
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 903
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 904
    .local v0, "instance":Ljava/util/Currency;
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 905
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llibcore/icu/NativeDecimalFormat;->setCurrency(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 2
    .param p1, "value"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 890
    if-eqz p1, :cond_0

    .line 892
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 893
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 895
    :cond_0
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 913
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 914
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 922
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    .line 923
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 931
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    .line 932
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 950
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 951
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumFractionDigits(I)V

    .line 953
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 954
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 963
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 964
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    .line 965
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 974
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 975
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumFractionDigits(I)V

    .line 976
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 985
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 986
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumIntegerDigits(I)V

    .line 987
    return-void
.end method

.method public setMultiplier(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1006
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    .line 1007
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1013
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1020
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseBigDecimal(Z)V

    .line 1047
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 822
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 823
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseIntegerOnly(Z)V

    .line 824
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1027
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1034
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1197
    if-nez p1, :cond_0

    .line 1198
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "roundingMode == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1200
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 1204
    const-wide/16 v0, 0x0

    .line 1205
    .local v0, "roundingIncrement":D
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, p1, v0, v1}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;D)V

    .line 1206
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
