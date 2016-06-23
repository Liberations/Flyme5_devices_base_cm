.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "buf"    # [C

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 57
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 58
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 59
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 83
    if-ltz p2, :cond_0

    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 86
    :cond_1
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 87
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 88
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 91
    array-length v0, p1

    .line 92
    .local v0, "bufferLength":I
    add-int v1, p2, p3

    if-ge v1, v0, :cond_2

    .end local p3    # "length":I
    :goto_0
    iput p3, p0, Ljava/io/CharArrayReader;->count:I

    .line 93
    return-void

    .restart local p3    # "length":I
    :cond_2
    move p3, v0

    .line 92
    goto :goto_0
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CharArrayReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpen()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 106
    :cond_0
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 142
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 179
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-ne v0, v2, :cond_0

    .line 180
    const/4 v0, -0x1

    monitor-exit v1

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v0, v0, v2

    monitor-exit v1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 200
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 202
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-ge v1, v3, :cond_1

    .line 203
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, p3

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-le v1, v3, :cond_0

    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int v0, v1, v3

    .line 204
    .local v0, "bytesRead":I
    :goto_0
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 205
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 206
    monitor-exit v2

    .line 208
    .end local v0    # "bytesRead":I
    :goto_1
    return v0

    :cond_0
    move v0, p3

    .line 203
    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 228
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 245
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    :goto_0
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 260
    iget-object v3, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 262
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 263
    monitor-exit v3

    .line 273
    :goto_0
    return-wide v0

    .line 265
    :cond_0
    const-wide/16 v0, 0x0

    .line 266
    .local v0, "skipped":J
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    .line 267
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    long-to-int v4, p1

    add-int/2addr v2, v4

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 268
    move-wide v0, p1

    .line 273
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 274
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 270
    .restart local v0    # "skipped":J
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    .line 271
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
