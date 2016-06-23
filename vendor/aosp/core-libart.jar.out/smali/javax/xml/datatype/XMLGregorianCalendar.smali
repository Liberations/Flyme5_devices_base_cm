.class public abstract Ljavax/xml/datatype/XMLGregorianCalendar;
.super Ljava/lang/Object;
.source "XMLGregorianCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljavax/xml/datatype/Duration;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 663
    if-ne p1, p0, :cond_1

    .line 669
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 666
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v2, :cond_2

    .line 667
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 669
    goto :goto_0
.end method

.method public abstract getDay()I
.end method

.method public abstract getEon()Ljava/math/BigInteger;
.end method

.method public abstract getEonAndYear()Ljava/math/BigInteger;
.end method

.method public abstract getFractionalSecond()Ljava/math/BigDecimal;
.end method

.method public abstract getHour()I
.end method

.method public getMillisecond()I
    .locals 3

    .prologue
    .line 591
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    .line 594
    .local v0, "fractionalSeconds":Ljava/math/BigDecimal;
    if-nez v0, :cond_0

    .line 595
    const/high16 v1, -0x80000000

    .line 598
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getTimeZone(I)Ljava/util/TimeZone;
.end method

.method public abstract getTimezone()I
.end method

.method public abstract getXMLSchemaType()Ljavax/xml/namespace/QName;
.end method

.method public abstract getYear()I
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 684
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v1

    .line 685
    .local v1, "timezone":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 686
    const/4 v1, 0x0

    .line 688
    :cond_0
    move-object v0, p0

    .line 689
    .local v0, "gc":Ljavax/xml/datatype/XMLGregorianCalendar;
    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 692
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public abstract isValid()Z
.end method

.method public abstract normalize()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract reset()V
.end method

.method public abstract setDay(I)V
.end method

.method public abstract setFractionalSecond(Ljava/math/BigDecimal;)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setMillisecond(I)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setMonth(I)V
.end method

.method public abstract setSecond(I)V
.end method

.method public setTime(III)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTime(IIILjava/math/BigDecimal;)V

    .line 335
    return-void
.end method

.method public setTime(IIII)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 447
    invoke-virtual {p0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 448
    invoke-virtual {p0, p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 449
    invoke-virtual {p0, p4}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    .line 450
    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "fractional"    # Ljava/math/BigDecimal;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 423
    invoke-virtual {p0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 424
    invoke-virtual {p0, p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 425
    invoke-virtual {p0, p4}, Ljavax/xml/datatype/XMLGregorianCalendar;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 426
    return-void
.end method

.method public abstract setTimezone(I)V
.end method

.method public abstract setYear(I)V
.end method

.method public abstract setYear(Ljava/math/BigInteger;)V
.end method

.method public abstract toGregorianCalendar()Ljava/util/GregorianCalendar;
.end method

.method public abstract toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toXMLFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toXMLFormat()Ljava/lang/String;
.end method
