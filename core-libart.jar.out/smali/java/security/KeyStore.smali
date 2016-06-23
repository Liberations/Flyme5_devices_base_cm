.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String; = "jks"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "keystore.type"

.field private static final SERVICE:Ljava/lang/String; = "KeyStore"


# instance fields
.field private final implSpi:Ljava/security/KeyStoreSpi;

.field private isInit:Z

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 88
    iput-object p1, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Ljava/security/KeyStore;)Z
    .locals 1
    .param p0, "x0"    # Ljava/security/KeyStore;

    .prologue
    .line 49
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return v0
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    const-string v1, "keystore.type"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "dt":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "jks"

    .end local v0    # "dt":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "type == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 117
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v3, Ljava/security/KeyStore;

    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyStoreSpi;

    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 118
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 149
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 150
    .local v1, "impProvider":Ljava/security/Provider;
    if-nez v1, :cond_2

    .line 151
    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-direct {v2, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_2
    :try_start_0
    invoke-static {p0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provider == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    if-nez p0, :cond_1

    .line 186
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "type == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_1
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "spi":Ljava/lang/Object;
    new-instance v2, Ljava/security/KeyStore;

    check-cast v1, Ljava/security/KeyStoreSpi;

    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static throwNotInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "KeyStore was not initialized"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 423
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 426
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 439
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 442
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 407
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 410
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-nez p1, :cond_0

    .line 698
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    if-nez p2, :cond_1

    .line 701
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_2

    .line 705
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 707
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 284
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 287
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 507
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 509
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 267
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 270
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 304
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_1

    .line 643
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 645
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 253
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 488
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 489
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 491
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 470
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 473
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 592
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 615
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 390
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 393
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 394
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 669
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 672
    :cond_0
    if-nez p1, :cond_1

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    if-nez p2, :cond_2

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 679
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 330
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 335
    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_2

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate chain is not defined for Private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 339
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 367
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 370
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 371
    return-void
.end method

.method public final size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 453
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 454
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 456
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 533
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 538
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 539
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 562
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    .line 563
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 565
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 566
    return-void
.end method
