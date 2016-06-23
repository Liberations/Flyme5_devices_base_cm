.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final GMT:Ljava/util/TimeZone;

.field public static final LONG:I = 0x1

.field public static final SHORT:I = 0x0

.field private static final UTC:Ljava/util/TimeZone;

.field private static defaultTimeZone:Ljava/util/TimeZone; = null

.field private static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "^GMT[-+](\\d{1,2})(:?(\\d\\d))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/TimeZone;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "GMT"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 86
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "UTC"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v0, v2, :cond_0

    .line 253
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    return-void
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .locals 5
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .prologue
    const/4 v4, 0x2

    .line 231
    const v3, 0xea60

    div-int v1, p2, v3

    .line 232
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    .line 233
    .local v2, "sign":C
    if-gez v1, :cond_0

    .line 234
    const/16 v2, 0x2d

    .line 235
    neg-int v1, v1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 239
    const-string v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    div-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 243
    if-eqz p1, :cond_2

    .line 244
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .locals 2
    .param p0, "offsetMillis"    # I

    .prologue
    .line 123
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x3

    .line 382
    sget-object v8, Ljava/util/TimeZone;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 383
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v7

    .line 388
    :cond_1
    const/4 v4, 0x0

    .line 390
    .local v4, "minute":I
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, "hour":I
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 392
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 398
    :cond_2
    if-ltz v1, :cond_0

    const/16 v8, 0x17

    if-gt v1, v8, :cond_0

    if-ltz v4, :cond_0

    const/16 v8, 0x3b

    if-gt v4, v8, :cond_0

    .line 402
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 403
    .local v6, "sign":C
    const v7, 0x36ee80

    mul-int/2addr v7, v1

    const v8, 0xea60

    mul-int/2addr v8, v4

    add-int v5, v7, v8

    .line 404
    .local v5, "raw":I
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3

    .line 405
    neg-int v5, v5

    .line 408
    :cond_3
    const-string v7, "GMT%c%02d:%02d"

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "cleanId":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v0    # "cleanId":Ljava/lang/String;
    .end local v1    # "hour":I
    .end local v5    # "raw":I
    .end local v6    # "sign":C
    :catch_0
    move-exception v2

    .line 395
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method public static declared-synchronized getDefault()Ljava/util/TimeZone;
    .locals 5

    .prologue
    .line 134
    const-class v4, Ljava/util/TimeZone;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_3

    .line 135
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v1

    .line 136
    .local v1, "tzGetter":Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "zoneName":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    :cond_1
    :try_start_1
    const-string v3, "/etc/timezone"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 150
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 152
    :cond_3
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 136
    .end local v2    # "zoneName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    .restart local v2    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v2, "GMT"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 134
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "zoneName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 348
    const-class v2, Ljava/util/TimeZone;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 349
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "id == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 353
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 354
    const-string v1, "GMT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    sget-object v1, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :goto_0
    monitor-exit v2

    return-object v1

    .line 357
    :cond_1
    :try_start_2
    const-string v1, "UTC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    sget-object v1, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, 0x0

    .line 365
    .local v0, "zone":Ljava/util/TimeZone;
    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 370
    :goto_1
    if-nez v0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    const-string v1, "GMT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 375
    :cond_3
    if-eqz v0, :cond_4

    .end local v0    # "zone":Ljava/util/TimeZone;
    :goto_2
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "zone":Ljava/util/TimeZone;
    :cond_4
    sget-object v1, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_2

    .line 366
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .locals 2
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 443
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    :goto_0
    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit v1

    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    .line 189
    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_0
    invoke-static {p3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "zoneStrings":[[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1, p2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 213
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 209
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 210
    .local v0, "offsetMillis":I
    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr v0, v3

    .line 213
    :cond_2
    invoke-static {v4, v4, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 301
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    goto :goto_0
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    .line 419
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
