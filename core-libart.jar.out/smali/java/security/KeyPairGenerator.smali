.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$1;,
        Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SERVICE:Ljava/lang/String; = "KeyPairGenerator"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyPairGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0
    .param p0, "x0"    # Ljava/security/KeyPairGenerator;
    .param p1, "x1"    # Ljava/security/Provider;

    .prologue
    .line 31
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 83
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "algorithm == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_0
    sget-object v4, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v4, p0, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v2

    .line 86
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 87
    .local v3, "spi":Ljava/lang/Object;
    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 88
    .local v0, "provider":Ljava/security/Provider;
    instance-of v4, v3, Ljava/security/KeyPairGenerator;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 89
    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 90
    .local v1, "result":Ljava/security/KeyPairGenerator;
    iput-object p0, v1, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 91
    iput-object v0, v1, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    .line 94
    .end local v1    # "result":Ljava/security/KeyPairGenerator;
    .end local v3    # "spi":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v3    # "spi":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v3, Ljava/security/KeyPairGeneratorSpi;

    .end local v3    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v3, v0, p0, v5}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 118
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 119
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 120
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_2
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provider == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    if-nez p0, :cond_1

    .line 147
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "algorithm == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_1
    sget-object v2, Ljava/security/KeyPairGenerator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "spi":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/KeyPairGenerator;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 151
    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 152
    .local v0, "result":Ljava/security/KeyPairGenerator;
    iput-object p0, v0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 153
    iput-object p1, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    .line 156
    .end local v0    # "result":Ljava/security/KeyPairGenerator;
    .end local v1    # "spi":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v1    # "spi":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    check-cast v1, Ljava/security/KeyPairGeneratorSpi;

    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p0, v3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    goto :goto_0
.end method


# virtual methods
.method public final genKeyPair()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public initialize(I)V
    .locals 1
    .param p1, "keysize"    # I

    .prologue
    .line 177
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 178
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 231
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 192
    sget-object v0, Ljava/security/KeyPairGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 193
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method
