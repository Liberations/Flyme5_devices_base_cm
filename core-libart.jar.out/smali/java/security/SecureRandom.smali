.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "SecureRandom"

.field private static volatile internalSecureRandom:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final secureRandomSpi:Ljava/security/SecureRandomSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SecureRandom"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 89
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getSecureRandomService()Ljava/security/Provider$Service;

    move-result-object v1

    .line 90
    .local v1, "service":Ljava/security/Provider$Service;
    if-nez v1, :cond_0

    .line 91
    iput-object v4, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 92
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 93
    const-string v2, "SHA1PRNG"

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 98
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .locals 1
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 126
    const-string v0, "unknown"

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 134
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 135
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 137
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "seed"    # [B

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 113
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 157
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 184
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 185
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 186
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_2
    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    if-nez p0, :cond_1

    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_1
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/SecureRandom;

    check-cast v0, Ljava/security/SecureRandomSpi;

    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSeed(I)[B
    .locals 2
    .param p0, "numBytes"    # I

    .prologue
    .line 313
    sget-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    .line 314
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0    # "result":Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0    # "result":Ljava/security/SecureRandom;
    sput-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    .line 318
    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 330
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "numBits"    # I

    .prologue
    .line 285
    if-gez p1, :cond_1

    .line 286
    const/4 p1, 0x0

    .line 292
    :cond_0
    :goto_0
    add-int/lit8 v4, p1, 0x7

    div-int/lit8 v0, v4, 0x8

    .line 293
    .local v0, "bytes":I
    new-array v2, v0, [B

    .line 294
    .local v2, "next":[B
    const/4 v3, 0x0

    .line 296
    .local v3, "ret":I
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 298
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x8

    or-int v3, v4, v5

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "bytes":I
    .end local v1    # "i":I
    .end local v2    # "next":[B
    .end local v3    # "ret":I
    :cond_1
    const/16 v4, 0x20

    if-le p1, v4, :cond_0

    .line 289
    const/16 p1, 0x20

    goto :goto_0

    .line 300
    .restart local v0    # "bytes":I
    .restart local v1    # "i":I
    .restart local v2    # "next":[B
    .restart local v3    # "ret":I
    :cond_2
    mul-int/lit8 v4, v0, 0x8

    sub-int/2addr v4, p1

    ushr-int/2addr v3, v4

    .line 301
    return v3
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 254
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 258
    .local v0, "byteSeed":[B
    const/4 v1, 0x0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p1, p2, v2}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 259
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_0
.end method

.method public declared-synchronized setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
