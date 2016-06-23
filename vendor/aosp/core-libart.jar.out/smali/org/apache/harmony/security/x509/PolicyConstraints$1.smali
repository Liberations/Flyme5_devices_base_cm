.class final Lorg/apache/harmony/security/x509/PolicyConstraints$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyConstraints;
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
    .line 109
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 117
    .local v2, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 118
    .local v1, "requireExplicitPolicy":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 119
    .local v0, "inhibitPolicyMapping":Ljava/math/BigInteger;
    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    .line 120
    new-instance v1, Ljava/math/BigInteger;

    .end local v1    # "requireExplicitPolicy":Ljava/math/BigInteger;
    aget-object v3, v2, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 122
    .restart local v1    # "requireExplicitPolicy":Ljava/math/BigInteger;
    :cond_0
    aget-object v3, v2, v5

    if-eqz v3, :cond_1

    .line 123
    new-instance v0, Ljava/math/BigInteger;

    .end local v0    # "inhibitPolicyMapping":Ljava/math/BigInteger;
    aget-object v3, v2, v5

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 125
    .restart local v0    # "inhibitPolicyMapping":Ljava/math/BigInteger;
    :cond_1
    new-instance v3, Lorg/apache/harmony/security/x509/PolicyConstraints;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 131
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    .line 132
    .local v0, "pc":Lorg/apache/harmony/security/x509/PolicyConstraints;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;->access$100(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 133
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;->access$200(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 134
    return-void
.end method
