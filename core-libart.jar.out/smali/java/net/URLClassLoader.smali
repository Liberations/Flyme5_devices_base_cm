.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLClassLoader$URLFileHandler;,
        Ljava/net/URLClassLoader$URLJarHandler;,
        Ljava/net/URLClassLoader$URLHandler;,
        Ljava/net/URLClassLoader$IndexFile;
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DMI_COLLECTION_OF_URLS",
        "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
    }
.end annotation


# instance fields
.field private factory:Ljava/net/URLStreamHandlerFactory;

.field handlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
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

.field originalUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/net/URL;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 540
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 541
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 556
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 4
    .param p1, "searchUrls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 710
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    .line 711
    iput-object p3, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 712
    array-length v1, p1

    .line 713
    .local v1, "nbUrls":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    .line 714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 717
    iget-object v2, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :try_start_0
    iget-object v2, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_0
    return-void

    .line 720
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic access$000(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/security/CodeSource;

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/util/jar/Manifest;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/security/CodeSource;

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/net/URL;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLClassLoader;
    .param p1, "x1"    # Ljava/net/URL;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    return-object v0
.end method

.method private createSearchURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 764
    if-nez p1, :cond_1

    .line 778
    .end local p1    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object p1

    .line 768
    .restart local p1    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 770
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {p1}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v0, :cond_2

    .line 774
    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 778
    :cond_2
    new-instance v0, Ljava/net/URL;

    const-string v1, "jar"

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    const-string v7, "jar"

    invoke-interface {v5, v7}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 851
    new-instance v0, Ljava/net/URLClassLoader$URLFileHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLFileHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 847
    new-instance v0, Ljava/net/URLClassLoader$URLHandler;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    return-object v0
.end method

.method private createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 14
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 856
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 857
    .local v7, "file":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    const-string v5, ""

    .line 869
    .local v5, "prefixName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 871
    .local v3, "jarURL":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    .line 874
    .local v8, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v8}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    .line 875
    .local v4, "jf":Ljava/util/jar/JarFile;
    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V

    .line 877
    .local v0, "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    invoke-virtual {v0}, Ljava/net/URLClassLoader$URLJarHandler;->getIndex()Ljava/net/URLClassLoader$IndexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 879
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v9

    .line 880
    .local v9, "manifest":Ljava/util/jar/Manifest;
    if-eqz v9, :cond_0

    .line 881
    invoke-virtual {v9}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 883
    .local v6, "classpath":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 884
    iget-object v1, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v6}, Ljava/net/URLClassLoader;->getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v1, v2, v11}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 893
    .end local v0    # "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    .end local v3    # "jarURL":Ljava/net/URL;
    .end local v4    # "jf":Ljava/util/jar/JarFile;
    .end local v5    # "prefixName":Ljava/lang/String;
    .end local v6    # "classpath":Ljava/lang/String;
    .end local v8    # "juc":Ljava/net/JarURLConnection;
    .end local v9    # "manifest":Ljava/util/jar/Manifest;
    :cond_0
    :goto_1
    return-object v0

    .line 860
    :cond_1
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 861
    .local v10, "sepIdx":I
    const/4 v1, -0x1

    if-ne v10, v1, :cond_2

    .line 863
    const/4 v0, 0x0

    goto :goto_1

    .line 865
    :cond_2
    add-int/lit8 v10, v10, 0x2

    .line 866
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "prefixName":Ljava/lang/String;
    goto :goto_0

    .line 891
    .end local v10    # "sepIdx":I
    :catch_0
    move-exception v1

    .line 893
    const/4 v0, 0x0

    goto :goto_1

    .line 887
    .restart local v0    # "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    .restart local v3    # "jarURL":Ljava/net/URL;
    .restart local v4    # "jf":Ljava/util/jar/JarFile;
    .restart local v8    # "juc":Ljava/net/JarURLConnection;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getHandler(I)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 811
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 812
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    .line 818
    :goto_0
    return-object v0

    .line 814
    :cond_0
    invoke-direct {p0}, Ljava/net/URLClassLoader;->makeNewHandler()V

    .line 815
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 816
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    goto :goto_0

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "root"    # Ljava/net/URL;
    .param p2, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 989
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v0, "addedURLs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "file":Ljava/lang/String;
    const-string v7, "!/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 992
    .local v4, "jarIndex":I
    const-string v7, "/"

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 993
    .local v3, "index":I
    if-nez v3, :cond_0

    .line 994
    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 997
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 998
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 999
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1003
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1004
    .local v6, "url":Ljava/net/URL;
    invoke-direct {p0, v6}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1010
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static isDirectory(Ljava/net/URL;)Z
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 4
    .param p1, "manifest"    # Ljava/util/jar/Manifest;
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 965
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 966
    .local v0, "attributes":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_0

    .line 967
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 969
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 974
    :goto_0
    return v3

    .line 972
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 973
    .local v1, "mainAttributes":Ljava/util/jar/Attributes;
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 974
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized makeNewHandler()V
    .locals 5

    .prologue
    .line 822
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 823
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 824
    .local v0, "nextCandidate":Ljava/net/URL;
    if-nez v0, :cond_1

    .line 825
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "nextCandidate == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    .end local v0    # "nextCandidate":Ljava/net/URL;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 827
    .restart local v0    # "nextCandidate":Ljava/net/URL;
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 829
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "protocol":Ljava/lang/String;
    const-string v3, "jar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 831
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .line 837
    .local v2, "result":Ljava/net/URLClassLoader$URLHandler;
    :goto_0
    if-eqz v2, :cond_0

    .line 838
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    .end local v0    # "nextCandidate":Ljava/net/URL;
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    :cond_2
    monitor-exit p0

    return-void

    .line 832
    .restart local v0    # "nextCandidate":Ljava/net/URL;
    .restart local v1    # "protocol":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 833
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .restart local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    goto :goto_0

    .line 835
    .end local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    :cond_4
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .restart local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    goto :goto_0
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 2
    .param p0, "urls"    # [Ljava/net/URL;

    .prologue
    .line 675
    new-instance v0, Ljava/net/URLClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 1
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parentCl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 690
    new-instance v0, Ljava/net/URLClassLoader;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 566
    :try_start_0
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v10

    .line 914
    .local v10, "mainAttributes":Ljava/util/jar/Attributes;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 915
    .local v9, "dirName":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v12

    .line 916
    .local v12, "packageAttributes":Ljava/util/jar/Attributes;
    const/4 v11, 0x0

    .line 917
    .local v11, "noEntry":Z
    if-nez v12, :cond_0

    .line 918
    const/4 v11, 0x1

    .line 919
    move-object v12, v10

    .line 921
    :cond_0
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "specificationTitle":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v11, :cond_1

    .line 924
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 927
    :cond_1
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "specificationVersion":Ljava/lang/String;
    if-nez v3, :cond_2

    if-nez v11, :cond_2

    .line 930
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 933
    :cond_2
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "specificationVendor":Ljava/lang/String;
    if-nez v4, :cond_3

    if-nez v11, :cond_3

    .line 936
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 939
    :cond_3
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 941
    .local v5, "implementationTitle":Ljava/lang/String;
    if-nez v5, :cond_4

    if-nez v11, :cond_4

    .line 942
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 945
    :cond_4
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 947
    .local v6, "implementationVersion":Ljava/lang/String;
    if-nez v6, :cond_5

    if-nez v11, :cond_5

    .line 948
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 951
    :cond_5
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 953
    .local v7, "implementationVendor":Ljava/lang/String;
    if-nez v7, :cond_6

    if-nez v11, :cond_6

    .line 954
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 958
    :cond_6
    invoke-direct {p0, p2, v9}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v8, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2f

    .line 735
    const/16 v8, 0x2e

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 736
    .local v5, "partialName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "classFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 738
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 739
    .local v6, "position":I
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 740
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 742
    :cond_0
    const/4 v2, 0x0

    .line 744
    .local v2, "n":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    invoke-direct {p0, v2}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    .line 745
    .local v1, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v1, :cond_1

    .line 753
    new-instance v8, Ljava/lang/ClassNotFoundException;

    invoke-direct {v8, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 748
    :cond_1
    invoke-virtual {v1, v4, v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 749
    .local v7, "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_2

    .line 750
    return-object v7

    :cond_2
    move v2, v3

    .line 752
    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 793
    if-nez p1, :cond_1

    move-object v3, v4

    .line 807
    :cond_0
    :goto_0
    return-object v3

    .line 796
    :cond_1
    const/4 v1, 0x0

    .line 798
    .local v1, "n":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 799
    .local v0, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_2

    move-object v3, v4

    .line 807
    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 803
    .local v3, "res":Ljava/net/URL;
    if-nez v3, :cond_0

    move v1, v2

    .line 806
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    const/4 v4, 0x0

    .line 595
    :goto_0
    return-object v4

    .line 586
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v1, 0x0

    .line 589
    .local v1, "n":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 590
    .local v0, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_1

    .line 595
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {v0, p1, v3}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v1, v2

    .line 594
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 7
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .prologue
    const/16 v6, 0x2f

    .line 612
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 613
    .local v2, "pc":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    .line 614
    .local v3, "u":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/JarURLConnection;

    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 623
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 624
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    :cond_1
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v4, v6, :cond_2

    .line 631
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 633
    :cond_2
    invoke-static {v3}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    new-instance v4, Ljava/io/FilePermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "read"

    invoke-direct {v4, v5, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 645
    .end local v1    # "path":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 636
    .restart local v1    # "path":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/FilePermission;

    const-string v5, "read"

    invoke-direct {v4, v1, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1

    .line 639
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 640
    .restart local v0    # "host":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 641
    const-string v0, "localhost"

    .line 643
    :cond_5
    new-instance v4, Ljava/net/SocketPermission;

    const-string v5, "connect, accept"

    invoke-direct {v4, v0, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1

    .line 618
    .end local v0    # "host":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method
