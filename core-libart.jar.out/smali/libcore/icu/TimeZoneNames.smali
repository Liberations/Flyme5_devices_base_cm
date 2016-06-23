.class public final Llibcore/icu/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZoneNames$ZoneStringsCache;
    }
.end annotation


# static fields
.field public static final LONG_NAME:I = 0x1

.field public static final LONG_NAME_DST:I = 0x3

.field public static final NAME_COUNT:I = 0x5

.field public static final OLSON_NAME:I = 0x0

.field public static final SHORT_NAME:I = 0x2

.field public static final SHORT_NAME_DST:I = 0x4

.field private static final ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final availableTimeZoneIds:[Ljava/lang/String;

.field private static final cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    .line 44
    new-instance v0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    .line 50
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Llibcore/icu/TimeZoneNames$1;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$1;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [[Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Llibcore/icu/TimeZoneNames;->fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public static clearLocaleCache()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 143
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v1, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-virtual {v1, v0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static native fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V
.end method

.method public static forLocale(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 11
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v10, 0x9

    .line 157
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "countryCode":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v8

    invoke-virtual {v8}, Llibcore/util/ZoneInfoDB$TzData;->getZoneTab()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 160
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    const/4 v8, 0x4

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 162
    .local v7, "olsonIdStart":I
    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 163
    .local v6, "olsonIdEnd":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    .line 164
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 166
    :cond_0
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v6    # "olsonIdEnd":I
    .end local v7    # "olsonIdStart":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public static getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "zoneStrings"    # [[Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I

    .prologue
    const/4 v4, 0x1

    .line 114
    new-array v1, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 115
    .local v1, "needle":[Ljava/lang/String;
    sget-object v3, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 116
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 117
    aget-object v2, p0, v0

    .line 118
    .local v2, "row":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 119
    if-ne p3, v4, :cond_0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    .line 124
    .end local v2    # "row":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 119
    .restart local v2    # "row":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x4

    aget-object v3, v2, v3

    goto :goto_0

    .line 121
    :cond_1
    if-ne p3, v4, :cond_2

    aget-object v3, v2, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    aget-object v3, v2, v3

    goto :goto_0

    .line 124
    .end local v2    # "row":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static native getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 134
    :cond_0
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-virtual {v0, p0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method
