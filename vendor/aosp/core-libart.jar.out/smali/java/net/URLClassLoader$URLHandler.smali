.class Ljava/net/URLClassLoader$URLHandler;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLHandler"
.end annotation


# instance fields
.field codeSourceUrl:Ljava/net/URL;

.field final synthetic this$0:Ljava/net/URLClassLoader;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 149
    iput-object p1, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    .line 151
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    .line 152
    return-void
.end method


# virtual methods
.method createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-object v2

    .line 180
    :cond_0
    :try_start_0
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 184
    .local v9, "clBuf":[B
    if-eqz p2, :cond_1

    .line 185
    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "packageDotName":Ljava/lang/String;
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    # invokes: Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    invoke-static {v0, v1}, Ljava/net/URLClassLoader;->access$000(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v11

    .line 187
    .local v11, "packageObj":Ljava/lang/Package;
    if-nez v11, :cond_2

    .line 188
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    # invokes: Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    invoke-static/range {v0 .. v8}, Ljava/net/URLClassLoader;->access$100(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 196
    .end local v1    # "packageDotName":Ljava/lang/String;
    .end local v11    # "packageObj":Ljava/lang/Package;
    :cond_1
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v5, 0x0

    array-length v6, v9

    new-instance v7, Ljava/security/CodeSource;

    iget-object v3, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    check-cast v2, [Ljava/security/cert/Certificate;

    invoke-direct {v7, v3, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    move-object v2, v0

    move-object v3, p3

    move-object v4, v9

    # invokes: Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    invoke-static/range {v2 .. v7}, Ljava/net/URLClassLoader;->access$200(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 181
    .end local v9    # "clBuf":[B
    :catch_0
    move-exception v10

    .line 182
    .local v10, "e":Ljava/io/IOException;
    goto :goto_0

    .line 191
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v1    # "packageDotName":Ljava/lang/String;
    .restart local v9    # "clBuf":[B
    .restart local v11    # "packageObj":Ljava/lang/Package;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Package;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Package is sealed"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v2, p2}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 163
    .local v1, "resURL":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 166
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v0, p1, p3}, Ljava/net/URLClassLoader$URLHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 170
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v2

    .line 170
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v5, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v5, p1}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 201
    .local v2, "resURL":Ljava/net/URL;
    if-eqz v2, :cond_2

    .line 203
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 204
    .local v3, "uc":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    .end local v2    # "resURL":Ljava/net/URL;
    .end local v3    # "uc":Ljava/net/URLConnection;
    :cond_0
    :goto_0
    return-object v2

    .line 211
    .restart local v2    # "resURL":Ljava/net/URL;
    .restart local v3    # "uc":Ljava/net/URLConnection;
    :cond_1
    check-cast v3, Ljava/net/HttpURLConnection;

    .end local v3    # "uc":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, "code":I
    const/16 v5, 0xc8

    if-lt v0, v5, :cond_2

    const/16 v5, 0x12c

    if-lt v0, v5, :cond_0

    .end local v0    # "code":I
    :cond_2
    move-object v2, v4

    .line 221
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    move-object v2, v4

    .line 216
    goto :goto_0

    .line 217
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v4

    .line 218
    goto :goto_0
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 156
    .local v0, "res":Ljava/net/URL;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    return-void
.end method

.method targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 9
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 226
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v7, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    sget-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v0, v7, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "file":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v4    # "file":Ljava/lang/String;
    .end local v7    # "fileBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/net/MalformedURLException;
    move-object v0, v8

    .line 233
    goto :goto_0
.end method
