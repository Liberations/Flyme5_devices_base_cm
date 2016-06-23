.class public final Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/Engine$1;,
        Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;,
        Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    }
.end annotation


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private volatile serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 182
    .local v0, "service":Ljava/security/Provider$Service;
    if-nez v0, :cond_1

    .line 183
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    .line 185
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Null algorithm name"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    .line 141
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    invoke-virtual {v1, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V

    return-object v2
.end method

.method public getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 4
    .param p1, "service"    # Ljava/security/Provider$Service;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    invoke-virtual {p1, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V

    return-object v0
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
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
    .line 158
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v3

    .line 159
    .local v3, "newCacheVersion":I
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .line 160
    .local v1, "cacheEntry":Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "algoUC":Ljava/lang/String;
    if-eqz v1, :cond_0

    # getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 164
    # getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->services:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$300(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/util/ArrayList;

    move-result-object v4

    .line 169
    :goto_0
    return-object v4

    .line 166
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/security/fortress/Services;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 168
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    new-instance v5, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v3, v4, v6}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/harmony/security/fortress/Engine$1;)V

    iput-object v5, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    goto :goto_0
.end method
