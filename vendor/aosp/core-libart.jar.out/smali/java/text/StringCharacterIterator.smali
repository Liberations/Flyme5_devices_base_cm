.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field end:I

.field offset:I

.field start:I

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 40
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 60
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 61
    if-ltz p2, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p2, v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_1
    iput p2, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "location"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 86
    if-ltz p2, :cond_0

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_0

    if-gt p2, p3, :cond_0

    if-lt p4, p2, :cond_0

    if-le p4, p3, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_1
    iput p2, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 91
    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 92
    iput p4, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 93
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public current()C
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 119
    const v0, 0xffff

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 138
    instance-of v2, p1, Ljava/text/StringCharacterIterator;

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 141
    check-cast v0, Ljava/text/StringCharacterIterator;

    .line 142
    .local v0, "it":Ljava/text/StringCharacterIterator;
    iget-object v2, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->offset:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public first()C
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 155
    const v0, 0xffff

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 158
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 202
    const v0, 0xffff

    .line 205
    :goto_0
    return v0

    .line 204
    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 205
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 216
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 217
    const v0, 0xffff

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public previous()C
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v0, v1, :cond_0

    .line 230
    const v0, 0xffff

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 247
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p1, v0, :cond_1

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 250
    :cond_1
    iput p1, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 251
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_2

    .line 252
    const v0, 0xffff

    .line 254
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 268
    return-void
.end method
