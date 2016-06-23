.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$OutputStreamChannel;,
        Ljava/nio/channels/Channels$InputStreamChannel;,
        Ljava/nio/channels/Channels$ChannelOutputStream;,
        Ljava/nio/channels/Channels$ChannelInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkBlocking(Ljava/nio/channels/Channel;)V
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    .prologue
    .line 278
    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/channels/SelectableChannel;

    .end local p0    # "channel":Ljava/nio/channels/Channel;
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 281
    :cond_0
    return-void
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 96
    new-instance v0, Ljava/nio/channels/Channels$InputStreamChannel;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$InputStreamChannel;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 114
    new-instance v0, Ljava/nio/channels/Channels$OutputStreamChannel;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$OutputStreamChannel;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 59
    new-instance v0, Ljava/nio/channels/Channels$ChannelInputStream;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    .line 79
    new-instance v0, Ljava/nio/channels/Channels$ChannelOutputStream;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCapacity"    # I

    .prologue
    .line 135
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/nio/channels/Channels$ChannelInputStream;

    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCapacity"    # I

    .prologue
    .line 177
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/nio/channels/Channels$ChannelOutputStream;

    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$ChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method
