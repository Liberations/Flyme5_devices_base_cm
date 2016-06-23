.class final Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PrivateKeyUsagePeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;->setOptional(I)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;->setOptional(I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 101
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 102
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Date;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[BLorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 106
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .line 107
    .local v0, "pkup":Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->access$100(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 108
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->access$200(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 109
    return-void
.end method
