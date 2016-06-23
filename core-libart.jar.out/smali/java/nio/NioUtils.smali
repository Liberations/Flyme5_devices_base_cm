.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 38
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 37
    .restart local p0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    check-cast p0, Ljava/nio/DirectByteBuffer;

    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->free()V

    goto :goto_0
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 44
    check-cast p0, Ljava/nio/FileChannelImpl;

    .end local p0    # "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "ioObject"    # Ljava/io/Closeable;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I

    .prologue
    .line 51
    new-instance v0, Ljava/nio/FileChannelImpl;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    check-cast p0, Ljava/nio/ByteArrayBuffer;

    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 67
    check-cast p0, Ljava/nio/ByteArrayBuffer;

    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    return v0
.end method
