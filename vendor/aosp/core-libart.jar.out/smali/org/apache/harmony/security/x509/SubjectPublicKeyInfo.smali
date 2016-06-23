.class public final Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private publicKey:Ljava/security/PublicKey;

.field private subjectPublicKey:[B

.field private unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V
    .locals 2
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B
    .param p3, "unused"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V
    .locals 0
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B
    .param p3, "unused"    # I
    .param p4, "encoding"    # [B

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 76
    iput-object p2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    .line 77
    iput p3, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    .line 78
    iput-object p4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .prologue
    .line 52
    iget v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    return v0
.end method

.method private static generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 6

    .prologue
    .line 110
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v4, :cond_1

    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v2

    .line 112
    .local v2, "encoded":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 115
    .local v3, "keySpec":Ljava/security/spec/KeySpec;
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "algName":Ljava/lang/String;
    invoke-static {v3, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    .line 122
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "algOid":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    invoke-static {v3, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    .line 132
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v4, :cond_1

    .line 133
    new-instance v4, Lorg/apache/harmony/security/x509/X509PublicKey;

    iget-object v5, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    invoke-direct {v4, v1, v2, v5}, Lorg/apache/harmony/security/x509/X509PublicKey;-><init>(Ljava/lang/String;[B[B)V

    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    .line 136
    .end local v0    # "algName":Ljava/lang/String;
    .end local v1    # "algOid":Ljava/lang/String;
    .end local v2    # "encoded":[B
    .end local v3    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    return-object v4
.end method

.method public getSubjectPublicKey()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method
