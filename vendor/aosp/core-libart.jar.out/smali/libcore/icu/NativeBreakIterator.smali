.class public final Llibcore/icu/NativeBreakIterator;
.super Ljava/lang/Object;
.source "NativeBreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BI_CHAR_INSTANCE:I = 0x1

.field private static final BI_LINE_INSTANCE:I = 0x3

.field private static final BI_SENT_INSTANCE:I = 0x4

.field private static final BI_WORD_INSTANCE:I = 0x2


# instance fields
.field private final address:J

.field private charIterator:Ljava/text/CharacterIterator;

.field private string:Ljava/lang/String;

.field private final type:I


# direct methods
.method private constructor <init>(JI)V
    .locals 3
    .param p1, "address"    # J
    .param p3, "type"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Llibcore/icu/NativeBreakIterator;->address:J

    .line 40
    iput p3, p0, Llibcore/icu/NativeBreakIterator;->type:I

    .line 41
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    .line 42
    return-void
.end method

.method private static synchronized native declared-synchronized cloneImpl(J)J
.end method

.method private static synchronized native declared-synchronized closeImpl(J)V
.end method

.method private static synchronized native declared-synchronized currentImpl(JLjava/lang/String;)I
.end method

.method private static synchronized native declared-synchronized firstImpl(JLjava/lang/String;)I
.end method

.method private static synchronized native declared-synchronized followingImpl(JLjava/lang/String;I)I
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 145
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getCharacterInstanceImpl(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/NativeBreakIterator;-><init>(JI)V

    return-object v0
.end method

.method private static native getCharacterInstanceImpl(Ljava/lang/String;)J
.end method

.method public static getLineInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 149
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getLineInstanceImpl(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/NativeBreakIterator;-><init>(JI)V

    return-object v0
.end method

.method private static native getLineInstanceImpl(Ljava/lang/String;)J
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 153
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getSentenceInstanceImpl(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/NativeBreakIterator;-><init>(JI)V

    return-object v0
.end method

.method private static native getSentenceInstanceImpl(Ljava/lang/String;)J
.end method

.method public static getWordInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 157
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getWordInstanceImpl(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/NativeBreakIterator;-><init>(JI)V

    return-object v0
.end method

.method private static native getWordInstanceImpl(Ljava/lang/String;)J
.end method

.method private static synchronized native declared-synchronized isBoundaryImpl(JLjava/lang/String;I)Z
.end method

.method private static synchronized native declared-synchronized lastImpl(JLjava/lang/String;)I
.end method

.method private static synchronized native declared-synchronized nextImpl(JLjava/lang/String;I)I
.end method

.method private static synchronized native declared-synchronized precedingImpl(JLjava/lang/String;I)I
.end method

.method private static synchronized native declared-synchronized previousImpl(JLjava/lang/String;)I
.end method

.method private setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "it"    # Ljava/text/CharacterIterator;

    .prologue
    .line 127
    iput-object p1, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    .line 129
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;->setTextImpl(JLjava/lang/String;)V

    .line 130
    return-void
.end method

.method private static synchronized native declared-synchronized setTextImpl(JLjava/lang/String;)V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 46
    iget-wide v4, p0, Llibcore/icu/NativeBreakIterator;->address:J

    invoke-static {v4, v5}, Llibcore/icu/NativeBreakIterator;->cloneImpl(J)J

    move-result-wide v2

    .line 47
    .local v2, "cloneAddr":J
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    iget v1, p0, Llibcore/icu/NativeBreakIterator;->type:I

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/NativeBreakIterator;-><init>(JI)V

    .line 48
    .local v0, "clone":Llibcore/icu/NativeBreakIterator;
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    iput-object v1, v0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    iput-object v1, v0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    .line 51
    return-object v0
.end method

.method public current()I
    .locals 3

    .prologue
    .line 81
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;->currentImpl(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    instance-of v3, p1, Llibcore/icu/NativeBreakIterator;

    if-nez v3, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Llibcore/icu/NativeBreakIterator;

    .line 64
    .local v0, "rhs":Llibcore/icu/NativeBreakIterator;
    iget v3, p0, Llibcore/icu/NativeBreakIterator;->type:I

    iget v4, v0, Llibcore/icu/NativeBreakIterator;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    iget-object v4, v0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeBreakIterator;->closeImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public first()I
    .locals 3

    .prologue
    .line 85
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;->firstImpl(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 89
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeBreakIterator;->followingImpl(JLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 4

    .prologue
    .line 93
    iget-wide v2, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Llibcore/icu/NativeBreakIterator;->currentImpl(JLjava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "newLocation":I
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 95
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIterator:Ljava/text/CharacterIterator;

    return-object v1
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x2a

    return v0
.end method

.method public isBoundary(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 137
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeBreakIterator;->isBoundaryImpl(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public last()I
    .locals 3

    .prologue
    .line 99
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;->lastImpl(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Llibcore/icu/NativeBreakIterator;->nextImpl(JLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 103
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeBreakIterator;->nextImpl(JLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 141
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeBreakIterator;->precedingImpl(JLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 3

    .prologue
    .line 111
    iget-wide v0, p0, Llibcore/icu/NativeBreakIterator;->address:J

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->string:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;->previousImpl(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V

    .line 124
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    .local v0, "c":C
    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V

    .line 120
    return-void
.end method
