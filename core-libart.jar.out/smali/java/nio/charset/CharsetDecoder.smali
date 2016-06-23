.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field private static final END_OF_INPUT:Ljava/lang/String; = "END_OF_INPUT"

.field private static final FLUSHED:Ljava/lang/String; = "FLUSHED"

.field private static final ONGOING:Ljava/lang/String; = "ONGOING"

.field private static final RESET:Ljava/lang/String; = "RESET"


# instance fields
.field private final averageCharsPerByte:F

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacementChars:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "\ufffd"

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    .line 97
    const-string v0, "RESET"

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    .line 99
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 100
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 120
    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte and maxCharsPerByte must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte is greater than maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    .line 127
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    .line 128
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    .line 129
    return-void
.end method

.method private allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "output"    # Ljava/nio/CharBuffer;

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 227
    .local v0, "result":Ljava/nio/CharBuffer;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_1

    .line 213
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 215
    :cond_1
    return-void
.end method

.method private illegalStateException()Ljava/lang/IllegalStateException;
    .locals 3

    .prologue
    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 5
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 181
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 183
    .local v1, "out":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 185
    :goto_0
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v4, "FLUSHED"

    if-eq v3, v4, :cond_2

    .line 186
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 187
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_0

    .line 188
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 189
    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 194
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 195
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_1

    .line 196
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_0

    .line 202
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 203
    return-object v1
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    .line 297
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v4, "RESET"

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v4, "ONGOING"

    if-eq v3, v4, :cond_1

    if-eqz p3, :cond_0

    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v4, "END_OF_INPUT"

    if-eq v3, v4, :cond_1

    .line 298
    :cond_0
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoder;->illegalStateException()Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3

    .line 301
    :cond_1
    if-eqz p3, :cond_3

    const-string v3, "END_OF_INPUT"

    :goto_0
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    .line 306
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 313
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_5

    .line 314
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 324
    :cond_2
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 326
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v3, :cond_7

    move-object v3, v2

    .line 330
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :goto_3
    return-object v3

    .line 301
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_3
    const-string v3, "ONGOING"

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "ex":Ljava/nio/BufferOverflowException;
    new-instance v3, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v3, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 309
    .end local v1    # "ex":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "ex":Ljava/nio/BufferUnderflowException;
    new-instance v3, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v3, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v3

    .end local v1    # "ex":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_4
    move-object v3, v2

    .line 317
    goto :goto_3

    .line 319
    :cond_5
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_2

    move-object v3, v2

    .line 320
    goto :goto_3

    .line 324
    :cond_6
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2

    .line 328
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_7
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v3, :cond_9

    .line 329
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 330
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_3

    .line 332
    :cond_8
    iget-object v3, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 334
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 426
    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v2, "FLUSHED"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    const-string v2, "END_OF_INPUT"

    if-eq v1, v2, :cond_0

    .line 427
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoder;->illegalStateException()Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 430
    .local v0, "result":Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1

    .line 431
    const-string v1, "FLUSHED"

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    .line 433
    :cond_1
    return-object v0
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 447
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 460
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 472
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 483
    return-void
.end method

.method protected implReset()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public isAutoDetecting()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public isCharsetDetected()Z
    .locals 1

    .prologue
    .line 528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxCharsPerByte()F
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 565
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 566
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 587
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 588
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacement length > maxCharsPerByte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    .line 626
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 627
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacementChars:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 636
    const-string v0, "RESET"

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->state:Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 638
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
