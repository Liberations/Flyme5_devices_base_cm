.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field protected out:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "pipeSize"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 109
    if-gtz p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipe size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(I)V

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 129
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 173
    return-void
.end method

.method declared-synchronized done()V
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establishConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v0, :cond_1

    .line 186
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 188
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 211
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v4, :cond_0

    .line 212
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 214
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v4, :cond_1

    .line 215
    new-instance v4, Ljava/io/IOException;

    const-string v5, "InputStream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 226
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_0
    :try_start_2
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v3, :cond_3

    .line 228
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 255
    .end local v1    # "attempts":I
    :goto_1
    monitor-exit p0

    return v3

    .line 231
    .restart local v1    # "attempts":I
    :cond_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_6

    :try_start_3
    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v4, :cond_6

    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_6

    .line 232
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe broken"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 242
    .end local v0    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 243
    .local v3, "result":I
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 244
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 246
    :cond_4
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v5, :cond_5

    .line 248
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 249
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 253
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 235
    .end local v3    # "result":I
    .restart local v0    # "attempts":I
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    .line 238
    :catch_1
    move-exception v2

    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_2
.end method

.method public declared-synchronized read([BII)I
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 283
    monitor-enter p0

    :try_start_0
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-nez p3, :cond_0

    .line 357
    :goto_0
    monitor-exit p0

    return v6

    .line 288
    :cond_0
    :try_start_1
    iget-boolean v8, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v8, :cond_1

    .line 289
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not connected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 292
    :cond_1
    :try_start_2
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v8, :cond_2

    .line 293
    new-instance v7, Ljava/io/IOException;

    const-string v8, "InputStream is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 301
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 304
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_1
    :try_start_3
    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v8, v7, :cond_4

    .line 306
    iget-boolean v8, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_3

    move v6, v7

    .line 307
    goto :goto_0

    .line 309
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_a

    :try_start_4
    iget-object v8, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v8, :cond_a

    iget-object v8, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-nez v8, :cond_a

    .line 310
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Pipe broken"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_5
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 320
    .end local v0    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    const/4 v6, 0x0

    .line 323
    .local v6, "totalCopied":I
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget v9, p0, Ljava/io/PipedInputStream;->in:I

    if-lt v8, v9, :cond_7

    .line 324
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v8, v8

    iget v9, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v8, v9

    .line 325
    .local v3, "leftInBuffer":I
    if-ge v3, p3, :cond_b

    move v5, v3

    .line 326
    .local v5, "length":I
    :goto_3
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v9, p0, Ljava/io/PipedInputStream;->out:I

    invoke-static {v8, v9, p1, p2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 327
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v8, v5

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 328
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v9, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v9, v9

    if-ne v8, v9, :cond_5

    .line 329
    const/4 v8, 0x0

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 331
    :cond_5
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget v9, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v8, v9, :cond_6

    .line 333
    const/4 v8, -0x1

    iput v8, p0, Ljava/io/PipedInputStream;->in:I

    .line 334
    const/4 v8, 0x0

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 336
    :cond_6
    add-int/2addr v6, v5

    .line 340
    .end local v3    # "leftInBuffer":I
    .end local v5    # "length":I
    :cond_7
    if-ge v6, p3, :cond_9

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-eq v8, v7, :cond_9

    .line 341
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v7, v8

    .line 342
    .restart local v3    # "leftInBuffer":I
    sub-int v4, p3, v6

    .line 343
    .local v4, "leftToCopy":I
    if-ge v4, v3, :cond_c

    move v5, v4

    .line 344
    .restart local v5    # "length":I
    :goto_4
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    add-int v9, p2, v6

    invoke-static {v7, v8, p1, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 345
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v7, v5

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 346
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v7, v8, :cond_8

    .line 348
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    .line 349
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 351
    :cond_8
    add-int/2addr v6, v5

    .line 355
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v5    # "length":I
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 313
    .end local v6    # "totalCopied":I
    .restart local v0    # "attempts":I
    :cond_a
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto/16 :goto_1

    .end local v1    # "attempts":I
    .restart local v3    # "leftInBuffer":I
    .restart local v6    # "totalCopied":I
    :cond_b
    move v5, p3

    .line 325
    goto :goto_3

    .restart local v4    # "leftToCopy":I
    :cond_c
    move v5, v3

    .line 343
    goto :goto_4

    .line 316
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v6    # "totalCopied":I
    .restart local v1    # "attempts":I
    :catch_1
    move-exception v2

    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_2
.end method

.method protected declared-synchronized receive(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 387
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_2

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v1, v2, :cond_2

    .line 390
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v1, :cond_4

    .line 401
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 403
    :cond_4
    :try_start_5
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 404
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 406
    :cond_5
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 407
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_6
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 411
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_7

    .line 412
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 416
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    monitor-exit p0

    return-void
.end method
