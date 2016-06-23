.class public Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAFStream"
.end annotation


# instance fields
.field private endOffset:J

.field private offset:J

.field private final sharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 6
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    .line 478
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 471
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    .line 472
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 473
    iput-wide p4, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    .line 474
    return-void
.end method

.method static synthetic access$102(Ljava/util/zip/ZipFile$RAFStream;J)J
    .locals 1
    .param p0, "x0"    # Ljava/util/zip/ZipFile$RAFStream;
    .param p1, "x1"    # J

    .prologue
    .line 464
    iput-wide p1, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    return-wide p1
.end method

.method static synthetic access$200(Ljava/util/zip/ZipFile$RAFStream;)J
    .locals 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile$RAFStream;

    .prologue
    .line 464
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fill(Ljava/util/zip/Inflater;I)I
    .locals 8
    .param p1, "inflater"    # Ljava/util/zip/Inflater;
    .param p2, "nativeEndBufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v3, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v3

    .line 515
    :try_start_0
    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 516
    .local v1, "len":I
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    invoke-virtual {p1, v2, v4, v5, p2}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    move-result v0

    .line 519
    .local v0, "cnt":I
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 520
    monitor-exit v3

    return v1

    .line 521
    .end local v0    # "cnt":I
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v4, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v4

    .line 490
    :try_start_0
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v8, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long v2, v6, v8

    .line 491
    .local v2, "length":J
    int-to-long v6, p3

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    .line 492
    long-to-int p3, v2

    .line 494
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 495
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 496
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 497
    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 498
    monitor-exit v4

    .line 500
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_1
    const/4 v0, -0x1

    monitor-exit v4

    goto :goto_0

    .line 502
    .end local v0    # "count":I
    .end local v2    # "length":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 507
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long p1, v0, v2

    .line 509
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 510
    return-wide p1
.end method
