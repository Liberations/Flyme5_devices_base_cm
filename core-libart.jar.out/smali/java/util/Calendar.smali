.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final DATE:I = 0x5

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field public static final ERA:I = 0x0

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MINUTE:I = 0xc

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field transient lastDateFieldSet:I

.field transient lastTimeFieldSet:I

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 704
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ERA"

    aput-object v1, v0, v4

    const-string v1, "YEAR"

    aput-object v1, v0, v5

    const-string v1, "MONTH"

    aput-object v1, v0, v6

    const-string v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v7

    const-string v1, "WEEK_OF_MONTH"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DAY_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DAY_OF_WEEK_IN_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DST_OFFSET"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 1364
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "areFieldsSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "fields"

    const-class v3, [I

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "firstDayOfWeek"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isSet"

    const-class v3, [Z

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isTimeSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lenient"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimalDaysInFirstWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "nextStamp"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "time"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zone"

    const-class v4, Ljava/util/TimeZone;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 714
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 715
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    const/16 v1, 0x11

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    .line 719
    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 722
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 723
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 730
    invoke-static {p2}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p2

    .line 731
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 732
    .local v0, "localeData":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 733
    iget-object v1, v0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 734
    return-void
.end method

.method private static checkStyle(I)V
    .locals 3
    .param p0, "style"    # I

    .prologue
    .line 1319
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_0
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 950
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;
    .locals 4
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x2

    .line 1300
    if-ltz p1, :cond_0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_1

    .line 1301
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1303
    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    .line 1304
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 1305
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_0

    .line 1315
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1307
    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1309
    :sswitch_1
    if-ne p2, v2, :cond_2

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1311
    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1313
    :sswitch_3
    if-ne p2, v2, :cond_3

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1305
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 972
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 980
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 988
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 996
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 1362
    :cond_0
    return-void

    .line 1357
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1358
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1359
    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1397
    .local v0, "readFields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "areFieldsSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1398
    const-string v1, "fields"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    .line 1399
    const-string v1, "firstDayOfWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1400
    const-string v1, "isSet"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    check-cast v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1401
    const-string v1, "isTimeSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1402
    const-string v1, "lenient"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1403
    const-string v1, "minimalDaysInFirstWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1404
    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    .line 1405
    const-string v1, "zone"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1406
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1380
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1381
    .local v0, "putFields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "areFieldsSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1382
    const-string v1, "fields"

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1383
    const-string v1, "firstDayOfWeek"

    iget v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1384
    const-string v1, "isSet"

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1385
    const-string v1, "isTimeSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1386
    const-string v1, "lenient"

    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1387
    const-string v1, "minimalDaysInFirstWeek"

    iget v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1388
    const-string v1, "nextStamp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1389
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1390
    const-string v1, "time"

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1391
    const-string v1, "zone"

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1392
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1393
    return-void
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "calendar"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 763
    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 766
    .end local p1    # "calendar":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "calendar":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "calendar"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 782
    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 785
    .end local p1    # "calendar":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "calendar":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 795
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v1, v0

    .line 796
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 799
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x0

    .line 807
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 809
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 810
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 818
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 819
    .local v0, "clone":Ljava/util/Calendar;
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    .line 820
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v2}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    .line 821
    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    iput-object v2, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    return-object v0

    .line 823
    .end local v0    # "clone":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 289
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 6
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1260
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "anotherCalendar == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1262
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1263
    .local v2, "timeInMillis":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1264
    .local v0, "anotherTimeInMillis":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 1265
    const/4 v4, 0x1

    .line 1270
    :goto_0
    return v4

    .line 1267
    :cond_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 1268
    const/4 v4, 0x0

    goto :goto_0

    .line 1270
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected complete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 837
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 839
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 841
    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 842
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 843
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 845
    :cond_1
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 871
    if-ne p0, p1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v1

    .line 874
    :cond_1
    instance-of v3, p1, Ljava/util/Calendar;

    if-nez v3, :cond_2

    move v1, v2

    .line 875
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 877
    check-cast v0, Ljava/util/Calendar;

    .line 878
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 897
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 898
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .local v0, "next":I
    if-ne v4, v0, :cond_0

    move v1, v0

    .line 920
    :goto_0
    return v1

    .line 910
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 911
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    .line 912
    .local v2, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 914
    :cond_1
    move v1, v0

    .line 915
    .local v1, "value":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->roll(IZ)V

    .line 916
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 917
    if-gt v0, v1, :cond_1

    .line 918
    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    .line 919
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 6
    .param p1, "field"    # I

    .prologue
    const/4 v5, 0x0

    .line 928
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    .local v0, "next":I
    if-ne v4, v0, :cond_0

    move v1, v0

    .line 941
    :goto_0
    return v1

    .line 931
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 932
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    .line 933
    .local v2, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 935
    :cond_1
    move v1, v0

    .line 936
    .local v1, "value":I
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->roll(IZ)V

    .line 937
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 938
    if-lt v0, v1, :cond_1

    .line 939
    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    .line 940
    iput-boolean v5, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1291
    if-nez p2, :cond_0

    .line 1292
    const/4 p2, 0x1

    .line 1294
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1296
    .local v1, "value":I
    if-eqz v0, :cond_1

    aget-object v2, v0, v1

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 3
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1341
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    .line 1342
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1344
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 1345
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 1347
    :cond_1
    if-eq p2, v2, :cond_2

    if-nez p2, :cond_3

    .line 1348
    :cond_2
    invoke-direct {p0, p1, v2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 1350
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1033
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 1045
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1049
    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1061
    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d5

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4cf

    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1093
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public roll(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1103
    if-ltz p2, :cond_0

    const/4 v2, 0x1

    .line 1104
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_1

    move v0, p2

    .line 1105
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1106
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->roll(IZ)V

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1103
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "increment":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1104
    .restart local v2    # "increment":Z
    :cond_1
    neg-int v0, p2

    goto :goto_1

    .line 1108
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method public set(II)V
    .locals 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 1122
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1123
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1124
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1125
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    if-ge p1, v2, :cond_0

    .line 1126
    iput p1, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    .line 1128
    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 1129
    :cond_1
    iput p1, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1131
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1132
    iput v3, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1134
    :cond_3
    return-void
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 1142
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1143
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1144
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1145
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 1153
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1154
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1155
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1156
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 1164
    invoke-virtual/range {p0 .. p5}, Ljava/util/Calendar;->set(IIIII)V

    .line 1165
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 1166
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1173
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1174
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1181
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1182
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1188
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1189
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1195
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1196
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 1203
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1204
    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1207
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1209
    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 1215
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v2, :cond_0

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",areFieldsSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lenient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",firstDayOfWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minimalDaysInFirstWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x11

    if-ge v0, v2, :cond_2

    .line 1232
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1233
    sget-object v2, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1235
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1231
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1224
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    const-string v2, "?"

    goto :goto_0

    .line 1238
    .restart local v0    # "i":I
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1241
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
