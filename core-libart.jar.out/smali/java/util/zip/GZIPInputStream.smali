.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field public static final GZIP_MAGIC:I = 0x8b1f

.field private static final GZIP_TRAILER_SIZE:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v3, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 71
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v3, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    .line 76
    iput-boolean v4, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 106
    :try_start_0
    invoke-static {p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 107
    .local v1, "header":[B
    const/4 v3, 0x0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 108
    .local v2, "magic":S
    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_0

    .line 109
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unknown format (magic number %x)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "header":[B
    .end local v2    # "magic":S
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 115
    throw v0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "header":[B
    .restart local v2    # "magic":S
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-static {p1, v1, v3, v4}, Ljava/util/zip/GZIPInputStream;->parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    return-void
.end method

.method private maybeReadNextMember()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 167
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    add-int/lit8 v3, v4, -0x8

    .line 168
    .local v3, "remaining":I
    if-lez v3, :cond_1

    .line 175
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    instance-of v4, v4, Ljava/io/PushbackInputStream;

    if-nez v4, :cond_0

    .line 176
    new-instance v4, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    array-length v8, v8

    invoke-direct {v4, v7, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    .line 178
    :cond_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    check-cast v4, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->getCurrentOffset()I

    move-result v8

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v7, v8, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 184
    :cond_1
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-static {v4}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    .local v0, "buffer":[B
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v6, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 195
    .local v2, "magic":S
    const/16 v4, -0x74e1

    if-eq v2, v4, :cond_2

    move v4, v5

    .line 204
    .end local v0    # "buffer":[B
    .end local v2    # "magic":S
    :goto_0
    return v4

    .line 185
    :catch_0
    move-exception v1

    .local v1, "eof":Ljava/io/EOFException;
    move v4, v5

    .line 191
    goto :goto_0

    .line 203
    .end local v1    # "eof":Ljava/io/EOFException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "magic":S
    :cond_2
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-static {v4, v0, v5, v7}, Ljava/util/zip/GZIPInputStream;->parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V

    move v4, v6

    .line 204
    goto :goto_0
.end method

.method private static parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "header"    # [B
    .param p2, "crc"    # Ljava/util/zip/CRC32;
    .param p3, "scratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x3

    aget-byte v1, p1, v7

    .line 216
    .local v1, "flags":B
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 217
    .local v2, "hcrc":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 218
    array-length v7, p1

    invoke-virtual {p2, p1, v6, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 220
    :cond_0
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_6

    .line 221
    invoke-static {p0, p1, v6, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 222
    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {p2, p1, v6, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 225
    :cond_1
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p3, v6, v7}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v7

    const v8, 0xffff

    and-int v3, v7, v8

    .line 226
    .local v3, "length":I
    :goto_1
    if-lez v3, :cond_6

    .line 227
    array-length v7, p3

    if-le v3, v7, :cond_3

    array-length v4, p3

    .line 228
    .local v4, "max":I
    :goto_2
    invoke-virtual {p0, p3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 229
    .local v5, "result":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    .line 230
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .end local v2    # "hcrc":Z
    .end local v3    # "length":I
    .end local v4    # "max":I
    .end local v5    # "result":I
    :cond_2
    move v2, v6

    .line 216
    goto :goto_0

    .restart local v2    # "hcrc":Z
    .restart local v3    # "length":I
    :cond_3
    move v4, v3

    .line 227
    goto :goto_2

    .line 232
    .restart local v4    # "max":I
    .restart local v5    # "result":I
    :cond_4
    if-eqz v2, :cond_5

    .line 233
    invoke-virtual {p2, p3, v6, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 235
    :cond_5
    sub-int/2addr v3, v5

    .line 236
    goto :goto_1

    .line 238
    .end local v3    # "length":I
    .end local v4    # "max":I
    .end local v5    # "result":I
    :cond_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_7

    .line 239
    invoke-static {p0, p2, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V

    .line 241
    :cond_7
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_8

    .line 242
    invoke-static {p0, p2, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V

    .line 244
    :cond_8
    if-eqz v2, :cond_a

    .line 245
    invoke-static {p0, p1, v6, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 246
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p3, v6, v7}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 247
    .local v0, "crc16":S
    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    if-eq v6, v0, :cond_9

    .line 248
    new-instance v6, Ljava/io/IOException;

    const-string v7, "CRC mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    :cond_9
    invoke-virtual {p2}, Ljava/util/zip/CRC32;->reset()V

    .line 252
    .end local v0    # "crc16":S
    :cond_a
    return-void
.end method

.method private static readHeader(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 209
    .local v0, "header":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 210
    return-object v0
.end method

.method private static readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "crc"    # Ljava/util/zip/CRC32;
    .param p2, "hcrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "result":I
    if-lez v0, :cond_1

    .line 278
    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update(I)V

    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 283
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 286
    :cond_2
    if-eqz p2, :cond_3

    .line 287
    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 289
    :cond_3
    return-void
.end method

.method private verifyCrc()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 256
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    .line 257
    .local v2, "size":I
    const/16 v3, 0x8

    .line 258
    .local v3, "trailerSize":I
    new-array v0, v1, [B

    .line 259
    .local v0, "b":[B
    if-le v2, v1, :cond_0

    .line 261
    .local v1, "copySize":I
    :goto_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    rsub-int/lit8 v5, v1, 0x8

    invoke-static {v4, v0, v1, v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 264
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v6, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v5, v6

    if-eq v4, v5, :cond_1

    .line 265
    new-instance v4, Ljava/io/IOException;

    const-string v5, "CRC mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1    # "copySize":I
    :cond_0
    move v1, v2

    .line 259
    goto :goto_0

    .line 267
    .restart local v1    # "copySize":I
    :cond_1
    const/4 v4, 0x4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 268
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Size mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 125
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 126
    return-void
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 130
    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 131
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 160
    :cond_1
    :goto_0
    return v0

    .line 136
    :cond_2
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 140
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 142
    .local v0, "bytesRead":I
    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 145
    if-eq v0, v1, :cond_3

    .line 146
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 149
    :cond_3
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_1

    .line 150
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->verifyCrc()V

    .line 151
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->maybeReadNextMember()Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 152
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 154
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 155
    iput-boolean v3, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    .line 156
    iput v3, p0, Ljava/util/zip/GZIPInputStream;->len:I

    goto :goto_0

    .line 142
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    throw v1
.end method
