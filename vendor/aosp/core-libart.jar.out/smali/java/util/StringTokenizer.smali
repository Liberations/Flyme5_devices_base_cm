.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 99
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 101
    return-void
.end method


# virtual methods
.method public countTokens()I
    .locals 7

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "count":I
    const/4 v2, 0x0

    .line 112
    .local v2, "inToken":Z
    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    .local v1, "i":I
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 113
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_2

    .line 114
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_0

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_0
    if-eqz v2, :cond_1

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    const/4 v2, 0x0

    .line 112
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 124
    :cond_3
    if-eqz v2, :cond_4

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_4
    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "delimiters == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    .local v1, "length":I
    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v4, v1, :cond_3

    .line 150
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_2

    .line 159
    :cond_1
    :goto_0
    return v2

    .line 155
    :cond_2
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 156
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    move v2, v3

    .line 159
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "delimiters == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 186
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 188
    .local v1, "length":I
    if-ge v0, v1, :cond_8

    .line 189
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_4

    .line 190
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 191
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_0
    return-object v2

    .line 192
    :cond_1
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_1
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_3

    .line 193
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_2

    .line 194
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_2
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_1

    .line 195
    :cond_3
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 198
    :cond_4
    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_5

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    :cond_5
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 201
    if-ge v0, v1, :cond_8

    .line 202
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_3
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_7

    .line 203
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_6

    .line 204
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 202
    :cond_6
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_3

    .line 205
    :cond_7
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 208
    :cond_8
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delims"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
