.class Ljava/net/URLClassLoader$URLJarHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLJarHandler"
.end annotation


# instance fields
.field final index:Ljava/net/URLClassLoader$IndexFile;

.field final jf:Ljava/util/jar/JarFile;

.field final prefixName:Ljava/lang/String;

.field final subHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V
    .locals 2
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "jarURL"    # Ljava/net/URL;
    .param p4, "jf"    # Ljava/util/jar/JarFile;
    .param p5, "prefixName"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    .line 247
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    .line 248
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    .line 250
    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {p4, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 251
    .local v0, "je":Ljava/util/jar/JarEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    .line 252
    return-void

    .line 251
    :cond_0
    invoke-static {p4, v0, p2}, Ljava/net/URLClassLoader$IndexFile;->readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;

    move-result-object v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    .locals 1
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "jarURL"    # Ljava/net/URL;
    .param p4, "jf"    # Ljava/util/jar/JarFile;
    .param p5, "prefixName"    # Ljava/lang/String;
    .param p6, "index"    # Ljava/net/URLClassLoader$IndexFile;

    .prologue
    .line 254
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    .line 256
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    .line 257
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    .line 258
    iput-object p6, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    .line 259
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    .line 260
    return-void
.end method

.method private createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 15
    .param p1, "entry"    # Ljava/util/jar/JarEntry;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/jar/Manifest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    .line 334
    .local v13, "is":Ljava/io/InputStream;
    invoke-static {v13}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 338
    .local v10, "clBuf":[B
    if-eqz p3, :cond_0

    .line 339
    const/16 v1, 0x2f

    const/16 v3, 0x2e

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "packageDotName":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    # invokes: Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    invoke-static {v1, v2}, Ljava/net/URLClassLoader;->access$300(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v14

    .line 341
    .local v14, "packageObj":Ljava/lang/Package;
    if-nez v14, :cond_2

    .line 342
    if-eqz p2, :cond_1

    .line 343
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    .line 363
    .end local v2    # "packageDotName":Ljava/lang/String;
    .end local v14    # "packageObj":Ljava/lang/Package;
    :cond_0
    :goto_0
    new-instance v8, Ljava/security/CodeSource;

    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-direct {v8, v1, v3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 364
    .local v8, "codeS":Ljava/security/CodeSource;
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v6, 0x0

    array-length v7, v10

    move-object/from16 v4, p4

    move-object v5, v10

    # invokes: Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    invoke-static/range {v3 .. v8}, Ljava/net/URLClassLoader;->access$600(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v1

    .end local v8    # "codeS":Ljava/security/CodeSource;
    .end local v10    # "clBuf":[B
    .end local v13    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 335
    :catch_0
    move-exception v11

    .line 336
    .local v11, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1

    .line 346
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "packageDotName":Ljava/lang/String;
    .restart local v10    # "clBuf":[B
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "packageObj":Ljava/lang/Package;
    :cond_1
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    invoke-static/range {v1 .. v9}, Ljava/net/URLClassLoader;->access$400(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Package;->isSealed()Z

    move-result v12

    .line 351
    .local v12, "exception":Z
    if-eqz p2, :cond_3

    .line 352
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    # invokes: Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    invoke-static {v1, v0, v3}, Ljava/net/URLClassLoader;->access$500(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    invoke-virtual {v14, v1}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v12, 0x1

    .line 357
    :cond_3
    :goto_2
    if-eqz v12, :cond_0

    .line 358
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Package %s is sealed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 13
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v10, 0x0

    .line 424
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "file":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const-string v5, ""

    .line 437
    .local v5, "prefixName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 439
    .local v3, "jarURL":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    const-string v6, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "!/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v2, v6, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    .line 442
    .local v8, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v8}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    .line 443
    .local v4, "jf":Ljava/util/jar/JarFile;
    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v3    # "jarURL":Ljava/net/URL;
    .end local v4    # "jf":Ljava/util/jar/JarFile;
    .end local v5    # "prefixName":Ljava/lang/String;
    .end local v8    # "juc":Ljava/net/JarURLConnection;
    :goto_1
    return-object v0

    .line 428
    :cond_0
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 429
    .local v9, "sepIdx":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_1

    move-object v0, v10

    .line 431
    goto :goto_1

    .line 433
    :cond_1
    add-int/lit8 v9, v9, 0x2

    .line 434
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "prefixName":Ljava/lang/String;
    goto :goto_0

    .line 446
    .end local v9    # "sepIdx":I
    :catch_0
    move-exception v1

    move-object v0, v10

    .line 448
    goto :goto_1
.end method

.method private declared-synchronized getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader$URLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .local v1, "sub":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 419
    .end local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    .local v2, "sub":Ljava/net/URLClassLoader$URLHandler;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 408
    .end local v2    # "sub":Ljava/net/URLClassLoader$URLHandler;
    .restart local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "protocol":Ljava/lang/String;
    const-string v3, "jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    # invokes: Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    invoke-static {v3, p1}, Ljava/net/URLClassLoader;->access$700(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    .line 416
    :goto_1
    if-eqz v1, :cond_1

    .line 417
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v1

    .line 419
    .end local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    .restart local v2    # "sub":Ljava/net/URLClassLoader$URLHandler;
    goto :goto_0

    .line 411
    .end local v2    # "sub":Ljava/net/URLClassLoader$URLHandler;
    .restart local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    :cond_2
    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    goto :goto_1

    .line 414
    :cond_3
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    # invokes: Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    invoke-static {v3, p1}, Ljava/net/URLClassLoader;->access$800(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 404
    .end local v0    # "protocol":Ljava/lang/String;
    .end local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
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
    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "entryName":Ljava/lang/String;
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v8, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 295
    .local v0, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v4

    .line 303
    .local v4, "manifest":Ljava/util/jar/Manifest;
    invoke-direct {p0, v0, v4, p1, p3}, Ljava/net/URLClassLoader$URLJarHandler;->createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 327
    .end local v4    # "manifest":Ljava/util/jar/Manifest;
    :goto_0
    return-object v5

    .line 304
    :catch_0
    move-exception v8

    .line 307
    :cond_0
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v8, :cond_3

    .line 309
    if-nez p1, :cond_2

    .line 310
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v8, p2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 314
    .local v7, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_1
    if-eqz v7, :cond_3

    .line 315
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 317
    .local v6, "url":Ljava/net/URL;
    invoke-direct {p0, v6}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .line 318
    .local v2, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v2, p1, p2, p3}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 320
    .local v5, "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1

    goto :goto_0

    .line 312
    .end local v2    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v8, p1}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    goto :goto_1

    .line 327
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 378
    .local v4, "res":Ljava/net/URL;
    if-eqz v4, :cond_0

    move-object v7, v4

    .line 400
    :goto_0
    return-object v7

    .line 381
    :cond_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v7, :cond_3

    .line 382
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 385
    .local v3, "pos":I
    if-lez v3, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "indexedName":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v7, v2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 387
    .local v6, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_3

    .line 388
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 390
    .local v5, "url":Ljava/net/URL;
    invoke-direct {p0, v5}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 391
    .local v0, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 393
    if-eqz v4, :cond_1

    move-object v7, v4

    .line 394
    goto :goto_0

    .end local v0    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "indexedName":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    move-object v2, p1

    .line 385
    goto :goto_1

    .line 400
    .end local v3    # "pos":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "entryName":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v1, p1}, Ljava/net/URLClassLoader$URLJarHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
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
    .line 268
    .local p2, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 269
    .local v4, "res":Ljava/net/URL;
    if-eqz v4, :cond_0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 270
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v7, :cond_3

    .line 273
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 276
    .local v3, "pos":I
    if-lez v3, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "indexedName":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v7, v2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 278
    .local v6, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_3

    .line 279
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 281
    .local v5, "url":Ljava/net/URL;
    invoke-direct {p0, v5}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 282
    .local v0, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .end local v0    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "indexedName":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    move-object v2, p1

    .line 276
    goto :goto_0

    .line 289
    .end local v3    # "pos":I
    :cond_3
    return-void
.end method

.method getIndex()Ljava/net/URLClassLoader$IndexFile;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    return-object v0
.end method
