.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

.field private static lastCacheVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 92
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 8

    .prologue
    .line 46
    const-class v6, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v3

    .line 47
    .local v3, "newCacheVersion":I
    sget v5, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    if-eq v5, v3, :cond_0

    .line 48
    const/4 v5, 0x0

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 49
    const/4 v5, 0x0

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    .line 50
    sput v3, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    .line 52
    :cond_0
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v5, :cond_1

    .line 53
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit v6

    return-object v5

    .line 55
    :cond_1
    :try_start_1
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 56
    const-string v5, "ssl.ServerSocketFactory.provider"

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    .line 57
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 59
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 63
    :cond_2
    :try_start_2
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 64
    .local v4, "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/net/ServerSocketFactory;

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    :try_start_3
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_4

    .line 72
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 76
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    :goto_2
    if-eqz v1, :cond_4

    .line 77
    :try_start_5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v5

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 80
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    :cond_4
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v5, :cond_5

    .line 82
    new-instance v5, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v7, "No ServerSocketFactory installed"

    invoke-direct {v5, v7}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 85
    :cond_5
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .restart local v1    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_2

    .line 46
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 65
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
