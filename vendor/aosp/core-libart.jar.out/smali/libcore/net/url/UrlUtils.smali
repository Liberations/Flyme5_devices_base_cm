.class public final Llibcore/net/url/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "discardRelativePrefix"    # Z

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 39
    .local v4, "segmentStart":I
    const/4 v0, 0x0

    .line 41
    .local v0, "deletableSegments":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v1, v5, :cond_7

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 44
    move v2, v1

    .line 57
    .local v2, "nextSegmentStart":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    if-ne v1, v5, :cond_2

    const-string v5, "."

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    move v1, v4

    goto :goto_0

    .line 45
    .end local v2    # "nextSegmentStart":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 46
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "nextSegmentStart":I
    goto :goto_1

    .line 48
    .end local v2    # "nextSegmentStart":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 61
    .restart local v2    # "nextSegmentStart":I
    :cond_2
    add-int/lit8 v5, v4, 0x2

    if-ne v1, v5, :cond_5

    const-string v5, ".."

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 62
    if-gtz v0, :cond_3

    if-eqz p1, :cond_4

    .line 64
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 65
    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 66
    .local v3, "prevSegmentStart":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    move v4, v3

    move v1, v3

    .line 68
    goto :goto_0

    .line 70
    .end local v3    # "prevSegmentStart":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 71
    move v4, v1

    goto :goto_0

    .line 74
    :cond_5
    if-lez v1, :cond_6

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 78
    move v4, v1

    goto/16 :goto_0

    .line 81
    .end local v2    # "nextSegmentStart":I
    :cond_7
    return-object p0
.end method

.method public static findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 134
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 140
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 134
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_1
    move v1, p3

    .line 140
    goto :goto_1
.end method

.method public static getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 104
    .local v1, "colon":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v3

    .line 108
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "c":C
    invoke-static {v2, v0}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isValidSchemeChar(IC)Z
    .locals 2
    .param p0, "index"    # I
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 119
    const/16 v1, 0x61

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7a

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_2

    .line 125
    :cond_1
    :goto_0
    return v0

    .line 122
    :cond_2
    if-lez p0, :cond_4

    const/16 v1, 0x30

    if-lt p1, v1, :cond_3

    const/16 v1, 0x39

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x2b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_1

    .line 125
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
