.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private destination:Ljava/io/PipedReader;

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 0
    .param p1, "destination"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 67
    .local v0, "reader":Ljava/io/PipedReader;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/io/PipedReader;->done()V

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 72
    :cond_0
    return-void
.end method

.method public connect(Ljava/io/PipedReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reader == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    monitor-enter p1

    .line 89
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    .line 93
    iput-object p1, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 95
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 108
    .local v0, "reader":Ljava/io/PipedReader;
    iget-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    if-nez v0, :cond_1

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_1
    monitor-enter v0

    .line 116
    :try_start_0
    iget-boolean v1, v0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 119
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 186
    .local v0, "reader":Ljava/io/PipedReader;
    if-nez v0, :cond_0

    .line 187
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PipedReader;->receive(C)V

    .line 190
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
    .line 156
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 157
    .local v0, "reader":Ljava/io/PipedReader;
    if-nez v0, :cond_0

    .line 158
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 161
    return-void
.end method
