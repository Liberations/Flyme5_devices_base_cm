.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# annotations
.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "NM_SAME_SIMPLE_NAME_AS_SUPERCLASS"
    }
.end annotation


# static fields
.field private static final PADDING:Ljava/lang/String; = "0000"

.field private static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "theYear"    # I
    .param p2, "theMonth"    # I
    .param p3, "theDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    .line 57
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "theDate"    # J

    .prologue
    .line 71
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 72
    return-void
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "date"    # I
    .param p2, "digits"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_0

    .line 197
    const-string v1, "0000"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    return-void
.end method

.method private static normalizeTime(J)J
    .locals 0
    .param p0, "theTime"    # J

    .prologue
    .line 240
    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .locals 7
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dateString == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 219
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 222
    :cond_1
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "parts":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 224
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 227
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, "year":I
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    move-result v1

    .line 229
    .local v1, "month":I
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "day":I
    new-instance v4, Ljava/sql/Date;

    add-int/lit16 v5, v3, -0x76c

    add-int/lit8 v6, v1, -0x1

    invoke-direct {v4, v5, v6, v0}, Ljava/sql/Date;-><init>(III)V

    return-object v4
.end method


# virtual methods
.method public getHours()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinutes()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeconds()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHours(I)V
    .locals 2
    .param p1, "theHours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinutes(I)V
    .locals 2
    .param p1, "theMinutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeconds(I)V
    .locals 2
    .param p1, "theSeconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "theTime"    # J

    .prologue
    .line 168
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/sql/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Ljava/sql/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Ljava/sql/Date;->getDate()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
