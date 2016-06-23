.class public Llibcore/net/url/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 87
    const-string v2, "anonymous"

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    .line 89
    const-string v2, ""

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "parse":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 112
    .local v1, "split":I
    if-ltz v1, :cond_1

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    .line 114
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    .line 119
    .end local v1    # "split":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    return-void

    .line 116
    .restart local v1    # "split":I
    :cond_1
    iput-object v0, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    goto :goto_0

    .line 122
    .end local v1    # "split":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    .line 135
    iput-object p2, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    .line 136
    return-void
.end method

.method private cd()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xfa

    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 142
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 144
    .local v1, "idx":I
    if-lez v1, :cond_1

    .line 145
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    .line 148
    .local v2, "reply":I
    if-eq v2, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    .line 152
    :cond_0
    if-eq v2, v7, :cond_1

    .line 153
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to change directories"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "reply":I
    :cond_1
    return-void
.end method

.method private connectInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 210
    .local v3, "port":I
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v1

    .line 211
    .local v1, "connectTimeout":I
    if-gtz v3, :cond_0

    .line 212
    const/16 v3, 0x15

    .line 214
    :cond_0
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 215
    :cond_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    .line 219
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 221
    const/4 v4, 0x1

    iput-boolean v4, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    .line 222
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    .line 223
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    .line 224
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->login()V

    .line 225
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->setType()V

    .line 226
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->cd()V

    .line 231
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 232
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    iput v4, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    .line 234
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->port()V

    .line 235
    if-nez v1, :cond_3

    .line 237
    const/16 v1, 0xbb8

    .line 239
    :cond_3
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 240
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getFile()V

    .line 245
    :goto_1
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    .line 246
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 247
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 252
    new-instance v4, Llibcore/net/url/FtpURLInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-direct {v4, v5, v6}, Llibcore/net/url/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 255
    :cond_4
    return-void

    .line 217
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_5
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    goto/16 :goto_0

    .line 243
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_6
    :try_start_1
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->sendFile()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not establish data connection"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    .line 275
    .local v1, "reply":I
    const/16 v2, 0x226

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    .line 279
    :cond_0
    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_1

    .line 280
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_1
    return-void
.end method

.method private getReply()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v5, 0x3

    new-array v0, v5, [B

    .line 346
    .local v0, "code":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 347
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 348
    .local v4, "tmp":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 349
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 351
    :cond_0
    int-to-byte v5, v4

    aput-byte v5, v0, v2

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v4    # "tmp":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "multiline":Z
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 357
    const/4 v3, 0x1

    .line 359
    :cond_2
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    .line 360
    if-eqz v3, :cond_4

    .line 361
    :cond_3
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readMultiLine()Z

    move-result v5

    if-nez v5, :cond_3

    .line 366
    :cond_4
    :try_start_0
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "reply code is invalid"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    check-cast v5, Ljava/io/IOException;

    throw v5
.end method

.method private login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14b

    const/16 v4, 0xe6

    const/16 v3, 0xdc

    .line 374
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 375
    .local v0, "reply":I
    if-ne v0, v3, :cond_1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 381
    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    .line 385
    :cond_0
    if-ne v0, v5, :cond_3

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 388
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    .line 389
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (PASS): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (USER): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_3
    return-void
.end method

.method private port()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 401
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to configure data port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 412
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readMultiLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 422
    :cond_1
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 424
    goto :goto_0
.end method

.method private sendFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 438
    .local v0, "reply":I
    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    .line 439
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to store file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_0
    return-void
.end method

.method private setType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    const-string v0, "TYPE I\r\n"

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 495
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to set transfer type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 501
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v6, :cond_2

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .restart local v4    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    .line 181
    const/4 v6, 0x0

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 182
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V

    .line 206
    :cond_1
    return-void

    .line 175
    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 176
    .local v5, "selector":Ljava/net/ProxySelector;
    if-eqz v5, :cond_0

    .line 177
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 184
    .end local v5    # "selector":Ljava/net/ProxySelector;
    :cond_3
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 185
    .restart local v5    # "selector":Ljava/net/ProxySelector;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 186
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, "connectOK":Z
    const-string v1, ""

    .line 188
    .local v1, "failureReason":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 191
    :try_start_0
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v5, :cond_4

    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eq v6, v7, :cond_4

    .line 198
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_1

    .line 202
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_5
    if-nez v0, :cond_1

    .line 203
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/url/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 265
    const-string v0, "content/unknown"

    .line 267
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    .line 302
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    .line 341
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 318
    .local v0, "port":I
    if-gtz v0, :cond_0

    .line 319
    const/16 v0, 0x15

    .line 321
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 459
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 462
    :cond_0
    iput-boolean p1, p0, Llibcore/net/url/FtpURLConnection;->doInput:Z

    .line 463
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->doOutput:Z

    .line 464
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 482
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 485
    :cond_0
    iput-boolean p1, p0, Llibcore/net/url/FtpURLConnection;->doOutput:Z

    .line 486
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->doInput:Z

    .line 487
    return-void

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
