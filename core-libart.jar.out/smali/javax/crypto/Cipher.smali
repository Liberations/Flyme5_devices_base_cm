.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$NeedToSet;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final initLock:Ljava/lang/Object;

.field private mode:I

.field private provider:Ljava/security/Provider;

.field private final specifiedProvider:Ljava/security/Provider;

.field private final specifiedSpi:Ljavax/crypto/CipherSpi;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private final transformParts:[Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Cipher"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "transformParts"    # [Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    .line 190
    iput-object p1, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    .line 192
    iput-object p3, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    .line 194
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iput-object p2, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    .line 184
    iput-object p1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    .line 185
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method private static checkInputOffsetAndCount(III)V
    .locals 3
    .param p0, "inputArrayLength"    # I
    .param p1, "inputOffset"    # I
    .param p2, "inputLen"    # I

    .prologue
    .line 1035
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 1038
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; inputOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; inputLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_1
    return-void
.end method

.method private checkMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 581
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 583
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 315
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 319
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "pieces":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_1

    .line 321
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 324
    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    .line 325
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 326
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "piece":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    aput-object v1, v3, v0

    .line 325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "piece":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_4

    .line 333
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 335
    :cond_4
    aget-object v4, v3, v5

    if-nez v4, :cond_5

    aget-object v4, v3, v6

    if-eqz v4, :cond_7

    :cond_5
    aget-object v4, v3, v5

    if-eqz v4, :cond_6

    aget-object v4, v3, v6

    if-nez v4, :cond_7

    .line 336
    :cond_6
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 338
    :cond_7
    return-object v3
.end method

.method private static getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 295
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    .line 299
    :cond_1
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "transformParts":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Ljavax/crypto/Cipher;->tryCombinations(Ljava/security/Key;Ljava/security/Provider;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    if-nez v1, :cond_3

    .line 301
    if-nez p1, :cond_2

    .line 302
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_2
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not provide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_3
    new-instance v1, Ljavax/crypto/Cipher;

    invoke-direct {v1, p0, v0, p1}, Ljavax/crypto/Cipher;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/security/Provider;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 250
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_1

    .line 251
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_1
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1563
    if-nez p0, :cond_0

    .line 1564
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1568
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1587
    if-nez p0, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1592
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpi()Ljavax/crypto/CipherSpi;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/crypto/Cipher;->getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;

    move-result-object v0

    return-object v0
.end method

.method private getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 345
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    .line 363
    :goto_0
    return-object v1

    .line 349
    :cond_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 351
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    monitor-exit v2

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 354
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    iget-object v3, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    invoke-static {p1, v1, v3}, Ljavax/crypto/Cipher;->tryCombinations(Ljava/security/Key;Ljava/security/Provider;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 356
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_2

    .line 357
    new-instance v1, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_2
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/CipherSpi;

    iput-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    .line 361
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    iput-object v1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 363
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 481
    if-nez p2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v2

    .line 484
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 488
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static tryCombinations(Ljava/security/Key;Ljava/security/Provider;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 6
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "transformParts"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    aget-object v1, p2, v4

    if-eqz v1, :cond_0

    aget-object v1, p2, v5

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {p0, p1, v1, p2, v2}, Ljavax/crypto/Cipher;->tryTransform(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 412
    :goto_0
    return-object v1

    .line 396
    :cond_0
    aget-object v1, p2, v4

    if-eqz v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {p0, p1, v1, p2, v2}, Ljavax/crypto/Cipher;->tryTransform(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 400
    goto :goto_0

    .line 404
    :cond_1
    aget-object v1, p2, v5

    if-eqz v1, :cond_2

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {p0, p1, v1, p2, v2}, Ljavax/crypto/Cipher;->tryTransform(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 408
    goto :goto_0

    .line 412
    :cond_2
    aget-object v1, p2, v3

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {p0, p1, v1, p2, v2}, Ljavax/crypto/Cipher;->tryTransform(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    goto :goto_0
.end method

.method private static tryTransform(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 6
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "transform"    # Ljava/lang/String;
    .param p3, "transformParts"    # [Ljava/lang/String;
    .param p4, "type"    # Ljavax/crypto/Cipher$NeedToSet;

    .prologue
    const/4 v4, 0x0

    .line 417
    if-eqz p1, :cond_1

    .line 418
    const-string v5, "Cipher"

    invoke-virtual {p1, v5, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 419
    .local v2, "service":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    move-object v1, v4

    .line 434
    .end local v2    # "service":Ljava/security/Provider$Service;
    :goto_0
    return-object v1

    .line 422
    .restart local v2    # "service":Ljava/security/Provider$Service;
    :cond_0
    invoke-static {p0, p3, p4, v2}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljava/security/Key;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    goto :goto_0

    .line 424
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_1
    sget-object v5, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v5, p2}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 425
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v3, :cond_2

    move-object v1, v4

    .line 426
    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 429
    .restart local v2    # "service":Ljava/security/Provider$Service;
    invoke-static {p0, p3, p4, v2}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljava/security/Key;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 430
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v1, :cond_3

    goto :goto_0

    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v2    # "service":Ljava/security/Provider$Service;
    :cond_4
    move-object v1, v4

    .line 434
    goto :goto_0
.end method

.method private static tryTransformWithProvider(Ljava/security/Key;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 5
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "transformParts"    # [Ljava/lang/String;
    .param p2, "type"    # Ljavax/crypto/Cipher$NeedToSet;
    .param p3, "service"    # Ljava/security/Provider$Service;

    .prologue
    const/4 v2, 0x0

    .line 440
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p3, p0}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    const-string v3, "SupportedModes"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {p3, v3, v4}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SupportedPaddings"

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {p3, v3, v4}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v2

    .line 450
    goto :goto_0

    .line 453
    :cond_3
    sget-object v3, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 454
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v3, :cond_5

    :cond_4
    move-object v0, v2

    .line 455
    goto :goto_0

    .line 457
    :cond_5
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    instance-of v3, v3, Ljavax/crypto/CipherSpi;

    if-nez v3, :cond_6

    move-object v0, v2

    .line 458
    goto :goto_0

    .line 460
    :cond_6
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/CipherSpi;

    .line 461
    .local v1, "spi":Ljavax/crypto/CipherSpi;
    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v3, :cond_7

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v3, :cond_8

    :cond_7
    const/4 v3, 0x1

    aget-object v3, p1, v3

    if-eqz v3, :cond_8

    .line 463
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 465
    :cond_8
    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v3, :cond_9

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v3, :cond_0

    :cond_9
    const/4 v3, 0x2

    aget-object v3, p1, v3

    if-eqz v3, :cond_0

    .line 467
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 470
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v1    # "spi":Ljavax/crypto/CipherSpi;
    :catch_0
    move-exception v3

    :goto_1
    move-object v0, v2

    .line 473
    goto :goto_0

    .line 471
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1487
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1490
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1493
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1308
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1309
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1311
    :cond_0
    if-gez p2, :cond_1

    .line 1312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outputOffset < 0. outputOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1411
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1449
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1452
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    .line 1453
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1275
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1337
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1338
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1340
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1371
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1372
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1374
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    .line 1375
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .prologue
    .line 534
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not yet been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    .line 499
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 615
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 621
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 622
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 790
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 793
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 794
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 842
    invoke-direct {p0, p2}, Ljavax/crypto/Cipher;->getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 843
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 844
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 661
    invoke-direct {p0, p2}, Ljavax/crypto/Cipher;->getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 662
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 663
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 698
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 701
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 702
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 751
    invoke-direct {p0, p2}, Ljavax/crypto/Cipher;->getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 752
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 753
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 880
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 883
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 884
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 923
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 924
    instance-of v6, p2, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 925
    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 926
    .local v0, "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 927
    .local v1, "critical":Z
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 928
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 929
    .local v5, "oid":Ljava/lang/String;
    const-string v6, "2.5.29.15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 930
    const/4 v1, 0x1

    .line 934
    .end local v5    # "oid":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    move-object v6, p2

    .line 935
    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v4

    .line 951
    .local v4, "keyUsage":[Z
    if-eqz v4, :cond_3

    .line 952
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    aget-boolean v6, v4, v7

    if-nez v6, :cond_2

    .line 953
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "The public key in the certificate cannot be used for ENCRYPT_MODE"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 955
    :cond_2
    if-ne p1, v7, :cond_3

    const/4 v6, 0x2

    aget-boolean v6, v4, v6

    if-nez v6, :cond_3

    .line 956
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "The public key in the certificate cannot be used for WRAP_MODE"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 966
    .end local v0    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "critical":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyUsage":[Z
    :cond_3
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 967
    .local v3, "key":Ljava/security/Key;
    invoke-direct {p0, v3}, Ljavax/crypto/Cipher;->getSpi(Ljava/security/Key;)Ljavax/crypto/CipherSpi;

    move-result-object v6

    invoke-virtual {v6, p1, v3, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 968
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 969
    return-void
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1542
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1543
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1545
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1155
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1158
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1109
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1112
    :cond_0
    if-nez p1, :cond_1

    .line 1113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_1
    if-nez p4, :cond_2

    .line 1116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_2
    if-gez p5, :cond_3

    .line 1119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outputOffset < 0. outputOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_3
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    .line 1122
    array-length v0, p1

    if-nez v0, :cond_4

    .line 1123
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    goto :goto_0
.end method

.method public final update([B)[B
    .locals 3
    .param p1, "input"    # [B

    .prologue
    .line 986
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 989
    :cond_0
    if-nez p1, :cond_1

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 993
    const/4 v0, 0x0

    .line 995
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final update([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 1019
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1020
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1022
    :cond_0
    if-nez p1, :cond_1

    .line 1023
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    .line 1026
    array-length v0, p1

    if-nez v0, :cond_2

    .line 1027
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1248
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1251
    :cond_0
    if-nez p1, :cond_1

    .line 1252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    .line 1255
    return-void
.end method

.method public final updateAAD([B)V
    .locals 3
    .param p1, "input"    # [B

    .prologue
    .line 1183
    if-nez p1, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1189
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 1193
    :goto_0
    return-void

    .line 1192
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    goto :goto_0
.end method

.method public final updateAAD([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 1218
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1219
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1221
    :cond_0
    if-nez p1, :cond_1

    .line 1222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1224
    :cond_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    .line 1225
    array-length v0, p1

    if-nez v0, :cond_2

    .line 1229
    :goto_0
    return-void

    .line 1228
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    goto :goto_0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1512
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1513
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1515
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
