.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# instance fields
.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private needsDictionary:Z

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "noHeader"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    .line 81
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;->createStream(Z)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 82
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private checkOpen()V
    .locals 4

    .prologue
    .line 331
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to use Inflater after calling end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    return-void
.end method

.method private native createStream(Z)J
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native inflateImpl([BIIJ)I
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I
.end method

.method private native setInputImpl([BIIJ)V
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->endImpl(J)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 112
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 113
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    throw v1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized finished()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 139
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getAdlerImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 151
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 161
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentOffset()I
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemaining()I
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I

    iget v1, p0, Ljava/util/zip/Inflater;->inRead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 187
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .locals 4

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 198
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inflate([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized inflate([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 227
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 229
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 231
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsInput()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    monitor-exit p0

    return v7

    .line 235
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 236
    .local v6, "neededDict":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 237
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->inflateImpl([BIIJ)I

    move-result v7

    .line 238
    .local v7, "result":I
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 239
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "Needs dictionary"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v6    # "neededDict":Z
    .end local v7    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsDictionary()Z
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .locals 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iget v1, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 273
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->resetImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDictionary([B)V
    .locals 2
    .param p1, "dictionary"    # [B

    .prologue
    .line 283
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setDictionary([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDictionary([BII)V
    .locals 6
    .param p1, "dictionary"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 293
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 294
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setDictionaryImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setFileInput(Ljava/io/FileDescriptor;JI)I
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # I

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 324
    iget-wide v5, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Inflater;->setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 325
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInput([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 304
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInput([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->checkOpen()V

    .line 313
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 315
    iput p3, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 316
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setInputImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
