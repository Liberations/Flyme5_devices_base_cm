.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static cacheVersion:I

.field private static cachedSecureRandomService:Ljava/security/Provider$Service;

.field private static needRefresh:Z

.field private static final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x1

    .line 39
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x258

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    .line 58
    sput v8, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    .line 68
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    .line 71
    const/4 v5, 0x0

    .line 72
    .local v5, "providerClassName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 73
    .local v1, "i":I
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "security.provider."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 78
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 79
    .local v3, "p":Ljava/security/Provider;
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 85
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 82
    .end local v1    # "i":I
    .end local v3    # "p":Ljava/security/Provider;
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "i":I
    :catch_0
    move-exception v6

    move v1, v2

    .line 85
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 83
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_1
    move-exception v6

    move v1, v2

    .line 85
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 84
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_2
    move-exception v6

    move v1, v2

    .line 85
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 87
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    sget-object v6, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v6}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/security/Provider$Service;

    .prologue
    .line 152
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .restart local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public static declared-synchronized getCacheVersion()I
    .locals 5

    .prologue
    .line 204
    const-class v3, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v2, :cond_1

    .line 205
    sget v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    .line 206
    sget-object v4, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 208
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    .line 210
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 211
    .local v1, "p":Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 208
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 213
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 215
    :cond_1
    sget v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return v2
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getProviders()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const-class v0, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSecureRandomService()Ljava/security/Provider$Service;
    .locals 2

    .prologue
    .line 185
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    .line 186
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initServiceInfo(Ljava/security/Provider;)V
    .locals 10
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 134
    const-class v7, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 135
    .local v4, "service":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "type":Ljava/lang/String;
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    if-nez v6, :cond_1

    const-string v6, "SecureRandom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    sput-object v4, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    .line 139
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/apache/harmony/security/fortress/Services;->appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V

    .line 141
    sget-object v6, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v6, v4}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "alias":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3, v4}, Lorg/apache/harmony/security/fortress/Services;->appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 146
    :cond_2
    monitor-exit v7

    return-void
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 4
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    .line 111
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, "size":I
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    .line 113
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 115
    :cond_1
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v2

    return p1

    .line 111
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isEmpty()Z
    .locals 2

    .prologue
    .line 164
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeProvider(I)V
    .locals 4
    .param p0, "providerNumber"    # I

    .prologue
    .line 125
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 126
    .local v0, "p":Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v2

    return-void

    .line 125
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setNeedRefresh()V
    .locals 2

    .prologue
    .line 196
    const-class v0, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v0

    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
