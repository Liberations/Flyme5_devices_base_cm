.class final Ljava/nio/FileChannelImpl$FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileLockImpl"
.end annotation


# instance fields
.field private isReleased:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    .line 141
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    .line 142
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl$FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/FileChannelImpl;

    invoke-virtual {v0, p0}, Ljava/nio/FileChannelImpl;->release(Ljava/nio/channels/FileLock;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    .line 156
    :cond_1
    return-void
.end method
