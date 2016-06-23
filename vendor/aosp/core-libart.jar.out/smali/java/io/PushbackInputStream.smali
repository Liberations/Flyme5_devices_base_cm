.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 57
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 58
    return-void

    .line 56
    :cond_0
    new-array v0, v1, [B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    if-gtz p2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 81
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 82
    return-void

    .line 80
    :cond_1
    new-array v0, p2, [B

    goto :goto_0
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PushbackInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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

    .line 101
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    iput-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 104
    iput-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 106
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 319
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 141
    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 146
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v4, :cond_0

    .line 168
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 170
    :cond_0
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 171
    const/4 v0, 0x0

    .local v0, "copiedBytes":I
    const/4 v1, 0x0

    .local v1, "copyLength":I
    move v3, p2

    .line 173
    .local v3, "newOffset":I
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v5, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 174
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_2

    move v1, p3

    .line 175
    :goto_0
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v4, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 176
    add-int/2addr v3, v1

    .line 177
    add-int/2addr v0, v1

    .line 179
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 182
    :cond_1
    if-ne v1, p3, :cond_3

    .line 192
    .end local p3    # "byteCount":I
    :goto_1
    return p3

    .line 174
    .restart local p3    # "byteCount":I
    :cond_2
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int v1, v4, v5

    goto :goto_0

    .line 185
    :cond_3
    iget-object v4, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    sub-int v5, p3, v0

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 186
    .local v2, "inCopied":I
    if-lez v2, :cond_4

    .line 187
    add-int p3, v2, v0

    goto :goto_1

    .line 189
    :cond_4
    if-nez v0, :cond_5

    move p3, v2

    .line 190
    goto :goto_1

    :cond_5
    move p3, v0

    .line 192
    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 209
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 210
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 212
    :cond_0
    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 223
    :goto_0
    return-wide v2

    .line 215
    :cond_1
    const/4 v0, 0x0

    .line 216
    .local v0, "numSkipped":I
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 217
    int-to-long v4, v0

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_4

    move-wide v2, p1

    :goto_1
    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 218
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 220
    :cond_2
    int-to-long v2, v0

    cmp-long v1, v2, p1

    if-gez v1, :cond_3

    .line 221
    int-to-long v2, v0

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    int-to-long v4, v0

    sub-long v4, p1, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 223
    :cond_3
    int-to-long v2, v0

    goto :goto_0

    .line 217
    :cond_4
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    goto :goto_1
.end method

.method public unread(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 308
    return-void
.end method

.method public unread([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 244
    return-void
.end method

.method public unread([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-le p3, v0, :cond_0

    .line 274
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 277
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 281
    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 282
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 283
    return-void
.end method
