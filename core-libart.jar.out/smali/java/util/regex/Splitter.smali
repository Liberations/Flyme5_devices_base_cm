.class public Ljava/util/regex/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# static fields
.field private static final METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 12
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 42
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v6

    .line 45
    :cond_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 46
    .local v1, "ch":C
    if-ne v5, v10, :cond_3

    const-string v8, "\\?*+[](){}^$.|"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 64
    new-array v6, v10, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v6, v11

    goto :goto_0

    .line 48
    :cond_3
    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_0

    .line 51
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 52
    const-string v8, "\\?*+[](){}^$.|"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v9, :cond_2

    goto :goto_0

    .line 68
    :cond_4
    const/4 v7, 0x0

    .line 69
    .local v7, "separatorCount":I
    const/4 v0, 0x0

    .line 71
    .local v0, "begin":I
    :goto_1
    add-int/lit8 v8, v7, 0x1

    if-eq v8, p2, :cond_5

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, "end":I
    if-eq v2, v9, :cond_5

    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 75
    .end local v2    # "end":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 76
    .local v4, "lastPartEnd":I
    if-nez p2, :cond_7

    if-ne v0, v4, :cond_7

    .line 78
    if-ne v7, v4, :cond_6

    .line 80
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 85
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v1, :cond_6

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    sub-int/2addr v7, v8

    .line 88
    move v4, v0

    .line 92
    :cond_7
    add-int/lit8 v8, v7, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 93
    .local v6, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-eq v3, v7, :cond_8

    .line 95
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 96
    .restart local v2    # "end":I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 97
    add-int/lit8 v0, v2, 0x1

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 100
    .end local v2    # "end":I
    :cond_8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_0
.end method

.method private static finishSplit(Ljava/util/List;Ljava/lang/String;II)[Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 131
    :cond_1
    if-eqz p3, :cond_2

    .line 132
    const-string v1, ""

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 136
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static split(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 105
    invoke-static {p1, p2, p3}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "fastResult":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    .end local v1    # "fastResult":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 112
    .restart local v1    # "fastResult":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .end local v1    # "fastResult":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v1, v4

    goto :goto_0

    .line 117
    .restart local v1    # "fastResult":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/regex/Matcher;

    invoke-direct {v3, p0, p2}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 119
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 120
    .local v0, "begin":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eq v4, p3, :cond_2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v2, p2, v0, p3}, Ljava/util/regex/Splitter;->finishSplit(Ljava/util/List;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
