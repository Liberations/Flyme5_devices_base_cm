.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 830
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "dstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monthLength"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "rawOffset"

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

    const-string v3, "startDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startYear"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useDaylight"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 75
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 90
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 91
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    .prologue
    .line 166
    const v11, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 168
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "daylightSavings"    # I

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 216
    if-gtz p11, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid daylightSavings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 221
    iput p3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 222
    iput p4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 223
    iput p5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 224
    iput p6, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 225
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 226
    iput p7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 227
    iput p8, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 228
    iput p9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 229
    iput p10, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 230
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 231
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "daylightSavings"    # I

    .prologue
    .line 284
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p13

    invoke-direct/range {v1 .. v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 286
    move/from16 v0, p7

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 287
    move/from16 v0, p12

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 288
    return-void
.end method

.method private checkDay(II)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 568
    if-lez p2, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p1

    if-le p2, v0, :cond_1

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    return-void
.end method

.method private checkRange(III)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "time"    # I

    .prologue
    .line 556
    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-le p1, v0, :cond_1

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v0, 0x7

    if-le p2, v0, :cond_3

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_3
    if-ltz p3, :cond_4

    const v0, 0x5265c00

    if-lt p3, v0, :cond_5

    .line 563
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_5
    return-void
.end method

.method private isLeapYear(I)Z
    .locals 3
    .param p1, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    const/16 v2, 0x62e

    if-le p1, v2, :cond_2

    .line 532
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 532
    goto :goto_0

    .line 534
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private mod7(I)I
    .locals 1
    .param p1, "num1"    # I

    .prologue
    .line 538
    rem-int/lit8 v0, p1, 0x7

    .line 539
    .local v0, "rem":I
    if-gez p1, :cond_0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .end local v0    # "rem":I
    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 900
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 901
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "rawOffset"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 902
    const-string v3, "useDaylight"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 903
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_0

    .line 904
    const-string v3, "endMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 905
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 906
    const-string v3, "startMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 907
    const-string v3, "startTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 908
    const-string v3, "startYear"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 910
    :cond_0
    const-string v3, "serialVersionOnStream"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 911
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    .line 912
    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 913
    const-string v3, "endDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 914
    const-string v3, "endDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 915
    const-string v3, "startDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 916
    const-string v3, "startDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 940
    :cond_1
    :goto_0
    return-void

    .line 919
    :cond_2
    const-string v3, "dstSavings"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 920
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    .line 921
    const-string v3, "endMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 922
    const-string v3, "startMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 923
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 924
    .local v1, "length":I
    new-array v2, v1, [B

    .line 925
    .local v2, "values":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 926
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 927
    aget-byte v3, v2, v4

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 928
    aget-byte v3, v2, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 929
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v3, v5, :cond_3

    .line 930
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 932
    :cond_3
    aget-byte v3, v2, v6

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 933
    const/4 v3, 0x3

    aget-byte v3, v2, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 934
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v3, v5, :cond_1

    .line 935
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_0
.end method

.method private setEndMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 574
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_2

    .line 575
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 587
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 588
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    .line 589
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 591
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v4, :cond_7

    .line 592
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 599
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v1, :cond_1

    .line 600
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 602
    :cond_1
    return-void

    .line 576
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-gez v0, :cond_4

    .line 577
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 578
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-gez v0, :cond_3

    .line 579
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 580
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 582
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 585
    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 587
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 589
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_2

    .line 594
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 595
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStartMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 683
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_2

    .line 684
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 696
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 697
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_0

    .line 698
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 700
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v4, :cond_7

    .line 701
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 708
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v1, :cond_1

    .line 709
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 711
    :cond_1
    return-void

    .line 685
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-gez v0, :cond_4

    .line 686
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 687
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-gez v0, :cond_3

    .line 688
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 689
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 691
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 694
    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 696
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 698
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_2

    .line 703
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 704
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 850
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .local v2, "sEndDay":I
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v7, 0x1

    .local v3, "sEndDayOfWeek":I
    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .local v4, "sStartDay":I
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v5, v7, 0x1

    .line 851
    .local v5, "sStartDayOfWeek":I
    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_2

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_0

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_2

    .line 853
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 854
    .local v0, "cal":Ljava/util/Calendar;
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_1

    .line 855
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 856
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 857
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 858
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v7, v11, :cond_1

    .line 859
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 862
    :cond_1
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v7, v10, :cond_2

    .line 863
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 864
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 865
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 866
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_2

    .line 867
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    .line 871
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 872
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "dstSavings"

    iget v9, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 873
    const-string v7, "endDay"

    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 874
    const-string v7, "endDayOfWeek"

    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 875
    const-string v7, "endMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 876
    const-string v7, "endMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 877
    const-string v7, "endTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 878
    const-string v7, "monthLength"

    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    const-string v7, "rawOffset"

    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 880
    const-string v7, "serialVersionOnStream"

    invoke-virtual {v1, v7, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 881
    const-string v7, "startDay"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 882
    const-string v7, "startDayOfWeek"

    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 883
    const-string v7, "startMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 884
    const-string v7, "startMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 885
    const-string v7, "startTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 886
    const-string v7, "startYear"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 887
    const-string v7, "useDaylight"

    iget-boolean v9, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 888
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 889
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 890
    new-array v6, v12, [B

    .line 891
    .local v6, "values":[B
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 892
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_3

    move v7, v8

    :goto_0
    int-to-byte v7, v7

    aput-byte v7, v6, v11

    .line 893
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 894
    const/4 v7, 0x3

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v9, v11, :cond_4

    :goto_1
    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 895
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 896
    return-void

    .line 892
    :cond_3
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 894
    :cond_4
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 300
    .local v0, "zone":Ljava/util/SimpleTimeZone;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 316
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 319
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 320
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 12
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "time"    # I

    .prologue
    .line 343
    if-eqz p1, :cond_0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_0

    .line 344
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid era: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 346
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, p3, v0, v1}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 347
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const/16 v9, 0x1d

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 348
    :cond_1
    move/from16 v0, p4

    invoke-direct {p0, p3, v0}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 351
    :cond_2
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ge p2, v9, :cond_4

    .line 352
    :cond_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 468
    :goto_0
    return v9

    .line 354
    :cond_4
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge v9, v10, :cond_5

    .line 355
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge p3, v9, :cond_7

    .line 356
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 359
    :cond_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-lt p3, v9, :cond_6

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    .line 360
    :cond_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 364
    :cond_7
    const/4 v6, 0x0

    .local v6, "ruleDay":I
    sub-int v9, p5, p4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v4

    .line 365
    .local v4, "firstDayOfMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne p3, v9, :cond_c

    .line 366
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v9, :pswitch_data_0

    .line 401
    :cond_8
    :goto_1
    move/from16 v0, p4

    if-gt v6, v0, :cond_9

    move/from16 v0, p4

    if-ne v6, v0, :cond_c

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    move/from16 v0, p6

    if-ge v0, v9, :cond_c

    .line 402
    :cond_9
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 368
    :pswitch_0
    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 369
    goto :goto_1

    .line 371
    :pswitch_1
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ltz v9, :cond_a

    .line 372
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_1

    .line 375
    :cond_a
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v3, v9, v10

    .line 376
    .local v3, "daysInMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 378
    add-int/lit8 v3, v3, 0x1

    .line 380
    :cond_b
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    .line 386
    goto :goto_1

    .line 388
    .end local v3    # "daysInMonth":I
    :pswitch_2
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 391
    goto :goto_1

    .line 393
    :pswitch_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 396
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v6, v9, :cond_8

    .line 397
    add-int/lit8 v6, v6, -0x7

    goto :goto_1

    .line 406
    :cond_c
    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int v8, v9, v10

    .line 407
    .local v8, "ruleTime":I
    add-int/lit8 v9, p3, 0x1

    rem-int/lit8 v5, v9, 0xc

    .line 408
    .local v5, "nextMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-eq p3, v9, :cond_d

    if-gez v8, :cond_15

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v5, v9, :cond_15

    .line 409
    :cond_d
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v9, :pswitch_data_1

    .line 444
    :cond_e
    :goto_2
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 445
    .local v7, "ruleMonth":I
    if-gez v8, :cond_10

    .line 446
    const v9, 0x5265c00

    div-int v9, v8, v9

    rsub-int/lit8 v2, v9, 0x1

    .line 447
    .local v2, "changeDays":I
    const v9, 0x5265c00

    rem-int v9, v8, v9

    const v10, 0x5265c00

    add-int v8, v9, v10

    .line 448
    sub-int/2addr v6, v2

    .line 449
    if-gtz v6, :cond_10

    .line 450
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_f

    .line 451
    const/16 v7, 0xb

    .line 453
    :cond_f
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v9, v9, v7

    add-int/2addr v6, v9

    .line 454
    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 455
    add-int/lit8 v6, v6, 0x1

    .line 460
    .end local v2    # "changeDays":I
    :cond_10
    if-ne p3, v7, :cond_14

    .line 461
    move/from16 v0, p4

    if-lt v6, v0, :cond_11

    move/from16 v0, p4

    if-ne v6, v0, :cond_15

    move/from16 v0, p6

    if-lt v0, v8, :cond_15

    .line 462
    :cond_11
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    .line 411
    .end local v7    # "ruleMonth":I
    :pswitch_4
    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 412
    goto :goto_2

    .line 414
    :pswitch_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ltz v9, :cond_12

    .line 415
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_2

    .line 418
    :cond_12
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v3, v9, v10

    .line 419
    .restart local v3    # "daysInMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 422
    :cond_13
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    .line 428
    goto :goto_2

    .line 430
    .end local v3    # "daysInMonth":I
    :pswitch_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 433
    goto/16 :goto_2

    .line 435
    :pswitch_7
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 438
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v6, v9, :cond_e

    .line 439
    add-int/lit8 v6, v6, -0x7

    goto/16 :goto_2

    .line 464
    .restart local v7    # "ruleMonth":I
    :cond_14
    if-eq v5, v7, :cond_15

    .line 465
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    .line 468
    .end local v7    # "ruleMonth":I
    :cond_15
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v9, v10

    goto/16 :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOffset(J)I
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 478
    :goto_0
    return v0

    .line 477
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Grego;->timeToFields(J[I)[I

    move-result-object v7

    .line 478
    .local v7, "fields":[I
    const/4 v0, 0x0

    aget v2, v7, v0

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    if-nez v3, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 510
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 511
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_0

    .line 514
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v3, :cond_3

    .line 515
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 517
    :cond_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int v0, v1, v2

    .line 497
    .local v0, "hashCode":I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_0

    .line 498
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 502
    :cond_0
    monitor-exit p0

    return v0

    .line 496
    .end local v0    # "hashCode":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getRawOffset()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSTSavings(I)V
    .locals 3
    .param p1, "milliseconds"    # I

    .prologue
    .line 549
    if-gtz p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "milliseconds <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 553
    return-void
.end method

.method public setEndRule(III)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    .prologue
    .line 617
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 618
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 620
    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 621
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 622
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    .prologue
    .line 640
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 641
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 642
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 643
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 644
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 645
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    .prologue
    .line 664
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 665
    if-eqz p5, :cond_0

    .end local p2    # "day":I
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 666
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 667
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 668
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 669
    return-void

    .line 665
    .restart local p2    # "day":I
    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 679
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 680
    return-void
.end method

.method public setStartRule(III)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    .prologue
    .line 726
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 727
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 729
    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 730
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 731
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    .prologue
    .line 749
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 750
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 751
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 752
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 753
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 754
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    .prologue
    .line 773
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 774
    if-eqz p5, :cond_0

    .end local p2    # "day":I
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 775
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 776
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 777
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 778
    return-void

    .line 774
    .restart local p2    # "day":I
    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 788
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 790
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dstSavings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",useDaylight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startYear="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
