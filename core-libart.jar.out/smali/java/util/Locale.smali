.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Builder;
    }
.end annotation


# static fields
.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field private static final GRANDFATHERED_LOCALES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field public static final PRC:Ljava/util/Locale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Ljava/util/Locale;

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient cachedIcuLocaleId:Ljava/lang/String;

.field private transient cachedLanguageTag:Ljava/lang/String;

.field private transient cachedToStringResult:Ljava/lang/String;

.field private transient countryCode:Ljava/lang/String;

.field private transient extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient hasValidatedFields:Z

.field private transient languageCode:Ljava/lang/String;

.field private transient scriptCode:Ljava/lang/String;

.field private transient unicodeAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient unicodeKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 140
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 145
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 150
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 155
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 160
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 165
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "FR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 170
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 175
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 180
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, "DE"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 185
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 190
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, "IT"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 195
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, "JP"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 200
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 205
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, "KR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 210
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 215
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 223
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 228
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 233
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 238
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 243
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "GB"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 248
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 279
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 282
    const-string v3, "user.language"

    const-string v4, "en"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "language":Ljava/lang/String;
    const-string v3, "user.region"

    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "region":Ljava/lang/String;
    const-string v3, "user.variant"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 1678
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "country"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string v5, "hashcode"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "language"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "script"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "extensions"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    sput-object v3, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2029
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    .line 2036
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "en-GB-oed"

    const-string v5, "en-GB-x-oed"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-ami"

    const-string v5, "ami"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-bnn"

    const-string v5, "bnn"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-default"

    const-string v5, "en-x-i-default"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-enochian"

    const-string v5, "und-x-i-enochian"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-hak"

    const-string v5, "hak"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-klingon"

    const-string v5, "tlh"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-lux"

    const-string v5, "lb"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-mingo"

    const-string v5, "see-x-i-mingo"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-navajo"

    const-string v5, "nv"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-pwn"

    const-string v5, "pwn"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-tao"

    const-string v5, "tao"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-tay"

    const-string v5, "tay"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "i-tsu"

    const-string v5, "tsu"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "sgn-BE-FR"

    const-string v5, "sfb"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "sgn-BE-NL"

    const-string v5, "vgt"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "sgn-CH-DE"

    const-string v5, "sgg"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "art-lojban"

    const-string v5, "jbo"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "cel-gaulish"

    const-string v5, "xtg-x-cel-gaulish"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "no-bok"

    const-string v5, "nb"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "no-nyn"

    const-string v5, "nn"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "zh-guoyu"

    const-string v5, "cmn"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "zh-hakka"

    const-string v5, "hak"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "zh-min"

    const-string v5, "nan-x-zh-min"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "zh-min-nan"

    const-string v5, "nan"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    sget-object v3, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    const-string v4, "zh-xiang"

    const-string v5, "hsn"

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 870
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 876
    const-string v3, ""

    const-string v4, ""

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 878
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 942
    const-string v4, ""

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 945
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "scriptCode"    # Ljava/lang/String;
    .param p8, "hasValidatedFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p5, "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 891
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",country="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",variant="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 896
    :cond_1
    if-eqz p8, :cond_2

    .line 897
    invoke-static {p1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 898
    iput-object p2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 899
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 912
    :goto_0
    iput-object p4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    .line 914
    if-eqz p8, :cond_4

    .line 915
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 916
    .local v0, "attribsCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 917
    .local v2, "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 923
    .local v1, "extensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {v0, v2, v1}, Ljava/util/Locale;->addUnicodeExtensionToExtensionsMap(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    .line 925
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    .line 926
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    .line 927
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    .line 934
    .end local v0    # "attribsCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "extensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    iput-boolean p8, p0, Ljava/util/Locale;->hasValidatedFields:Z

    .line 935
    return-void

    .line 901
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 902
    const-string v3, ""

    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 903
    const-string v3, ""

    iput-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 904
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0

    .line 906
    :cond_3
    invoke-static {p1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 907
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 908
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0

    .line 929
    :cond_4
    iput-object p5, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    .line 930
    iput-object p6, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    .line 931
    iput-object p7, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    goto :goto_1
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hasValidatedFields"    # Z
    .param p2, "lowerCaseLanguageCode"    # Ljava/lang/String;
    .param p3, "upperCaseCountryCode"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 853
    iput-object p3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 854
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 855
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    .line 857
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    .line 858
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    .line 859
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    .line 861
    iput-boolean p1, p0, Ljava/util/Locale;->hasValidatedFields:Z

    .line 862
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Z)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-static {p0, p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Ljava/util/Locale;->titleCaseAsciiWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 133
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 133
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Locale;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 133
    iget-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Ljava/util/Locale;->isValidTypeList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static addUnicodeExtensionToExtensionsMap(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v5, 0x2d

    .line 1902
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1908
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1911
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1912
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1914
    .local v0, "attributesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1916
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1923
    .end local v0    # "attributesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1924
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1925
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1928
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1930
    .local v2, "keywordsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1931
    .local v1, "keyWord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1933
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1934
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1937
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1944
    .end local v1    # "keyWord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "keywordsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    const/16 v4, 0x75

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 2009
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2012
    .local v0, "adjusted":Ljava/lang/String;
    const-string v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2013
    const-string v0, "iw"

    .line 2020
    :cond_0
    :goto_0
    return-object v0

    .line 2014
    :cond_1
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2015
    const-string v0, "in"

    goto :goto_0

    .line 2016
    :cond_2
    const-string v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2017
    const-string v0, "ji"

    goto :goto_0
.end method

.method private static concatenateRange([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1511
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1512
    if-eq v1, p1, :cond_0

    .line 1513
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1515
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertGrandfatheredTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 2067
    sget-object v1, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2068
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "converted":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "converted":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static extractExtensions([Ljava/lang/String;IILjava/util/Map;)I
    .locals 12
    .param p0, "subtags"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 2097
    const/4 v4, -0x1

    .line 2098
    .local v4, "privateUseExtensionIndex":I
    const/4 v0, -0x1

    .line 2100
    .local v0, "extensionKeyIndex":I
    move v1, p1

    .line 2101
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_9

    .line 2102
    aget-object v5, p0, v1

    .line 2104
    .local v5, "subtag":Ljava/lang/String;
    if-eq v4, v11, :cond_1

    if-ne v0, v4, :cond_1

    move v3, v7

    .line 2110
    .local v3, "parsingPrivateUse":Z
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_7

    if-nez v3, :cond_7

    .line 2115
    if-eq v0, v11, :cond_4

    .line 2116
    add-int/lit8 v9, v1, -0x1

    if-ne v9, v0, :cond_2

    move v1, v0

    .line 2164
    .end local v1    # "i":I
    .end local v3    # "parsingPrivateUse":Z
    .end local v5    # "subtag":Ljava/lang/String;
    :cond_0
    :goto_2
    return v1

    .restart local v1    # "i":I
    .restart local v5    # "subtag":Ljava/lang/String;
    :cond_1
    move v3, v8

    .line 2104
    goto :goto_1

    .line 2120
    .restart local v3    # "parsingPrivateUse":Z
    :cond_2
    aget-object v2, p0, v0

    .line 2121
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {p3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v1, v0

    .line 2122
    goto :goto_2

    .line 2125
    :cond_3
    add-int/lit8 v9, v0, 0x1

    invoke-static {p0, v9, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 2126
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    move v0, v1

    .line 2132
    const-string v9, "x"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2133
    move v4, v1

    .line 2101
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2134
    :cond_6
    if-eq v4, v11, :cond_5

    move v1, v4

    .line 2136
    goto :goto_2

    .line 2138
    :cond_7
    if-eq v0, v11, :cond_0

    .line 2141
    if-eqz v3, :cond_8

    move v9, v7

    :goto_3
    const/16 v10, 0x8

    invoke-static {v5, v9, v10}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_8
    const/4 v9, 0x2

    goto :goto_3

    .line 2150
    .end local v3    # "parsingPrivateUse":Z
    .end local v5    # "subtag":Ljava/lang/String;
    :cond_9
    if-eq v0, v11, :cond_0

    .line 2151
    add-int/lit8 v7, v1, -0x1

    if-ne v7, v0, :cond_a

    move v1, v0

    .line 2152
    goto :goto_2

    .line 2155
    :cond_a
    aget-object v2, p0, v0

    .line 2156
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v1, v0

    .line 2157
    goto :goto_2

    .line 2160
    :cond_b
    add-int/lit8 v7, v0, 0x1

    invoke-static {p0, v7, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 2161
    .restart local v6    # "value":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static extractVariantSubtags([Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .param p0, "subtags"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2078
    .local p3, "normalizedVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2079
    aget-object v1, p0, v0

    .line 2081
    .local v1, "subtag":Ljava/lang/String;
    # invokes: Ljava/util/Locale$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z
    invoke-static {v1}, Ljava/util/Locale$Builder;->access$1300(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2082
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2087
    .end local v1    # "subtag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 815
    if-nez p0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "languageTag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;
    .locals 19
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 2168
    invoke-static/range {p0 .. p0}, Ljava/util/Locale;->convertGrandfatheredTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2169
    .local v10, "converted":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2171
    .local v15, "subtags":[Ljava/lang/String;
    array-length v12, v15

    .line 2172
    .local v12, "lastSubtag":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v15

    if-ge v11, v1, :cond_2

    .line 2173
    aget-object v14, v15, v11

    .line 2174
    .local v14, "subtag":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x8

    if-le v1, v9, :cond_7

    .line 2175
    :cond_0
    if-eqz p1, :cond_1

    .line 2176
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid subtag at index: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, " in tag: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2179
    :cond_1
    add-int/lit8 v12, v11, -0x1

    .line 2186
    .end local v14    # "subtag":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v15, v1

    move/from16 v0, p1

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Locale$Builder;->access$1100(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2187
    .local v2, "languageCode":Ljava/lang/String;
    const-string v5, ""

    .line 2188
    .local v5, "scriptCode":Ljava/lang/String;
    const/4 v13, 0x1

    .line 2189
    .local v13, "nextSubtag":I
    if-le v12, v13, :cond_3

    .line 2190
    aget-object v1, v15, v13

    const/4 v9, 0x0

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v1, v9}, Ljava/util/Locale$Builder;->access$1400(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2191
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2192
    add-int/lit8 v13, v13, 0x1

    .line 2196
    :cond_3
    const-string v3, ""

    .line 2197
    .local v3, "regionCode":Ljava/lang/String;
    if-le v12, v13, :cond_4

    .line 2198
    aget-object v1, v15, v13

    const/4 v9, 0x0

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v1, v9}, Ljava/util/Locale$Builder;->access$1000(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2199
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2200
    add-int/lit8 v13, v13, 0x1

    .line 2204
    :cond_4
    const/16 v16, 0x0

    .line 2205
    .local v16, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-le v12, v13, :cond_5

    .line 2206
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .restart local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-static {v15, v13, v12, v0}, Ljava/util/Locale;->extractVariantSubtags([Ljava/lang/String;IILjava/util/List;)V

    .line 2208
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v13, v1

    .line 2211
    :cond_5
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2212
    .local v8, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    if-le v12, v13, :cond_6

    .line 2213
    new-instance v8, Ljava/util/TreeMap;

    .end local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 2214
    .restart local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {v15, v13, v12, v8}, Ljava/util/Locale;->extractExtensions([Ljava/lang/String;IILjava/util/Map;)I

    move-result v13

    .line 2217
    :cond_6
    if-eq v13, v12, :cond_8

    .line 2218
    if-eqz p1, :cond_8

    .line 2219
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unparseable subtag: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v18, v15, v13

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, " from language tag: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2172
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v5    # "scriptCode":Ljava/lang/String;
    .end local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v13    # "nextSubtag":I
    .end local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "subtag":Ljava/lang/String;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2224
    .end local v14    # "subtag":Ljava/lang/String;
    .restart local v2    # "languageCode":Ljava/lang/String;
    .restart local v3    # "regionCode":Ljava/lang/String;
    .restart local v5    # "scriptCode":Ljava/lang/String;
    .restart local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .restart local v13    # "nextSubtag":I
    .restart local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2225
    .local v6, "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2226
    .local v7, "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2227
    new-instance v6, Ljava/util/TreeSet;

    .end local v6    # "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 2228
    .restart local v6    # "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/TreeMap;

    .end local v7    # "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 2229
    .restart local v7    # "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v6}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 2233
    :cond_9
    const-string v4, ""

    .line 2234
    .local v4, "variantCode":Ljava/lang/String;
    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2235
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2236
    .local v17, "variantsBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_b

    .line 2237
    if-eqz v11, :cond_a

    .line 2238
    const/16 v1, 0x5f

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    :cond_a
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2242
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2245
    .end local v17    # "variantsBuilder":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v1, Ljava/util/Locale;

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 990
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1240
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1837
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1838
    .local v0, "character":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    .line 1841
    :cond_2
    const/4 v2, 0x0

    .line 1845
    .end local v0    # "character":C
    :goto_1
    return v2

    .line 1836
    .restart local v0    # "character":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1845
    .end local v0    # "character":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 1818
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return v2

    .line 1822
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1823
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1824
    .local v0, "character":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 1822
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1829
    .end local v0    # "character":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    const/4 v3, 0x0

    .line 1849
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1850
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    if-le v2, p2, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return v3

    .line 1854
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1855
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1856
    .local v0, "character":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    .line 1854
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1862
    .end local v0    # "character":C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isValidBcp47Alphanum(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "attributeOrType"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 1867
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 1868
    :cond_0
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidTypeList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "lowerCaseTypeList"    # Ljava/lang/String;

    .prologue
    .line 1889
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, "splitList":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1891
    .local v4, "type":Ljava/lang/String;
    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-static {v4, v5, v6}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1892
    const/4 v5, 0x0

    .line 1896
    .end local v4    # "type":Ljava/lang/String;
    :goto_1
    return v5

    .line 1890
    .restart local v4    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1896
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private static joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1992
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1994
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1995
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1996
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_0

    .line 1998
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1995
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2002
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private makeLanguageTag()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x78

    const/4 v11, 0x0

    const/16 v12, 0x2d

    .line 1343
    const-string v4, ""

    .line 1344
    .local v4, "language":Ljava/lang/String;
    const-string v6, ""

    .line 1345
    .local v6, "region":Ljava/lang/String;
    const-string v9, ""

    .line 1346
    .local v9, "variant":Ljava/lang/String;
    const-string v3, ""

    .line 1348
    .local v3, "illFormedVariantSubtags":Ljava/lang/String;
    iget-boolean v10, p0, Ljava/util/Locale;->hasValidatedFields:Z

    if-eqz v10, :cond_6

    .line 1349
    iget-object v4, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 1350
    iget-object v6, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 1353
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    const/16 v11, 0x5f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 1372
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1373
    const-string v4, "und"

    .line 1376
    :cond_0
    const-string v10, "no"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "NO"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "NY"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1377
    const-string v4, "nn"

    .line 1378
    const-string v6, "NO"

    .line 1379
    const-string v9, ""

    .line 1382
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1383
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    iget-object v10, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1386
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1387
    iget-object v10, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1391
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1396
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1403
    .local v0, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1404
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1355
    .end local v0    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v10, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/util/Locale$Builder;->access$1100(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1356
    iget-object v10, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/util/Locale$Builder;->access$1000(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1359
    :try_start_0
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10}, Ljava/util/Locale$Builder;->access$1200(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto/16 :goto_0

    .line 1360
    :catch_0
    move-exception v2

    .line 1365
    .local v2, "ilfe":Ljava/util/IllformedLocaleException;
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Locale;->splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1367
    .local v8, "split":[Ljava/lang/String;
    aget-object v9, v8, v11

    .line 1368
    const/4 v10, 0x1

    aget-object v3, v8, v10

    goto/16 :goto_0

    .line 1410
    .end local v2    # "ilfe":Ljava/util/IllformedLocaleException;
    .end local v8    # "split":[Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v10, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1411
    .local v5, "privateUse":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1412
    const-string v10, "-x-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1420
    if-nez v5, :cond_a

    .line 1421
    const-string v10, "-x-lvariant-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 1423
    :cond_a
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static parseSerializedExtensions(Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p0, "extString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1782
    .local p1, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const-string v12, "-"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1783
    .local v8, "subTags":[Ljava/lang/String;
    array-length v12, v8

    div-int/lit8 v12, v12, 0x2

    new-array v9, v12, [I

    .line 1785
    .local v9, "typeStartIndices":[I
    const/4 v6, 0x0

    .line 1786
    .local v6, "length":I
    const/4 v1, 0x0

    .line 1787
    .local v1, "count":I
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 1788
    .local v7, "subTag":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 1790
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v6, v12

    .line 1793
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 1794
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput v6, v9, v2

    .line 1787
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    .line 1798
    .end local v7    # "subTag":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 1799
    aget v11, v9, v3

    .line 1805
    .local v11, "valueStart":I
    add-int/lit8 v12, v2, -0x1

    if-ne v3, v12, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 1808
    .local v10, "valueEnd":I
    :goto_3
    aget v12, v9, v3

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {p0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1805
    .end local v10    # "valueEnd":I
    :cond_2
    add-int/lit8 v12, v3, 0x1

    aget v12, v9, v12

    add-int/lit8 v10, v12, -0x3

    goto :goto_3

    .line 1811
    .end local v11    # "valueStart":I
    :cond_3
    return-void

    .end local v3    # "i":I
    .restart local v7    # "subTag":Ljava/lang/String;
    :cond_4
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1
.end method

.method public static parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 8
    .param p0, "subtags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 1961
    const/4 v2, 0x0

    .line 1962
    .local v2, "lastKeyword":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .local v5, "subtagsForKeyword":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 1964
    .local v4, "subtag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 1965
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1966
    invoke-static {v5}, Ljava/util/Locale;->joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1970
    :cond_0
    move-object v2, v4

    .line 1963
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 1972
    if-nez v2, :cond_3

    .line 1973
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1975
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1980
    .end local v4    # "subtag":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1981
    invoke-static {v5}, Ljava/util/Locale;->joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    :cond_5
    :goto_2
    return-void

    .line 1982
    :cond_6
    if-eqz v2, :cond_5

    .line 1983
    const-string v6, ""

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private readExtensions(Ljava/lang/String;)V
    .locals 7
    .param p1, "extensions"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x75

    .line 1720
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1721
    .local v0, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1, v0}, Ljava/util/Locale;->parseSerializedExtensions(Ljava/lang/String;Ljava/util/Map;)V

    .line 1722
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    .line 1724
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1725
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1726
    .local v3, "unicodeExtension":Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, "subTags":[Ljava/lang/String;
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1729
    .local v4, "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 1730
    .local v2, "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v4, v2}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 1732
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    .line 1733
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    .line 1735
    .end local v1    # "subTags":[Ljava/lang/String;
    .end local v2    # "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "unicodeExtension":Ljava/lang/String;
    .end local v4    # "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1703
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1704
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v2, "country"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 1705
    const-string v2, "language"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 1706
    const-string v2, "variant"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 1707
    const-string v2, "script"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    .line 1709
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v2, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    .line 1710
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v2, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    .line 1711
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v2, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    .line 1713
    const-string v2, "extensions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1714
    .local v0, "extensions":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1715
    invoke-direct {p0, v0}, Ljava/util/Locale;->readExtensions(Ljava/lang/String;)V

    .line 1717
    :cond_0
    return-void
.end method

.method public static serializeExtensions(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v4, 0x2d

    .line 1750
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1751
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1754
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1755
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1757
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1760
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1766
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1599
    const-class v2, Ljava/util/Locale;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 1600
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "locale == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1602
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, "languageTag":Ljava/lang/String;
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 1604
    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    monitor-exit v2

    return-void
.end method

.method private static splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1447
    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 1448
    .local v4, "normalizedVariant":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1450
    .local v7, "subTags":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v5, v10

    const-string v8, ""

    aput-object v8, v5, v11

    .line 1465
    .local v5, "split":[Ljava/lang/String;
    array-length v2, v7

    .line 1466
    .local v2, "firstInvalidSubtag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 1467
    aget-object v8, v7, v3

    invoke-static {v8, v11, v12}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1468
    move v2, v3

    .line 1473
    :cond_0
    if-nez v2, :cond_2

    .line 1502
    :goto_1
    return-object v5

    .line 1466
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1479
    :cond_2
    move v1, v2

    .line 1480
    .local v1, "firstIllformedSubtag":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 1481
    aget-object v6, v7, v3

    .line 1485
    .local v6, "subTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v12, :cond_4

    .line 1486
    invoke-static {v6}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1487
    move v1, v3

    .line 1480
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1489
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 1490
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1491
    .local v0, "firstChar":C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_5

    const/16 v8, 0x39

    if-gt v0, v8, :cond_5

    invoke-static {v6}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1492
    :cond_5
    move v1, v3

    goto :goto_3

    .line 1495
    .end local v0    # "firstChar":C
    :cond_6
    move v1, v3

    goto :goto_3

    .line 1499
    .end local v6    # "subTag":Ljava/lang/String;
    :cond_7
    invoke-static {v7, v10, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    .line 1500
    invoke-static {v7, v1, v2}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v11

    goto :goto_1
.end method

.method private static titleCaseAsciiWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    .line 1876
    :try_start_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1877
    .local v0, "chars":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0x61

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1878
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1879
    .end local v0    # "chars":[B
    :catch_0
    move-exception v1

    .line 1880
    .local v1, "uoe":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "variantCode"    # Ljava/lang/String;
    .param p3, "scriptCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v3, 0x5f

    .line 1631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1632
    const-string v2, ""

    .line 1675
    :goto_0
    return-object v2

    .line 1639
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1640
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_1
    const/4 v0, 0x1

    .line 1644
    .local v0, "hasScriptOrExtensions":Z
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    .line 1645
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1647
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_5

    .line 1649
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1651
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    if-eqz v0, :cond_9

    .line 1654
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1655
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1661
    :cond_6
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1663
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    :cond_7
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1668
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1669
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1671
    :cond_8
    invoke-static {p4}, Ljava/util/Locale;->serializeExtensions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1642
    .end local v0    # "hasScriptOrExtensions":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1689
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1691
    const-string v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1692
    const-string v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1693
    const-string v1, "script"

    iget-object v2, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1695
    iget-object v1, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1696
    const-string v1, "extensions"

    iget-object v2, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Locale;->serializeExtensions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1699
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1700
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 949
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 960
    if-ne p1, p0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v1

    .line 963
    :cond_1
    instance-of v3, p1, Ljava/util/Locale;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 964
    check-cast v0, Ljava/util/Locale;

    .line 965
    .local v0, "o":Ljava/util/Locale;
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    iget-object v4, v0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "o":Ljava/util/Locale;
    :cond_3
    move v1, v2

    .line 972
    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1025
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    const-string v1, ""

    .line 1039
    :cond_0
    :goto_0
    return-object v1

    .line 1029
    :cond_1
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/util/Locale$Builder;->access$1000(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1032
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    goto :goto_0

    .line 1035
    :cond_2
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1037
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1054
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    const-string v1, ""

    .line 1077
    :cond_0
    :goto_0
    return-object v1

    .line 1065
    :cond_1
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/util/Locale$Builder;->access$1100(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "normalizedLanguage":Ljava/lang/String;
    const-string v2, "und"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1068
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_0

    .line 1073
    :cond_2
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1075
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1084
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1107
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    .local v3, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .end local v3    # "displayLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    add-int/lit8 v1, v1, 0x1

    .line 1111
    :cond_1
    iget-object v6, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1112
    if-ne v1, v7, :cond_2

    .line 1113
    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1116
    .local v4, "displayScript":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    .end local v4    # "displayScript":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    add-int/lit8 v1, v1, 0x1

    .line 1119
    :cond_4
    iget-object v6, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1120
    if-ne v1, v7, :cond_c

    .line 1121
    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, "displayCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .end local v2    # "displayCountry":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    add-int/lit8 v1, v1, 0x1

    .line 1129
    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1130
    if-ne v1, v7, :cond_d

    .line 1131
    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1136
    .local v5, "displayVariant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .end local v5    # "displayVariant":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    add-int/lit8 v1, v1, 0x1

    .line 1139
    :cond_a
    if-le v1, v7, :cond_b

    .line 1140
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1122
    :cond_c
    if-ne v1, v8, :cond_5

    .line 1123
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1132
    :cond_d
    if-eq v1, v8, :cond_e

    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    .line 1133
    :cond_e
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1289
    iget-object v1, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    const-string v0, ""

    .line 1298
    :cond_0
    :goto_0
    return-object v0

    .line 1293
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1164
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    const-string v1, ""

    .line 1186
    :cond_0
    :goto_0
    return-object v1

    .line 1169
    :cond_1
    :try_start_0
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    # invokes: Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Locale$Builder;->access$1200(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1183
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0

    .line 1170
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 2
    .param p1, "extensionKey"    # C

    .prologue
    .line 1544
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1530
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "en-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No 3-letter country code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FormatData_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortCountry"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1202
    :cond_0
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1214
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    const-string v0, ""

    .line 1224
    :cond_0
    return-object v0

    .line 1220
    :cond_1
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No 3-letter language code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FormatData_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortLanguage"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    iget-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 1556
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    .line 1585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1325
    invoke-direct {p0}, Ljava/util/Locale;->makeLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    .line 1328
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1620
    iget-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    .line 1621
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1622
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    .line 1625
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
