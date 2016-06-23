.class public final Llibcore/icu/NativeDecimalFormat;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/NativeDecimalFormat$1;,
        Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    }
.end annotation


# static fields
.field private static final ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

.field private static final UNUM_CURRENCY_CODE:I = 0x5

.field private static final UNUM_CURRENCY_SYMBOL:I = 0x8

.field private static final UNUM_DECIMAL_ALWAYS_SHOWN:I = 0x2

.field private static final UNUM_DECIMAL_SEPARATOR_SYMBOL:I = 0x0

.field private static final UNUM_DEFAULT_RULESET:I = 0x6

.field private static final UNUM_DIGIT_SYMBOL:I = 0x5

.field private static final UNUM_EXPONENTIAL_SYMBOL:I = 0xb

.field private static final UNUM_FORMAT_SYMBOL_COUNT:I = 0x12

.field private static final UNUM_FORMAT_WIDTH:I = 0xd

.field private static final UNUM_FRACTION_DIGITS:I = 0x8

.field private static final UNUM_GROUPING_SEPARATOR_SYMBOL:I = 0x1

.field private static final UNUM_GROUPING_SIZE:I = 0xa

.field private static final UNUM_GROUPING_USED:I = 0x1

.field private static final UNUM_INFINITY_SYMBOL:I = 0xe

.field private static final UNUM_INTEGER_DIGITS:I = 0x5

.field private static final UNUM_INTL_CURRENCY_SYMBOL:I = 0x9

.field private static final UNUM_LENIENT_PARSE:I = 0x13

.field private static final UNUM_MAX_FRACTION_DIGITS:I = 0x6

.field private static final UNUM_MAX_INTEGER_DIGITS:I = 0x3

.field private static final UNUM_MAX_SIGNIFICANT_DIGITS:I = 0x12

.field private static final UNUM_MINUS_SIGN_SYMBOL:I = 0x6

.field private static final UNUM_MIN_FRACTION_DIGITS:I = 0x7

.field private static final UNUM_MIN_INTEGER_DIGITS:I = 0x4

.field private static final UNUM_MIN_SIGNIFICANT_DIGITS:I = 0x11

.field private static final UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:I = 0x11

.field private static final UNUM_MONETARY_SEPARATOR_SYMBOL:I = 0xa

.field private static final UNUM_MULTIPLIER:I = 0x9

.field private static final UNUM_NAN_SYMBOL:I = 0xf

.field private static final UNUM_NEGATIVE_PREFIX:I = 0x2

.field private static final UNUM_NEGATIVE_SUFFIX:I = 0x3

.field private static final UNUM_PADDING_CHARACTER:I = 0x4

.field private static final UNUM_PADDING_POSITION:I = 0xe

.field private static final UNUM_PAD_ESCAPE_SYMBOL:I = 0xd

.field private static final UNUM_PARSE_INT_ONLY:I = 0x0

.field private static final UNUM_PATTERN_SEPARATOR_SYMBOL:I = 0x2

.field private static final UNUM_PERCENT_SYMBOL:I = 0x3

.field private static final UNUM_PERMILL_SYMBOL:I = 0xc

.field private static final UNUM_PLUS_SIGN_SYMBOL:I = 0x7

.field private static final UNUM_POSITIVE_PREFIX:I = 0x0

.field private static final UNUM_POSITIVE_SUFFIX:I = 0x1

.field private static final UNUM_PUBLIC_RULESETS:I = 0x7

.field private static final UNUM_ROUNDING_INCREMENT:I = 0xc

.field private static final UNUM_ROUNDING_MODE:I = 0xb

.field private static final UNUM_SECONDARY_GROUPING_SIZE:I = 0xf

.field private static final UNUM_SIGNIFICANT_DIGITS_USED:I = 0x10

.field private static final UNUM_SIGNIFICANT_DIGIT_SYMBOL:I = 0x10

.field private static final UNUM_ZERO_DIGIT_SYMBOL:I = 0x4


# instance fields
.field private address:J

.field private lastPattern:Ljava/lang/String;

.field private negPrefNull:Z

.field private negSuffNull:Z

.field private transient parseBigDecimal:Z

.field private posPrefNull:Z

.field private posSuffNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/text/Format$Field;

    const/4 v1, 0x0

    sget-object v2, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    sput-object v0, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "dfs"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v16

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    return-void

    .line 163
    :catch_0
    move-exception v17

    .line 164
    .local v17, "npe":Ljava/lang/NullPointerException;
    throw v17

    .line 165
    .end local v17    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v18

    .line 166
    .local v18, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V
    .locals 17
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "data"    # Llibcore/icu/LocaleData;

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    move-object/from16 v0, p2

    iget-object v3, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v4, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v5, 0x23

    move-object/from16 v0, p2

    iget-object v6, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v7, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p2

    iget-object v8, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v11, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p2

    iget-object v12, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v13, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p2

    iget-object v14, v0, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v15, v0, Llibcore/icu/LocaleData;->perMill:C

    move-object/from16 v0, p2

    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    move/from16 v16, v0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 178
    return-void
