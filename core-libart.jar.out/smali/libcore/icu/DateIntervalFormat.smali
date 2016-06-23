.class public final Llibcore/icu/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/DateIntervalFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

.field private static final DAY_IN_MS:I = 0x5265c00

.field private static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Llibcore/icu/DateIntervalFormat$FormatterCache;

    invoke-direct {v0}, Llibcore/icu/DateIntervalFormat$FormatterCache;-><init>()V

    sput-object v0, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 27
    invoke-static {p0, p1}, Llibcore/icu/DateIntervalFormat;->destroyDateIntervalFormat(J)V

    return-void
.end method

.method private static native createDateIntervalFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static dayDistance(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    .line 228
    invoke-static {p1}, Llibcore/icu/DateIntervalFormat;->julianDay(Ljava/util/Calendar;)I

    move-result v0

    invoke-static {p0}, Llibcore/icu/DateIntervalFormat;->julianDay(Ljava/util/Calendar;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static native destroyDateIntervalFormat(J)V
.end method

.method private static fallInSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x2

    .line 215
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fallInSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fallOnDifferentDates(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native formatDateInterval(JJJ)Ljava/lang/String;
.end method

.method public static formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "startMs"    # J
    .param p2, "endMs"    # J
    .param p4, "flags"    # I
    .param p5, "olsonId"    # Ljava/lang/String;

    .prologue
    .line 67
    and-int/lit16 v0, p4, 0x2000

    if-eqz v0, :cond_0

    .line 68
    const-string p5, "UTC"

    .line 70
    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    .local v1, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Llibcore/icu/DateIntervalFormat;->formatDateRange(Ljava/util/Locale;Ljava/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatDateRange(Ljava/util/Locale;Ljava/util/TimeZone;JJI)Ljava/lang/String;
    .locals 14
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J
    .param p6, "flags"    # I

    .prologue
    .line 77
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 78
    .local v11, "startCalendar":Ljava/util/Calendar;
    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    cmp-long v2, p2, p4

    if-nez v2, :cond_2

    .line 82
    move-object v8, v11

    .line 88
    .local v8, "endCalendar":Ljava/util/Calendar;
    :goto_0
    invoke-static {v8}, Llibcore/icu/DateIntervalFormat;->isMidnight(Ljava/util/Calendar;)Z

    move-result v9

    .line 94
    .local v9, "endsAtMidnight":Z
    cmp-long v2, p2, p4

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    invoke-static {v11, v8}, Llibcore/icu/DateIntervalFormat;->dayDistance(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 96
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->roll(IZ)V

    .line 97
    const-wide/32 v2, 0x5265c00

    sub-long p4, p4, v2

    .line 100
    :cond_1
    move/from16 v0, p6

    invoke-static {v11, v8, v0}, Llibcore/icu/DateIntervalFormat;->toSkeleton(Ljava/util/Calendar;Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "skeleton":Ljava/lang/String;
    sget-object v12, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    monitor-enter v12

    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Llibcore/icu/DateIntervalFormat;->getFormatter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Llibcore/icu/DateIntervalFormat;->formatDateInterval(JJJ)Ljava/lang/String;

    move-result-object v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 84
    .end local v8    # "endCalendar":Ljava/util/Calendar;
    .end local v9    # "endsAtMidnight":Z
    .end local v10    # "skeleton":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 85
    .restart local v8    # "endCalendar":Ljava/util/Calendar;
    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 103
    .restart local v9    # "endsAtMidnight":Z
    .restart local v10    # "skeleton":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getFormatter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "tzName"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    invoke-virtual {v4, v3}, Llibcore/icu/DateIntervalFormat$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 109
    .local v2, "formatter":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 114
    :goto_0
    return-wide v0

    .line 112
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/icu/DateIntervalFormat;->createDateIntervalFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    .local v0, "address":J
    sget-object v4, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Llibcore/icu/DateIntervalFormat$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static isMidnight(Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    .line 198
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isThisYear(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 224
    .local v0, "now":Ljava/util/Calendar;
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static julianDay(Ljava/util/Calendar;)I
    .locals 6
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 233
    .local v0, "utcMs":J
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x253d8c    # 3.419992E-39f

    add-int/2addr v2, v3

    return v2
.end method

.method private static onTheHour(Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    .line 205
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toSkeleton(Ljava/util/Calendar;Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 6
    .param p0, "startCalendar"    # Ljava/util/Calendar;
    .param p1, "endCalendar"    # Ljava/util/Calendar;
    .param p2, "flags"    # I

    .prologue
    .line 118
    const/high16 v4, 0x80000

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    .line 119
    const v4, 0x1c000

    or-int/2addr p2, v4

    .line 122
    :cond_0
    const-string v1, "MMMM"

    .line 123
    .local v1, "monthPart":Ljava/lang/String;
    const/high16 v4, 0x20000

    and-int/2addr v4, p2

    if-eqz v4, :cond_e

    .line 124
    const-string v1, "M"

    .line 129
    :cond_1
    :goto_0
    const-string v3, "EEEE"

    .line 130
    .local v3, "weekPart":Ljava/lang/String;
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    .line 131
    const-string v3, "EEE"

    .line 134
    :cond_2
    const-string v2, "j"

    .line 135
    .local v2, "timePart":Ljava/lang/String;
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_f

    .line 136
    const-string v2, "H"

    .line 144
    :cond_3
    :goto_1
    and-int/lit16 v4, p2, 0x4000

    if-eqz v4, :cond_4

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_10

    .line 145
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Llibcore/icu/DateIntervalFormat;->fallOnDifferentDates(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 155
    or-int/lit8 p2, p2, 0x10

    .line 158
    :cond_6
    invoke-static {p0, p1}, Llibcore/icu/DateIntervalFormat;->fallInSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_7

    .line 159
    and-int/lit8 p2, p2, -0x3

    .line 160
    and-int/lit8 p2, p2, -0x2

    .line 163
    :cond_7
    and-int/lit8 v4, p2, 0x13

    if-nez v4, :cond_8

    .line 164
    or-int/lit8 p2, p2, 0x10

    .line 168
    :cond_8
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_9

    .line 169
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_12

    .line 178
    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v4, p2, 0x30

    if-eqz v4, :cond_b

    .line 180
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_a

    .line 181
    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_b

    .line 185
    const-string v4, "d"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_b
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_c

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_c
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_d

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 125
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "timePart":Ljava/lang/String;
    .end local v3    # "weekPart":Ljava/lang/String;
    :cond_e
    const/high16 v4, 0x10000

    and-int/2addr v4, p2

    if-eqz v4, :cond_1

    .line 126
    const-string v1, "MMM"

    goto/16 :goto_0

    .line 137
    .restart local v2    # "timePart":Ljava/lang/String;
    .restart local v3    # "weekPart":Ljava/lang/String;
    :cond_f
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_3

    .line 138
    const-string v2, "h"

    goto :goto_1

    .line 149
    :cond_10
    invoke-static {p0}, Llibcore/icu/DateIntervalFormat;->onTheHour(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {p1}, Llibcore/icu/DateIntervalFormat;->onTheHour(Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 150
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 171
    :cond_12
    and-int/lit8 v4, p2, 0x8

    if-nez v4, :cond_9

    .line 173
    invoke-static {p0, p1}, Llibcore/icu/DateIntervalFormat;->fallInSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {p0}, Llibcore/icu/DateIntervalFormat;->isThisYear(Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 174
    :cond_13
    or-int/lit8 p2, p2, 0x4

    goto :goto_3
.end method
