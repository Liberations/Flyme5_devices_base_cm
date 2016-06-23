.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field private static final CACHED_PATTERNS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IDX_LANGUAGE:I = 0x0

.field private static final IDX_REGION:I = 0x2

.field private static final IDX_SCRIPT:I = 0x1

.field private static final IDX_VARIANT:I = 0x3

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_ZERO_ERROR:I

.field private static availableLocalesCache:[Ljava/util/Locale;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U_FAILURE(I)Z
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 371
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableBreakIteratorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCalendarLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCalendarLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCollatorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCollatorLocalesNative()[Ljava/lang/String;
.end method

.method public static native getAvailableCurrencyCodes()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableDateFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    .line 245
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableNumberFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableNumberFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "languageTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    monitor-enter v4

    .line 280
    :try_start_0
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v3, v0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, "pattern":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 282
    invoke-static {p0, v1}, Llibcore/icu/ICU;->getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v3, v0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    monitor-exit v4

    return-object v2

    .line 286
    .end local v2    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static native getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCldrVersion()Ljava/lang/String;
.end method

.method public static native getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencyDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getCurrencyFractionDigits(Ljava/lang/String;)I
.end method

.method public static native getCurrencyNumericCode(Ljava/lang/String;)I
.end method

.method private static native getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 14
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x4c

    const/16 v12, 0x79

    const/16 v11, 0x64

    const/16 v10, 0x4d

    const/16 v9, 0x27

    .line 292
    const/4 v8, 0x3

    new-array v2, v8, [C

    .line 293
    .local v2, "result":[C
    const/4 v3, 0x0

    .line 294
    .local v3, "resultIndex":I
    const/4 v5, 0x0

    .line 295
    .local v5, "sawDay":Z
    const/4 v6, 0x0

    .line 296
    .local v6, "sawMonth":Z
    const/4 v7, 0x0

    .line 298
    .local v7, "sawYear":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 299
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 300
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    if-eq v0, v13, :cond_0

    if-eq v0, v10, :cond_0

    if-ne v0, v12, :cond_5

    .line 301
    :cond_0
    if-ne v0, v11, :cond_2

    if-nez v5, :cond_2

    .line 302
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    aput-char v11, v2, v3

    .line 303
    const/4 v5, 0x1

    move v3, v4

    .line 298
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    if-eq v0, v13, :cond_3

    if-ne v0, v10, :cond_4

    :cond_3
    if-nez v6, :cond_4

    .line 305
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v10, v2, v3

    .line 306
    const/4 v6, 0x1

    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    .line 307
    :cond_4
    if-ne v0, v12, :cond_1

    if-nez v7, :cond_1

    .line 308
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v12, v2, v3

    .line 309
    const/4 v7, 0x1

    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    .line 311
    :cond_5
    const/16 v8, 0x47

    if-eq v0, v8, :cond_1

    .line 313
    const/16 v8, 0x61

    if-lt v0, v8, :cond_6

    const/16 v8, 0x7a

    if-le v0, v8, :cond_7

    :cond_6
    const/16 v8, 0x41

    if-lt v0, v8, :cond_8

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_8

    .line 314
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad pattern character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    :cond_8
    if-ne v0, v9, :cond_1

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_9

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_9
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 320
    const/4 v8, -0x1

    if-ne v1, v8, :cond_a

    .line 321
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad quoting in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 329
    .end local v0    # "ch":C
    :cond_b
    return-object v2
.end method

.method public static native getDefaultLocale()Ljava/lang/String;
.end method

.method public static getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 402
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 408
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Country(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Language(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    .line 48
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native getIcuVersion()Ljava/lang/String;
.end method

.method public static native getScript(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native getUnicodeVersion()Ljava/lang/String;
.end method

.method static native initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z
.end method

.method public static localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;
    .locals 27
    .param p0, "localeId"    # Ljava/lang/String;

    .prologue
    .line 161
    const/16 v2, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 163
    .local v16, "extensionsIndex":I
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 164
    .local v9, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 165
    .local v8, "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 167
    .local v7, "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    .line 168
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 169
    .restart local v9    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 170
    .restart local v8    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 189
    .restart local v7    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, "extensionsString":Ljava/lang/String;
    const-string v2, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "extensions":[Ljava/lang/String;
    move-object v11, v15

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "len$":I
    .local v19, "i$":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v13, v11, v19

    .line 193
    .local v13, "extension":Ljava/lang/String;
    const-string v2, "attribute="

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "attribute="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 195
    .local v25, "unicodeAttributeValues":Ljava/lang/String;
    const-string v2, "-"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v18, 0x0

    .end local v19    # "i$":I
    .restart local v18    # "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v24, v12, v18

    .line 196
    .local v24, "unicodeAttribute":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 199
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "unicodeAttribute":Ljava/lang/String;
    .end local v25    # "unicodeAttributeValues":Ljava/lang/String;
    .restart local v19    # "i$":I
    :cond_0
    const/16 v2, 0x3d

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .line 201
    .local v23, "separatorIndex":I
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_2

    .line 203
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 204
    .local v26, "value":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 206
    .local v14, "extensionId":C
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v14    # "extensionId":C
    .end local v19    # "i$":I
    .end local v23    # "separatorIndex":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v18, v19, 0x1

    .restart local v18    # "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .restart local v19    # "i$":I
    goto :goto_0

    .line 209
    .restart local v23    # "separatorIndex":I
    :cond_2
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v23, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 216
    .end local v13    # "extension":Ljava/lang/String;
    .end local v15    # "extensions":[Ljava/lang/String;
    .end local v17    # "extensionsString":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v23    # "separatorIndex":I
    :cond_3
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v22, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v22, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v22, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v22, v2

    .line 217
    .local v22, "outputArray":[Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    :goto_3
    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v22, v3

    const/4 v4, 0x2

    aget-object v4, v22, v4

    const/4 v5, 0x3

    aget-object v5, v22, v5

    const/4 v6, 0x1

    aget-object v6, v22, v6

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v2

    .line 220
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 6
    .param p0, "localeNames"    # [Ljava/lang/String;

    .prologue
    .line 234
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 235
    .local v4, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/util/Locale;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 236
    .local v3, "localeName":Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "localeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Locale;

    return-object v5
.end method

.method private static parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "outputArray"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x3

    .line 78
    const/16 v5, 0x5f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 79
    .local v0, "first":I
    const/16 v5, 0x5f

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 80
    .local v1, "second":I
    const/16 v5, 0x5f

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 82
    .local v3, "third":I
    if-ne v0, v10, :cond_0

    .line 83
    aput-object p0, p1, v9

    .line 151
    :goto_0
    return-void

    .line 84
    :cond_0
    if-ne v1, v10, :cond_4

    .line 89
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    .line 90
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 94
    aput-object v2, p1, v11

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 97
    :cond_2
    aput-object v2, p1, v8

    goto :goto_0

    .line 102
    :cond_3
    aput-object v2, p1, v7

    goto :goto_0

    .line 104
    .end local v2    # "secondString":Ljava/lang/String;
    :cond_4
    if-ne v3, v10, :cond_a

    .line 110
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    .line 111
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "secondString":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "thirdString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 116
    aput-object v2, p1, v11

    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 122
    :cond_5
    aput-object v4, p1, v8

    goto :goto_0

    .line 124
    :cond_6
    aput-object v4, p1, v7

    goto :goto_0

    .line 126
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 129
    :cond_8
    aput-object v2, p1, v8

    .line 130
    aput-object v4, p1, v7

    goto :goto_0

    .line 133
    :cond_9
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto :goto_0

    .line 140
    .end local v2    # "secondString":Ljava/lang/String;
    .end local v4    # "thirdString":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    .line 141
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 143
    aput-object v2, p1, v11

    .line 144
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v8

    .line 145
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto/16 :goto_0

    .line 147
    :cond_b
    aput-object v2, p1, v8

    .line 148
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto/16 :goto_0
.end method

.method public static native setDefaultLocale(Ljava/lang/String;)V
.end method

.method private static native toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 350
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