.end method

.method static synthetic access$100()[Ljava/text/Format$Field;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    return-object v0
.end method

.method private static applyPattern(JZLjava/lang/String;)V
    .locals 6
    .param p0, "addr"    # J
    .param p2, "localized"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 551
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/icu/NativeDecimalFormat;->applyPatternImpl(JZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "npe":Ljava/lang/NullPointerException;
    throw v0

    .line 554
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 555
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native applyPatternImpl(JZLjava/lang/String;)V
.end method

.method private static native cloneImpl(J)J
.end method

.method private static native close(J)V
.end method

.method private static native formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native getAttribute(JI)I
.end method

.method private static native getTextAttribute(JI)Ljava/lang/String;
.end method

.method private makeScalePositive(ILjava/lang/StringBuilder;)I
    .locals 2
    .param p1, "scale"    # I
    .param p2, "val"    # Ljava/lang/StringBuilder;

    .prologue
    .line 377
    if-gez p1, :cond_1

    .line 378
    neg-int p1, p1

    .line 379
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 380
    const/16 v1, 0x30

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    :cond_0
    const/4 p1, 0x0

    .line 384
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method private static native open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J
.end method

.method private static native parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;
.end method

.method private static native setAttribute(JII)V
.end method

.method private static native setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V
.end method

.method private static native setRoundingMode(JID)V
.end method

.method private static native setSymbol(JILjava/lang/String;)V
.end method

.method private static native setTextAttribute(JILjava/lang/String;)V
.end method

.method private static native toPatternImpl(JZ)Ljava/lang/String;
.end method

.method private static translateFieldId(Ljava/text/FieldPosition;)I
    .locals 5
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v4, -0x1

    .line 116
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    .line 117
    .local v2, "id":I
    if-lt v2, v4, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 118
    :cond_0
    const/4 v2, -0x1

    .line 120
    :cond_1
    if-ne v2, v4, :cond_2

    .line 121
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 122
    .local v0, "attr":Ljava/text/Format$Field;
    if-eqz v0, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 124
    sget-object v3, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    move v2, v1

    .line 131
    .end local v0    # "attr":Ljava/text/Format$Field;
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 123
    .restart local v0    # "attr":Ljava/text/Format$Field;
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V
    .locals 2
    .param p0, "fp"    # Ljava/text/FieldPosition;
    .param p1, "fpi"    # Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    .prologue
    .line 320
    invoke-static {p0}, Llibcore/icu/NativeDecimalFormat;->translateFieldId(Ljava/text/FieldPosition;)I

    move-result v0

    .line 321
    .local v0, "field":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fieldId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 324
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 325
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 330
    :cond_1
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    .line 342
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    .line 198
    .local v0, "clone":Llibcore/icu/NativeDecimalFormat;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3}, Llibcore/icu/NativeDecimalFormat;->cloneImpl(J)J

    move-result-wide v2

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 199
    iget-object v2, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 200
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 201
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 202
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 203
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v0

    .line 205
    .end local v0    # "clone":Llibcore/icu/NativeDecimalFormat;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "unexpected":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 182
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->close(J)V

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    if-ne p1, p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    instance-of v3, p1, Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 226
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 228
    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    .line 229
    .local v0, "obj":Llibcore/icu/NativeDecimalFormat;
    iget-wide v4, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    iget-wide v6, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 284
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 285
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 286
    .local v1, "result":[C
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 287
    invoke-static {p2, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    .line 289
    :cond_0
    return-object v1
.end method

.method public formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 293
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 294
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 295
    .local v1, "result":[C
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 296
    invoke-static {p2, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    .line 298
    :cond_0
    return-object v1
.end method

.method public formatDouble(DLjava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # D
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 311
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 312
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 313
    .local v1, "result":[C
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 314
    invoke-static {p3, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    .line 316
    :cond_0
    return-object v1
.end method

.method public formatLong(JLjava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 302
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 303
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 304
    .local v1, "result":[C
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 305
    invoke-static {p3, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    .line 307
    :cond_0
    return-object v1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "object == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 349
    :cond_0
    instance-of v9, p1, Ljava/lang/Number;

    if-nez v9, :cond_1

    .line 350
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "object not a Number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v5, p1

    .line 352
    check-cast v5, Ljava/lang/Number;

    .line 353
    .local v5, "number":Ljava/lang/Number;
    new-instance v4, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>(Llibcore/icu/NativeDecimalFormat$1;)V

    .line 355
    .local v4, "fpIter":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    instance-of v9, v5, Ljava/math/BigInteger;

    if-nez v9, :cond_2

    instance-of v9, v5, Ljava/math/BigDecimal;

    if-eqz v9, :cond_3

    .line 356
    :cond_2
    new-instance v8, Ljava/lang/String;

    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v11, v9, v4}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 365
    .local v8, "text":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, v8}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "as":Ljava/text/AttributedString;
    :goto_1
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 368
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->field()Ljava/text/Format$Field;

    move-result-object v1

    .line 369
    .local v1, "field":Ljava/text/Format$Field;
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v9

    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v10

    invoke-virtual {v0, v1, v1, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    .line 357
    .end local v0    # "as":Ljava/text/AttributedString;
    .end local v1    # "field":Ljava/text/Format$Field;
    .end local v8    # "text":Ljava/lang/String;
    :cond_3
    instance-of v9, v5, Ljava/lang/Double;

    if-nez v9, :cond_4

    instance-of v9, v5, Ljava/lang/Float;

    if-eqz v9, :cond_5

    .line 358
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 359
    .local v2, "dv":D
    new-instance v8, Ljava/lang/String;

    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v10, v11, v2, v3, v4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 360
    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    .line 361
    .end local v2    # "dv":D
    .end local v8    # "text":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 362
    .local v6, "lv":J
    new-instance v8, Ljava/lang/String;

    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v10, v11, v6, v7, v4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v6    # "lv":J
    .restart local v0    # "as":Ljava/text/AttributedString;
    :cond_6
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getGroupingSize()I
    .locals 3

    .prologue
    .line 419
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumFractionDigits()I
    .locals 3

    .prologue
    .line 402
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 3

    .prologue
    .line 406
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 3

    .prologue
    .line 410
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 3

    .prologue
    .line 414
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .locals 3

    .prologue
    .line 426
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 437
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 451
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 3

    .prologue
    .line 458
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupingUsed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 470
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 466
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 396
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    invoke-static {v0, v1, p1, p2, v2}, Llibcore/icu/NativeDecimalFormat;->parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "currencySymbol"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    .line 480
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, p2}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    .line 481
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 18
    .param p1, "dfs"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v16

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v17

    invoke-static/range {v2 .. v17}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V

    .line 273
    return-void
.end method

.method public setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V
    .locals 18
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    move-object/from16 v0, p1

    iget-object v4, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v5, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v6, 0x23

    move-object/from16 v0, p1

    iget-object v7, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v8, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p1

    iget-object v9, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v12, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p1

    iget-object v13, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v14, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p1

    iget-object v15, v0, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v0, v0, Llibcore/icu/LocaleData;->perMill:C

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    move/from16 v17, v0

    invoke-static/range {v2 .. v17}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V

    .line 281
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 474
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 475
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v1, 0x2

    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 476
    return-void

    .line 474
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupingSize(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 484
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 485
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 488
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 489
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 490
    return-void

    .line 488
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 493
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 494
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 497
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 498
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 501
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 502
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 505
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 506
    return-void
.end method

.method public setMultiplier(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 509
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 510
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 514
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-nez v0, :cond_0

    .line 515
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 517
    :cond_0
    return-void

    .line 513
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 521
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-nez v0, :cond_0

    .line 522
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 524
    :cond_0
    return-void

    .line 520
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    .line 542
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 545
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 546
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 547
    return-void

    .end local v0    # "i":I
    :cond_0
    move v0, v1

    .line 545
    goto :goto_0
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 527
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 528
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-nez v0, :cond_0

    .line 529
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 531
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 527
    goto :goto_0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 534
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    .line 535
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-nez v0, :cond_0

    .line 536
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 538
    :cond_0
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;D)V
    .locals 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;
    .param p2, "roundingIncrement"    # D

    .prologue
    .line 561
    sget-object v1, Llibcore/icu/NativeDecimalFormat$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 570
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 562
    :pswitch_0
    const/4 v0, 0x0

    .line 572
    .local v0, "nativeRoundingMode":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v0, p2, p3}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(JID)V

    .line 573
    return-void

    .line 563
    .end local v0    # "nativeRoundingMode":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 564
    .end local v0    # "nativeRoundingMode":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 565
    .end local v0    # "nativeRoundingMode":I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 566
    .end local v0    # "nativeRoundingMode":I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 567
    .end local v0    # "nativeRoundingMode":I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 568
    .end local v0    # "nativeRoundingMode":I
    :pswitch_6
    const/4 v0, 0x6

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 569
    .end local v0    # "nativeRoundingMode":I
    :pswitch_7
    const/4 v0, 0x7

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isDecimalSeparatorAlwaysShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",groupingSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",multiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",negativePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",negativeSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",positivePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",positiveSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxIntegerDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minIntegerDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",grouping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
