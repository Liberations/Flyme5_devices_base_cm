.class public abstract Ljavax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 978
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .locals 2
    .param p1, "field"    # Ljavax/xml/datatype/DatatypeConstants$Field;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .line 414
    .local v0, "n":Ljava/lang/Number;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 417
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .prologue
    .line 937
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 940
    .local v4, "scale":I
    if-nez v4, :cond_0

    .line 962
    .end local v3    # "intString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 946
    .restart local v3    # "intString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .line 947
    .local v2, "insertionPoint":I
    if-nez v2, :cond_1

    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 950
    :cond_1
    if-lez v2, :cond_2

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 962
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 955
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 956
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    neg-int v5, v2

    if-ge v1, v5, :cond_3

    .line 958
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 960
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public abstract add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract addTo(Ljava/util/Calendar;)V
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "date == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 559
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 560
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 561
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 562
    return-void
.end method

.method public abstract compare(Ljavax/xml/datatype/Duration;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "duration"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 854
    if-ne p1, p0, :cond_1

    .line 860
    .end local p1    # "duration":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 857
    .restart local p1    # "duration":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljavax/xml/datatype/Duration;

    if-eqz v2, :cond_2

    .line 858
    check-cast p1, Ljavax/xml/datatype/Duration;

    .end local p1    # "duration":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "duration":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 860
    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 256
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 270
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 284
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 243
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 299
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getSign()I
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Calendar;

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 334
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 335
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {p1}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Date;

    .prologue
    .line 371
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 372
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 373
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 374
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 9

    .prologue
    .line 158
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v5

    .line 159
    .local v5, "yearSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v3

    .line 160
    .local v3, "monthSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v0

    .line 161
    .local v0, "daySet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v1

    .line 162
    .local v1, "hourSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v2

    .line 163
    .local v2, "minuteSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v4

    .line 166
    .local v4, "secondSet":Z
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 172
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    .line 192
    :goto_0
    return-object v6

    .line 176
    :cond_0
    if-nez v5, :cond_1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 182
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 186
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 192
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 196
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " month set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " day set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hour set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minute set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " second set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 230
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isLongerThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    .prologue
    const/4 v0, 0x1

    .line 791
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public isShorterThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .locals 2
    .param p1, "factor"    # I

    .prologue
    .line 634
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract negate()Ljavax/xml/datatype/Duration;
.end method

.method public abstract normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 1
    .param p1, "rhs"    # Ljavax/xml/datatype/Duration;

    .prologue
    .line 614
    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x4d

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    if-gez v7, :cond_0

    .line 888
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    :cond_0
    const/16 v7, 0x50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 893
    .local v6, "years":Ljava/math/BigInteger;
    if-eqz v6, :cond_1

    .line 894
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x59

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 897
    :cond_1
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    .line 898
    .local v4, "months":Ljava/math/BigInteger;
    if-eqz v4, :cond_2

    .line 899
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    :cond_2
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 903
    .local v1, "days":Ljava/math/BigInteger;
    if-eqz v1, :cond_3

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x44

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    :cond_3
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 908
    .local v2, "hours":Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 909
    .local v3, "minutes":Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 910
    .local v5, "seconds":Ljava/math/BigDecimal;
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v5, :cond_7

    .line 911
    :cond_4
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    if-eqz v2, :cond_5

    .line 913
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_5
    if-eqz v3, :cond_6

    .line 916
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    :cond_6
    if-eqz v5, :cond_7

    .line 919
    invoke-direct {p0, v5}, Ljavax/xml/datatype/Duration;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x53

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
