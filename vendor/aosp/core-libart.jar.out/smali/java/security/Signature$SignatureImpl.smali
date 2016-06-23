.class Ljava/security/Signature$SignatureImpl;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureImpl"
.end annotation


# instance fields
.field private final initLock:Ljava/lang/Object;

.field private final specifiedProvider:Ljava/security/Provider;

.field private spiImpl:Ljava/security/SignatureSpi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/Signature$SignatureImpl;->initLock:Ljava/lang/Object;

    .line 644
    iput-object p2, p0, Ljava/security/Signature$SignatureImpl;->specifiedProvider:Ljava/security/Provider;

    .line 645
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/security/SignatureSpi;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "spi"    # Ljava/security/SignatureSpi;

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    .line 649
    iput-object p3, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    .line 650
    return-void
.end method

.method private getSpi()Ljava/security/SignatureSpi;
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    move-result-object v0

    return-object v0
.end method

.method private getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 714
    iget-object v2, p0, Ljava/security/Signature$SignatureImpl;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 715
    :try_start_0
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 716
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    monitor-exit v2

    .line 727
    :goto_0
    return-object v1

    .line 719
    :cond_0
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->specifiedProvider:Ljava/security/Provider;

    iget-object v3, p0, Ljava/security/Signature$SignatureImpl;->algorithm:Ljava/lang/String;

    # invokes: Ljava/security/Signature;->tryAlgorithm(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    invoke-static {p1, v1, v3}, Ljava/security/Signature;->access$000(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    .line 720
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_1

    .line 721
    new-instance v1, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    .restart local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    iput-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    .line 725
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    iput-object v1, p0, Ljava/security/Signature$SignatureImpl;->provider:Ljava/security/Provider;

    .line 727
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v1}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/SignatureSpi;

    move-object v0, v1

    .line 707
    .local v0, "spi":Ljava/security/SignatureSpi;
    :goto_0
    new-instance v1, Ljava/security/Signature$SignatureImpl;

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/security/SignatureSpi;)V

    return-object v1

    .line 706
    .end local v0    # "spi":Ljava/security/SignatureSpi;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0, p1}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 680
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-direct {p0, p1}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 685
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 702
    return-void
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "arg0"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    .line 665
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 675
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method ensureProviderChosen()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    .line 655
    return-void
.end method
