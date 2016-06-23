.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# instance fields
.field private buf:[C

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 54
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "size"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 67
    if-gtz p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 71
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    .line 72
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private flushInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 141
    :cond_0
    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    .line 142
    return-void
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v3, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Ljava/io/BufferedWriter;->buf:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 106
    if-eqz v1, :cond_2

    .line 107
    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 109
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 92
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 101
    move-object v1, v0

    goto :goto_2
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 123
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V

    .line 124
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 235
    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 236
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->pos:I

    .line 239
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v3, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 267
    if-gtz p3, :cond_0

    .line 268
    monitor-exit v3

    .line 304
    :goto_0
    return-void

    .line 270
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_2

    .line 271
    :cond_1
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 303
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 273
    :cond_2
    :try_start_1
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt p3, v2, :cond_3

    .line 274
    new-array v1, p3, [C

    .line 275
    .local v1, "chars":[C
    add-int v2, p2, p3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 276
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, p3}, Ljava/io/Writer;->write([CII)V

    .line 277
    monitor-exit v3

    goto :goto_0

    .line 279
    .end local v1    # "chars":[C
    :cond_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v2, v4

    .line 280
    .local v0, "available":I
    if-ge p3, v0, :cond_4

    .line 281
    move v0, p3

    .line 283
    :cond_4
    if-lez v0, :cond_5

    .line 284
    add-int v2, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 285
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 287
    :cond_5
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    if-ne v2, v4, :cond_7

    .line 288
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v6, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 289
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 290
    if-le p3, v0, :cond_7

    .line 291
    add-int/2addr p2, v0

    .line 292
    sub-int v0, p3, v0

    .line 293
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_6

    .line 294
    new-array v1, p3, [C

    .line 295
    .restart local v1    # "chars":[C
    add-int v2, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 296
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    .line 297
    monitor-exit v3

    goto :goto_0

    .line 299
    .end local v1    # "chars":[C
    :cond_6
    add-int v2, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 300
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    .line 303
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public write([CII)V
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "buffer == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 190
    :cond_0
    :try_start_1
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 191
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    if-lt p3, v1, :cond_1

    .line 192
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 193
    monitor-exit v2

    .line 219
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v1, v3

    .line 196
    .local v0, "available":I
    if-ge p3, v0, :cond_2

    .line 197
    move v0, p3

    .line 199
    :cond_2
    if-lez v0, :cond_3

    .line 200
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 201
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 203
    :cond_3
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-ne v1, v3, :cond_5

    .line 204
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v5, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/Writer;->write([CII)V

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 206
    if-le p3, v0, :cond_5

    .line 207
    add-int/2addr p2, v0

    .line 208
    sub-int v0, p3, v0

    .line 209
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 210
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    .line 211
    monitor-exit v2

    goto :goto_0

    .line 214
    :cond_4
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 215
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    .line 218
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
