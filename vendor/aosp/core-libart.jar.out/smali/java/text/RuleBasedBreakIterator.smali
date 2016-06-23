.class Ljava/text/RuleBasedBreakIterator;
.super Ljava/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# direct methods
.method constructor <init>(Llibcore/icu/NativeBreakIterator;)V
    .locals 0
    .param p1, "iterator"    # Llibcore/icu/NativeBreakIterator;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/text/BreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    .line 32
    return-void
.end method

.method private checkOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 48
    iget-object v2, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v2}, Llibcore/icu/NativeBreakIterator;->hasText()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BreakIterator has no text"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    iget-object v2, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v2}, Llibcore/icu/NativeBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 52
    .local v0, "it":Ljava/text/CharacterIterator;
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid range is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedBreakIterator;

    .line 113
    .local v0, "cloned":Ljava/text/RuleBasedBreakIterator;
    iget-object v1, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v1}, Llibcore/icu/NativeBreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/NativeBreakIterator;

    iput-object v1, v0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    .line 114
    return-object v0
.end method

.method public current()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 97
    instance-of v0, p1, Ljava/text/RuleBasedBreakIterator;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    check-cast p1, Ljava/text/RuleBasedBreakIterator;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, v1}, Llibcore/icu/NativeBreakIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->checkOffset(I)V

    .line 44
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->checkOffset(I)V

    .line 88
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public last()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 71
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->next(I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->checkOffset(I)V

    .line 93
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 2
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newText == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    .line 83
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
