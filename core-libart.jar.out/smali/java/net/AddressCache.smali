.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheEntry;,
        Ljava/net/AddressCache$AddressCacheKey;
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x10

.field private static final TTL_NANOS:J = 0x77359400L


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/net/AddressCache$AddressCacheKey;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    .line 71
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 95
    return-void
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 103
    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v2, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v2, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    .line 105
    .local v0, "entry":Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 106
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    .line 110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "addresses"    # [Ljava/net/InetAddress;

    .prologue
    .line 118
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method
