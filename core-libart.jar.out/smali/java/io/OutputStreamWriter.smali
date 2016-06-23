.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 55
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 44
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 81
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 86
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 87
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 44
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 101
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 102
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 103
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 104
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 44
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 120
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 121
    iput-object p2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 122
    return-void
.end method

.method private checkStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStreamWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    return-void
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "chars"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 179
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-direct {p0, v3}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 188
    :cond_1
    return-void
.end method

.method private drainEncoder()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 197
    .local v0, "chars":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 198
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 210
    :cond_0
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 211
    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-direct {p0, v5}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    .line 214
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-direct {p0, v5}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    .line 219
    :cond_3
    return-void
.end method

.method private flushBytes(Z)V
    .locals 5
    .param p1, "flushUnderlyingStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 164
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 165
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 166
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 167
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 173
    :cond_1
    monitor-exit v2

    .line 174
    return-void

    .line 173
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method checkError()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    move-result v0

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
    .line 137
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->drainEncoder()V

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    .line 141
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 145
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    .line 159
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 283
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 285
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v3, 0x0

    int-to-char v4, p1

    aput-char v4, v1, v3

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 286
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 287
    monitor-exit v2

    .line 288
    return-void

    .line 287
    .end local v0    # "chars":Ljava/nio/CharBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    if-gez p3, :cond_0

    .line 314
    :try_start_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 316
    :cond_0
    if-nez p1, :cond_1

    .line 317
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "str == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_1
    or-int v1, p2, p3

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_3

    .line 320
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 322
    :cond_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 323
    add-int v1, p3, p2

    invoke-static {p1, p2, v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 324
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 325
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 264
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 265
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 266
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 267
    monitor-exit v2

    .line 268
    return-void

    .line 267
    .end local v0    # "chars":Ljava/nio/CharBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
