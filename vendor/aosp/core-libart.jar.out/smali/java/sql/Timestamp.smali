.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field private static final PADDING:Ljava/lang/String; = "000000000"

.field private static final TIME_FORMAT_REGEX:Ljava/lang/String; = "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

.field private static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 3
    .param p1, "theYear"    # I
    .param p2, "theMonth"    # I
    .param p3, "theDate"    # I
    .param p4, "theHour"    # I
    .param p5, "theMinute"    # I
    .param p6, "theSecond"    # I
    .param p7, "theNano"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 85
    if-ltz p7, :cond_0

    const v0, 0x3b9ac9ff

    if-le p7, v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ns out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "theTime"    # J

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    .line 106
    return-void
.end method

.method private static badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp format must be yyyy-MM-dd HH:mm:ss.fffffffff; was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "date"    # I
    .param p2, "digits"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_0

    .line 388
    const-string v1, "000000000"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    return-void
.end method

.method private setTimeImpl(J)V
    .locals 7
    .param p1, "theTime"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 334
    rem-long v2, p1, v4

    long-to-int v0, v2

    .line 335
    .local v0, "milliseconds":I
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 336
    if-gez v0, :cond_0

    .line 337
    sub-long/2addr p1, v4

    .line 338
    add-int/lit16 v0, v0, 0x3e8

    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 341
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 342
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 408
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Argument cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 412
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 413
    const-string v9, "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

    invoke-static {v9, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 414
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 417
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 418
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 429
    .local v6, "pp":Ljava/text/ParsePosition;
    :try_start_0
    invoke-virtual {v1, p0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_2

    .line 435
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 430
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 447
    .local v5, "position":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v7, v9, v5

    .line 450
    .local v7, "remaining":I
    if-nez v7, :cond_4

    .line 452
    const/4 v4, 0x0

    .line 472
    .local v4, "nanos":I
    :cond_3
    new-instance v8, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/sql/Timestamp;-><init>(J)V

    .line 473
    .local v8, "timestamp":Ljava/sql/Timestamp;
    invoke-virtual {v8, v4}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 475
    return-object v8

    .line 455
    .end local v4    # "nanos":I
    .end local v8    # "timestamp":Ljava/sql/Timestamp;
    :cond_4
    const/4 v9, 0x2

    if-lt v7, v9, :cond_5

    const/16 v9, 0xa

    if-gt v7, v9, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_6

    .line 456
    :cond_5
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 459
    :cond_6
    add-int/lit8 v9, v5, 0x1

    :try_start_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 465
    .restart local v4    # "nanos":I
    if-eqz v4, :cond_3

    .line 466
    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    const/16 v9, 0x9

    if-ge v3, v9, :cond_3

    .line 467
    mul-int/lit8 v4, v4, 0xa

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    .end local v3    # "i":I
    .end local v4    # "nanos":I
    :catch_1
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .locals 8
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 119
    .local v2, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 122
    .local v0, "compareTime":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    cmp-long v6, v2, v0

    if-gez v6, :cond_2

    move v4, v5

    .line 127
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v7

    if-gt v6, v7, :cond_0

    move v4, v5

    .line 136
    goto :goto_0
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .locals 8
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 151
    .local v2, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 154
    .local v0, "compareTime":J
    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v4

    .line 158
    :cond_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    move v4, v5

    .line 159
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 168
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .locals 3
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 218
    invoke-super {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 219
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    .line 221
    .local v2, "thisNano":I
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    .line 222
    .local v1, "thatNano":I
    if-le v2, v1, :cond_1

    .line 223
    const/4 v0, 0x1

    .line 230
    .end local v0    # "result":I
    .end local v1    # "thatNano":I
    .end local v2    # "thisNano":I
    :cond_0
    :goto_0
    return v0

    .line 224
    .restart local v0    # "result":I
    .restart local v1    # "thatNano":I
    .restart local v2    # "thisNano":I
    :cond_1
    if-ne v2, v1, :cond_2

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 1
    .param p1, "theObject"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 197
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "theObject":Ljava/util/Date;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "theObject"    # Ljava/lang/Object;

    .prologue
    .line 245
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "theObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    .restart local p1    # "theObject":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .locals 6
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v0, 0x0

    .line 261
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNanos()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 289
    .local v0, "theTime":J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 290
    return-wide v0
.end method

.method public setNanos(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 303
    if-ltz p1, :cond_0

    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 307
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "theTime"    # J

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    .line 321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x30

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 357
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getDate()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 361
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getHours()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 363
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 365
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getSeconds()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 367
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    if-nez v1, :cond_1

    .line 369
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 371
    :cond_1
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 372
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
