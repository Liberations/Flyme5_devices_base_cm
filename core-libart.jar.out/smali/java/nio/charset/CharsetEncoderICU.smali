.class final Ljava/nio/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final DEFAULT_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHAR_COUNT:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private inEnd:I

.field private input:[C

.field private outEnd:I

.field private output:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    .line 35
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 36
    .local v0, "questionMark":[B
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "US-ASCII"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "address"    # J

    .prologue
    const/4 v6, 0x0

    .line 95
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    .line 54
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 55
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 57
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 58
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 97
    iput-wide p5, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    .line 98
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 99
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 203
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 204
    :cond_1
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 207
    :cond_2
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .locals 4
    .param p1, "in"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 215
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 216
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 219
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 220
    :cond_1
    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 224
    .local v0, "pos":I
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 225
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    goto :goto_0
.end method

.method private static makeReplacement(Ljava/lang/String;J)[B
    .locals 3
    .param p0, "icuCanonicalName"    # Ljava/lang/String;
    .param p1, "address"    # J

    .prologue
    .line 86
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 87
    .local v0, "replacement":[B
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 91
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Llibcore/icu/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoderICU;
    .locals 10
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "icuCanonicalName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 68
    const-wide/16 v6, 0x0

    .line 70
    .local v6, "address":J
    :try_start_0
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v6

    .line 71
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->getAveBytesPerChar(J)F

    move-result v3

    .line 72
    .local v3, "averageBytesPerChar":F
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v0

    int-to-float v4, v0

    .line 73
    .local v4, "maxBytesPerChar":F
    invoke-static {p1, v6, v7}, Ljava/nio/charset/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    move-result-object v5

    .line 74
    .local v5, "replacement":[B
    new-instance v1, Ljava/nio/charset/CharsetEncoderICU;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ljava/nio/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v1, "result":Ljava/nio/charset/CharsetEncoderICU;
    const-wide/16 v6, 0x0

    .line 78
    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_0
    return-object v1

    .line 78
    .end local v1    # "result":Ljava/nio/charset/CharsetEncoderICU;
    .end local v3    # "averageBytesPerChar":F
    .end local v4    # "maxBytesPerChar":F
    .end local v5    # "replacement":[B
    :catchall_0
    move-exception v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    .line 79
    invoke-static {v6, v7}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_1
    throw v0
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 240
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "in"    # Ljava/nio/CharBuffer;

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 244
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 253
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 256
    return-void
.end method

.method private updateCallback()V
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 183
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 163
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v3, v0, v4

    .line 167
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v8

    .line 168
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    const/16 v0, 0xf

    if-ne v8, v0, :cond_1

    .line 170
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 171
    :cond_1
    const/16 v0, 0xa

    if-ne v8, v0, :cond_2

    .line 172
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 173
    :cond_2
    const/16 v0, 0xc

    if-ne v8, v0, :cond_3

    .line 174
    :try_start_2
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 176
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    throw v0

    .line 180
    .restart local v8    # "error":I
    :cond_4
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 183
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

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
    .line 189
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 133
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 135
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 137
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 140
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v8

    .line 141
    .local v8, "error":I
    invoke-static {v8}, Llibcore/icu/ICU;->U_FAILURE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/16 v0, 0xf

    if-ne v8, v0, :cond_0

    .line 143
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    :goto_0
    return-object v0

    .line 144
    :cond_0
    const/16 v0, 0xb

    if-ne v8, v0, :cond_1

    .line 145
    :try_start_1
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_0

    .line 150
    :cond_1
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_0

    .line 152
    .end local v8    # "error":I
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    throw v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 107
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 111
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 103
    return-void
.end method

.method protected implReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 118
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetCharToByte(J)V

    .line 119
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v2, v0, v2

    .line 120
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 122
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 123
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 124
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 125
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 126
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 127
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 128
    return-void
.end method
