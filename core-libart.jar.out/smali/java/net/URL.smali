.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static final streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient streamHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    move-object v0, v1

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v3, p0, Ljava/net/URL;->port:I

    .line 233
    if-ge p3, v3, :cond_0

    .line 234
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port < -1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_2

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 245
    :cond_2
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 247
    iput p3, p0, Ljava/net/URL;->port:I

    .line 249
    invoke-static {p2, p4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 253
    const-string v1, "#"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "hash":I
    if-eq v0, v3, :cond_3

    .line 255
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 256
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 260
    :goto_0
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    .line 265
    if-nez p5, :cond_4

    .line 266
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 267
    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v1, :cond_5

    .line 268
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_3
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_4
    iput-object p5, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 273
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 11
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->port:I

    .line 151
    if-nez p2, :cond_0

    .line 152
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    iput-object p3, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 157
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-static {p2}, Llibcore/net/url/UrlUtils;->getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 163
    .local v10, "schemeSpecificPartStart":I
    :goto_0
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const/4 p1, 0x0

    .line 168
    :cond_2
    if-eqz p1, :cond_5

    .line 169
    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 179
    :cond_3
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_6

    .line 180
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 181
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_6

    .line 182
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    .end local v10    # "schemeSpecificPartStart":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 175
    .restart local v10    # "schemeSpecificPartStart":I
    :cond_5
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 176
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_6
    :try_start_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p2, v10, v1}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-void

    .line 189
    :catch_0
    move-exception v9

    .line 190
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 543
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 544
    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 545
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 559
    iget-object v2, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_4

    .line 560
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 546
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "index":I
    if-le v1, v4, :cond_2

    .line 549
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 551
    :cond_2
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 552
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 553
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_0

    .line 555
    :cond_3
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_0

    .line 562
    .end local v1    # "index":I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 3
    .param p0, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 111
    const-class v1, Ljava/net/URL;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 114
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 115
    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit v1

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 570
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 346
    if-nez p1, :cond_1

    .line 355
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 349
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 355
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    check-cast p1, Ljava/net/URL;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    goto :goto_0
.end method

.method fixURL(Z)V
    .locals 6
    .param p1, "fixHost"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 277
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 278
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 279
    iget v1, p0, Ljava/net/URL;->port:I

    if-eq v1, v3, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URL;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    .line 284
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "index":I
    if-le v0, v3, :cond_2

    .line 285
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 291
    .end local v0    # "index":I
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0    # "index":I
    if-le v0, v3, :cond_3

    .line 292
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 298
    .end local v0    # "index":I
    :goto_1
    return-void

    .line 288
    :cond_2
    iput-object v5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_3
    iput-object v5, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getEffectivePort()I
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget v1, p0, Ljava/net/URL;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Ljava/net/URL;->hashCode:I

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 370
    :cond_0
    iget v0, p0, Ljava/net/URL;->hashCode:I

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1
    .param p1, "otherURL"    # Ljava/net/URL;

    .prologue
    .line 363
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "ref"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 307
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 309
    :cond_0
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 310
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 311
    iput p3, p0, Ljava/net/URL;->port:I

    .line 312
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    .line 315
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "userInfo"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "ref"    # Ljava/lang/String;

    .prologue
    .line 665
    move-object v4, p6

    .line 666
    .local v4, "file":Ljava/lang/String;
    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p8

    .line 669
    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 670
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 671
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 672
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 673
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 674
    return-void
.end method

.method setupStreamHandler()V
    .locals 13

    .prologue
    .line 386
    sget-object v10, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URLStreamHandler;

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 387
    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v10, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget-object v10, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v10, :cond_2

    .line 394
    sget-object v10, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v10

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 395
    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v10, :cond_2

    .line 396
    sget-object v10, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v12, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 403
    :cond_2
    const-string v10, "java.protocol.handler.pkgs"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "packageList":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 405
    .local v3, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 406
    const-string v10, "\\|"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v0, v5

    .line 407
    .local v9, "packageName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Handler"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 410
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URLStreamHandler;

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 411
    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v10, :cond_0

    .line 412
    sget-object v10, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v12, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 415
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v10

    .line 406
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 424
    new-instance v10, Llibcore/net/url/FileHandler;

    invoke-direct {v10}, Llibcore/net/url/FileHandler;-><init>()V

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 444
    :cond_4
    :goto_3
    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v10, :cond_0

    .line 445
    sget-object v10, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v12, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 425
    :cond_5
    iget-object v10, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v11, "ftp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 426
    new-instance v10, Llibcore/net/url/FtpHandler;

    invoke-direct {v10}, Llibcore/net/url/FtpHandler;-><init>()V

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    .line 427
    :cond_6
    iget-object v10, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 429
    :try_start_1
    const-string v7, "com.android.okhttp.HttpHandler"

    .line 430
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URLStreamHandler;

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 431
    .end local v7    # "name":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 432
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 434
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v10, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 436
    :try_start_2
    const-string v7, "com.android.okhttp.HttpsHandler"

    .line 437
    .restart local v7    # "name":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URLStreamHandler;

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 438
    .end local v7    # "name":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 439
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 441
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v10, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v11, "jar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 442
    new-instance v10, Llibcore/net/url/JarHandler;

    invoke-direct {v10}, Llibcore/net/url/JarHandler;-><init>()V

    iput-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_3

    .line 417
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v9    # "packageName":Ljava/lang/String;
    :catch_3
    move-exception v10

    goto/16 :goto_2

    .line 416
    :catch_4
    move-exception v10

    goto/16 :goto_2
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toURILenient()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
