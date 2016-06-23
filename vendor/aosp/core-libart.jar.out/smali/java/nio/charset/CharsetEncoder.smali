.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field private static final END_OF_INPUT:Ljava/lang/String; = "END_OF_INPUT"

.field private static final FLUSHED:Ljava/lang/String; = "FLUSHED"

.field private static final ONGOING:Ljava/lang/String; = "ONGOING"

.field private static final RESET:Ljava/lang/String; = "RESET"


# instance fields
.field private final averageBytesPerChar:F

.field private final charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacementBytes:[B

.field private state:Ljava/lang/String;

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

    .prologue
    .line 129
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "RESET"

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    .line 93
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 94
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 133
    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar and maxBytesPerChar must both be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar is greater than maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    .line 140
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    .line 141
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    .line 142
    if-eqz p5, :cond_3

    .line 145
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_3
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    goto :goto_0
.end method

.method private allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 291
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

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
    .line 279
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 284
    :cond_1
    return-void
.end method

.method private illegalStateException()Ljava/lang/IllegalStateException;
    .locals 3

    .prologue
    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    instance-of v4, p1, Ljava/nio/CharBuffer;

    if-eqz v4, :cond_1

    .line 185
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1    # "sequence":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 190
    .local v0, "cb":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v5, "FLUSHED"

    if-ne v4, v5, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 193
    :cond_0
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v5, "RESET"

    if-eq v4, v5, :cond_2

    .line 194
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    move-result-object v4

    throw v4

    .line 187
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .restart local p1    # "sequence":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    goto :goto_0

    .line 197
    .end local p1    # "sequence":Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 198
    .local v2, "originalMalformedInputAction":Ljava/nio/charset/CodingErrorAction;
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 199
    .local v3, "originalUnmappableCharacterAction":Ljava/nio/charset/CodingErrorAction;
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 200
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 202
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    const/4 v4, 0x1

    .line 207
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 208
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 209
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :goto_1
    return v4

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 208
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 209
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    goto :goto_1

    .line 207
    .end local v1    # "e":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 208
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 209
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    throw v4
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 253
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 255
    .local v1, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 257
    :goto_0
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v4, "FLUSHED"

    if-eq v3, v4, :cond_2

    .line 258
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 259
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_0

    .line 260
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 261
    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 266
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 267
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_1

    .line 268
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_0

    .line 274
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 275
    return-object v1
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    .line 359
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v4, "RESET"

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v4, "ONGOING"

    if-eq v3, v4, :cond_1

    if-eqz p3, :cond_0

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v4, "END_OF_INPUT"

    if-eq v3, v4, :cond_1

    .line 360
    :cond_0
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3

    .line 363
    :cond_1
    if-eqz p3, :cond_3

    const-string v3, "END_OF_INPUT"

    :goto_0
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    .line 368
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 375
    .local v2, "result":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_5

    .line 376
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 377
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 386
    :cond_2
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 388
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v3, :cond_7

    move-object v3, v2

    .line 392
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :goto_3
    return-object v3

    .line 363
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_3
    const-string v3, "ONGOING"

    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "ex":Ljava/nio/BufferOverflowException;
    new-instance v3, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v3, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 371
    .end local v1    # "ex":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, "ex":Ljava/nio/BufferUnderflowException;
    new-instance v3, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v3, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v3

    .end local v1    # "ex":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_4
    move-object v3, v2

    .line 379
    goto :goto_3

    .line 381
    :cond_5
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_2

    move-object v3, v2

    .line 382
    goto :goto_3

    .line 386
    :cond_6
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2

    .line 390
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_7
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v3, :cond_9

    .line 391
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 392
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_3

    .line 394
    :cond_8
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    :cond_9
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 461
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v2, "FLUSHED"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    const-string v2, "END_OF_INPUT"

    if-eq v1, v2, :cond_0

    .line 462
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoder;->illegalStateException()Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 465
    .local v0, "result":Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1

    .line 466
    const-string v1, "FLUSHED"

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    .line 468
    :cond_1
    return-object v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 482
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 495
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 507
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    .prologue
    .line 518
    return-void
.end method

.method protected implReset()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 6
    .param p1, "replacement"    # [B

    .prologue
    const/4 v3, 0x1

    .line 534
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v4, :cond_0

    .line 535
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    iput-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 536
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 537
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 539
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 540
    .local v0, "in":Ljava/nio/ByteBuffer;
    array-length v4, p1

    int-to-float v4, v4

    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 541
    .local v1, "out":Ljava/nio/CharBuffer;
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 542
    .local v2, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 579
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 580
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 601
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 602
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3
    .param p1, "replacement"    # [B

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    array-length v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacement.length > maxBytesPerChar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad replacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_3
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    .line 646
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 647
    return-object p0
.end method

.method public final replacement()[B
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacementBytes:[B

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 656
    const-string v0, "RESET"

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->state:Ljava/lang/String;

    .line 657
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 658
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
