.class final Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
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
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    const/4 v5, 0x2

    .line 120
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 122
    .local v3, "values":[Ljava/lang/Object;
    const/4 v1, -0x1

    .line 123
    .local v1, "failInfoValue":I
    aget-object v4, v3, v5

    if-eqz v4, :cond_0

    .line 124
    aget-object v4, v3, v5

    check-cast v4, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v4}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v0

    .line 125
    .local v0, "failInfoBoolArray":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 126
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_1

    .line 127
    move v1, v2

    .line 132
    .end local v0    # "failInfoBoolArray":[Z
    .end local v2    # "i":I
    :cond_0
    new-instance v5, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v6

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Ljava/util/List;

    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V

    return-object v5

    .line 125
    .restart local v0    # "failInfoBoolArray":[Z
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 104
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    .line 105
    .local v1, "psi":Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    const/4 v2, 0x0

    # getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getStatus()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 107
    # getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v6

    .line 108
    # getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getMaxValue()I

    move-result v2

    new-array v0, v2, [Z

    .line 112
    .local v0, "failInfoBoolArray":[Z
    # getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getValue()I

    move-result v2

    aput-boolean v6, v0, v2

    .line 113
    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v2, v0}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v7

    .line 117
    .end local v0    # "failInfoBoolArray":[Z
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p2, v7

    goto :goto_0
.end method
