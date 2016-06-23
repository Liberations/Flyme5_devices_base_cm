.class public final Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
.super Ljava/lang/Object;
.source "AlgorithmIdentifier.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private algorithmName:Ljava/lang/String;

.field private encoding:[B

.field private parameters:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "algorithmName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 79
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "parameters"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "parameters"    # [B
    .param p3, "encoding"    # [B

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    .line 71
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 72
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v0, :cond_0

    .line 139
    const-string v0, ", no params, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    const-string v0, "OID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    return-void

    .line 141
    :cond_0
    const-string v0, ", params unparsed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ai"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 122
    instance-of v2, p1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 125
    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 126
    .local v0, "algid":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    iget-object v3, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    return-object v0
.end method

.method public getParameters()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
