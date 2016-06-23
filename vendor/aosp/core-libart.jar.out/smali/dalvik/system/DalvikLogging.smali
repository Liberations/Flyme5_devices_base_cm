.class public final Ldalvik/system/DalvikLogging;
.super Ljava/lang/Object;
.source "DalvikLogging.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "loggerName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x17

    .line 34
    if-nez p0, :cond_1

    .line 35
    const-string p0, "null"

    .line 44
    .end local p0    # "loggerName":Ljava/lang/String;
    .local v1, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .end local v1    # "length":I
    .restart local p0    # "loggerName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 39
    .restart local v1    # "length":I
    if-le v1, v3, :cond_0

    .line 43
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "lastPeriod":I
    add-int/lit8 v2, v0, 0x1

    sub-int v2, v1, v2

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object p0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x17

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
