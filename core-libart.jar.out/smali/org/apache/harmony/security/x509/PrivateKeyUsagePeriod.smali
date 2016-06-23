.class public final Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
.super Ljava/lang/Object;
.source "PrivateKeyUsagePeriod.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final notAfterDate:Ljava/util/Date;

.field private final notBeforeDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[B)V

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;[B)V
    .locals 0
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;
    .param p3, "encoding"    # [B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    .line 61
    iput-object p2, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    .line 62
    iput-object p3, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;[BLorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Date;
    .param p2, "x1"    # Ljava/util/Date;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    return-object v0
.end method
