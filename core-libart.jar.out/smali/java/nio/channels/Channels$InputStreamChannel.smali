.class Ljava/nio/channels/Channels$InputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamChannel"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    .line 295
    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 319
    return-void
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 298
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 302
    .local v1, "bytesRemain":I
    new-array v0, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 305
    .local v2, "readCount":I
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->begin()V

    .line 306
    iget-object v3, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 308
    if-ltz v2, :cond_2

    :goto_0
    :try_start_3
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    .line 310
    if-lez v2, :cond_1

    .line 311
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    move v4, v5

    .line 308
    goto :goto_0

    :catchall_1
    move-exception v3

    if-ltz v2, :cond_3

    :goto_1
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method
