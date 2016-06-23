.class final Ljava/nio/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTE_COUNT:I = 0x2

.field private static final MAX_CHARS_PER_BYTE:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private final data:[I

.field private inEnd:I

.field private input:[B

.field private outEnd:I

.field private output:[C


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;FJ)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "address"    # J

    .prologue
    const/4 v2, 0x0

    .line 69
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    .line 39
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 40
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 42
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 43
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 70
    iput-wide p3, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    .line 71
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 199
    :goto_0
    return v1

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 190
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 191
    :cond_1
    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 194
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 195
    .local v0, "pos":I
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    goto :goto_0
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 2
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 170
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 171
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 174
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 175
    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 178
    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetDecoderICU;
    .locals 8
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 53
    const-wide/16 v0, 0x0

    .line 55
    .local v0, "address":J
    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->getAveCharsPerByte(J)F

    move-result v2

    .line 57
    .local v2, "averageCharsPerByte":F
    new-instance v3, Ljava/nio/charset/CharsetDecoderICU;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/nio/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V

    .line 58
    .local v3, "result":Ljava/nio/charset/CharsetDecoderICU;
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {v3}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 63
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_0
    return-object v3

    .line 62
    .end local v2    # "averageCharsPerByte":F
    .end local v3    # "result":Ljava/nio/charset/CharsetDecoderICU;
    :catchall_0
    move-exception v4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    .line 63
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_1
    throw v4
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 217
    return-void
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v3, 0x1

    .line 204
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 211
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method private updateCallback()V
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 154
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, v0, v2

    .line 135
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 138
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v8

    .line 139
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const/16 v0, 0xf

    if-ne v8, v0, :cond_1

    .line 141
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 142
    :cond_1
    const/16 v0, 0xa

    if-ne v8, v0, :cond_2

    .line 143
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 153
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 144
    :cond_2
    const/16 v0, 0xc

    if-ne v8, v0, :cond_3

    .line 145
    :try_start_2
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 153
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 147
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    throw v0

    .line 151
    .restart local v8    # "error":I
    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

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
    .line 160
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 105
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 107
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 109
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 110
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 112
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v8

    .line 113
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const/16 v0, 0xf

    if-ne v8, v0, :cond_0

    .line 115
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/16 v0, 0xb

    if-ne v8, v0, :cond_1

    .line 117
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 124
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    goto :goto_0

    .line 122
    :cond_1
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    goto :goto_0

    .line 124
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 125
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    throw v0
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 79
    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 83
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 75
    return-void
.end method

.method protected implReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetByteToChar(J)V

    .line 91
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aput v2, v0, v2

    .line 92
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 94
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 95
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 96
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 97
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 98
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 99
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 100
    return-void
.end method
