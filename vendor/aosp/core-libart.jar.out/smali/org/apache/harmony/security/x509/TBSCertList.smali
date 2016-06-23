.class public final Lorg/apache/harmony/security/x509/TBSCertList;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final nextUpdate:Ljava/util/Date;

.field private final revokedCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final thisUpdate:Ljava/util/Date;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 323
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$1;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p4, "thisUpdate"    # Ljava/util/Date;
    .param p5, "nextUpdate"    # Ljava/util/Date;
    .param p7, "crlExtensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p8, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/harmony/security/x509/AlgorithmIdentifier;",
            "Lorg/apache/harmony/security/x501/Name;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;",
            "Lorg/apache/harmony/security/x509/Extensions;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p6, "revokedCertificates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 199
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 200
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 201
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 202
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 203
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 204
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 205
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 206
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "x2"    # Lorg/apache/harmony/security/x501/Name;
    .param p4, "x3"    # Ljava/util/Date;
    .param p5, "x4"    # Ljava/util/Date;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p8, "x7"    # [B
    .param p9, "x8"    # Lorg/apache/harmony/security/x509/TBSCertList$1;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertList;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x5d

    const/16 v7, 0xa

    .line 296
    const-string v4, "X.509 CRL v"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v4, "\nSignature Algorithm: ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    .line 299
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    const-string v4, "\nIssuer: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v6, "RFC2253"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v4, "\n\nThis Update: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    const-string v4, "\nNext Update: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 304
    const-string v4, "\nRevoked Certificates: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v1, 0x1

    .line 306
    .local v1, "number":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 307
    .local v3, "revokedCertificate":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    const-string v4, "\n  ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "number":I
    .local v2, "number":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 310
    .end local v2    # "number":I
    .restart local v1    # "number":I
    goto :goto_0

    .line 311
    .end local v3    # "revokedCertificate":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    :cond_0
    const-string v4, "]\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "number":I
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v4, :cond_2

    .line 314
    const-string v4, "\nCRL Extensions: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v5, "  "

    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 316
    const-string v4, "]\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x3e8

    .line 268
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList;

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 271
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    .line 272
    .local v0, "that":Lorg/apache/harmony/security/x509/TBSCertList;
    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    iget v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v2

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    return v0
.end method
