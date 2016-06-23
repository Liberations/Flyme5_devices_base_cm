.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 83
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 100
    if-gtz p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 104
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 8
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 147
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_3

    .line 149
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 150
    .local v3, "result":I
    if-lez v3, :cond_1

    .line 151
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 152
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 153
    if-ne v3, v7, :cond_2

    :goto_0
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_1
    move v0, v3

    .line 177
    .end local v3    # "result":I
    :goto_1
    return v0

    .restart local v3    # "result":I
    :cond_2
    move v4, v3

    .line 153
    goto :goto_0

    .line 157
    .end local v3    # "result":I
    :cond_3
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-nez v5, :cond_6

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    array-length v6, p2

    if-le v5, v6, :cond_6

    .line 159
    array-length v5, p2

    mul-int/lit8 v1, v5, 0x2

    .line 160
    .local v1, "newLength":I
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v5, :cond_4

    .line 161
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 163
    :cond_4
    new-array v2, v1, [B

    .line 164
    .local v2, "newbuf":[B
    array-length v5, p2

    invoke-static {p2, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object p2, v2

    .line 173
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[B
    :cond_5
    :goto_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 174
    iput v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    .line 175
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v5, p2

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 176
    .local v0, "bytesread":I
    if-gtz v0, :cond_7

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    :goto_3
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    goto :goto_1

    .line 168
    .end local v0    # "bytesread":I
    :cond_6
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_5

    .line 169
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    array-length v6, p2

    iget v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v6, v7

    invoke-static {p2, v5, p2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 176
    .restart local v0    # "bytesread":I
    :cond_7
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_3
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 118
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    .restart local v0    # "localIn":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    monitor-exit p0

    return v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 138
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 139
    .local v0, "localIn":Ljava/io/InputStream;
    iput-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 196
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 228
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 229
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 230
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 234
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v3, v4, :cond_3

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, v2, :cond_3

    .line 249
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    .line 238
    :cond_3
    :try_start_2
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_4

    .line 239
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 240
    if-nez v0, :cond_4

    .line 241
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 246
    :cond_4
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 247
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v2, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 256
    .local v1, "localBuf":[B
    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v1    # "localBuf":[B
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 259
    .restart local v1    # "localBuf":[B
    :cond_0
    :try_start_1
    array-length v6, p1

    invoke-static {v6, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-nez p3, :cond_2

    .line 261
    const/4 v5, 0x0

    .line 315
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 263
    :cond_2
    :try_start_2
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 264
    .local v2, "localIn":Ljava/io/InputStream;
    if-nez v2, :cond_3

    .line 265
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 269
    :cond_3
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v7, p0, Ljava/io/BufferedInputStream;->count:I

    if-ge v6, v7, :cond_7

    .line 271
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, p3, :cond_5

    move v0, p3

    .line 272
    .local v0, "copylength":I
    :goto_1
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 274
    if-eq v0, p3, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    move v5, v0

    .line 275
    goto :goto_0

    .line 271
    .end local v0    # "copylength":I
    :cond_5
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v6, v7

    goto :goto_1

    .line 277
    .restart local v0    # "copylength":I
    :cond_6
    add-int/2addr p2, v0

    .line 278
    sub-int v4, p3, v0

    .line 289
    .end local v0    # "copylength":I
    .local v4, "required":I
    :goto_2
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v6, v5, :cond_8

    array-length v6, v1

    if-lt v4, v6, :cond_8

    .line 290
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 291
    .local v3, "read":I
    if-ne v3, v5, :cond_b

    .line 292
    if-eq v4, p3, :cond_1

    sub-int v5, p3, v4

    goto :goto_0

    .line 280
    .end local v3    # "read":I
    .end local v4    # "required":I
    :cond_7
    move v4, p3

    .restart local v4    # "required":I
    goto :goto_2

    .line 295
    :cond_8
    invoke-direct {p0, v2, v1}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v6

    if-ne v6, v5, :cond_9

    .line 296
    if-eq v4, p3, :cond_1

    sub-int v5, p3, v4

    goto :goto_0

    .line 299
    :cond_9
    iget-object v6, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v1, v6, :cond_a

    .line 300
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 301
    if-nez v1, :cond_a

    .line 302
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 306
    :cond_a
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_c

    move v3, v4

    .line 307
    .restart local v3    # "read":I
    :goto_3
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v3

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 310
    :cond_b
    sub-int/2addr v4, v3

    .line 311
    if-nez v4, :cond_d

    move v5, p3

    .line 312
    goto :goto_0

    .line 306
    .end local v3    # "read":I
    :cond_c
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v3, v6, v7

    goto :goto_3

    .line 314
    .restart local v3    # "read":I
    :cond_d
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_e

    .line 315
    sub-int v5, p3, v4

    goto/16 :goto_0

    .line 317
    :cond_e
    add-int/2addr p2, v3

    .line 318
    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 336
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 358
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 359
    .local v1, "localIn":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 362
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 363
    const-wide/16 p1, 0x0

    .line 391
    .end local p1    # "byteCount":J
    :goto_0
    monitor-exit p0

    return-wide p1

    .line 365
    .restart local p1    # "byteCount":J
    :cond_1
    if-nez v1, :cond_2

    .line 366
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 369
    :cond_2
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_3

    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 373
    :cond_3
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 374
    .local v2, "read":J
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 376
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_6

    .line 377
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    .line 378
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v6, :cond_4

    move-wide p1, v2

    .line 379
    goto :goto_0

    .line 381
    :cond_4
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p1, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 382
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 386
    :cond_5
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 387
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide p1, v2

    .line 388
    goto :goto_0

    .line 391
    :cond_6
    sub-long v4, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    add-long p1, v2, v4

    goto :goto_0
.end method
