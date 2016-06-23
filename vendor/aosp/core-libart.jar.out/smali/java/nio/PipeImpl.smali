.class final Ljava/nio/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/PipeImpl$1;,
        Ljava/nio/PipeImpl$PipeSinkChannel;,
        Ljava/nio/PipeImpl$PipeSourceChannel;
    }
.end annotation


# instance fields
.field private final sink:Ljava/nio/PipeImpl$PipeSinkChannel;

.field private final source:Ljava/nio/PipeImpl$PipeSourceChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 7
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    .line 39
    :try_start_0
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 40
    .local v4, "fd1":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 41
    .local v5, "fd2":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 45
    new-instance v0, Ljava/nio/PipeImpl$PipeSinkChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v4, v1}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    iput-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    .line 46
    new-instance v0, Ljava/nio/PipeImpl$PipeSourceChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v5, v1}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    iput-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    .end local v4    # "fd1":Ljava/io/FileDescriptor;
    .end local v5    # "fd2":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 48
    .local v6, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v6}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;

    return-object v0
.end method
