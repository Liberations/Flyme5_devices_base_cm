.class Ljava/util/regex/MatchResultImpl;
.super Ljava/lang/Object;
.source "MatchResultImpl.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private offsets:[I

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offsets"    # [I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    .line 43
    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 50
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public group()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->start()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->end()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5
    .param p1, "group"    # I

    .prologue
    const/4 v4, -0x1

    .line 58
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 59
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 60
    .local v1, "to":I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public groupCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 76
    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method
