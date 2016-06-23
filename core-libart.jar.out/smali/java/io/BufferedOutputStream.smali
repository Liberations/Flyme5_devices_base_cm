.class public Ljava/io/BufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 56
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    if-gtz p2, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    .line 73
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
    .line 90
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedOutputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
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

    .line 184
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    iput v3, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    .line 85
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    .line 86
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    .line 173
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 177
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buffer == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    .line 129
    .local v0, "internalBuffer":[B
    array-length v1, v0

    if-lt p3, v1, :cond_1

    .line 130
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    .line 131
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_2
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 138
    array-length v1, v0

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_2

    .line 139
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    .line 142
    :cond_2
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 143
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
