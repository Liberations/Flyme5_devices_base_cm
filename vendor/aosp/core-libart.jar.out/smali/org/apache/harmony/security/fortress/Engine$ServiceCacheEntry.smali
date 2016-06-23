.class final Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCacheEntry"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cacheVersion:I

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "cacheVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    .line 104
    iput p2, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I

    .line 105
    iput-object p3, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->services:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/harmony/security/fortress/Engine$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/ArrayList;
    .param p4, "x3"    # Lorg/apache/harmony/security/fortress/Engine$1;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->cacheVersion:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->services:Ljava/util/ArrayList;

    return-object v0
.end method
