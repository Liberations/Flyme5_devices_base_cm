.class final Lorg/apache/harmony/security/pkcs7/SignedData$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignedData;
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
    .line 115
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 117
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    .line 118
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    .line 119
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 132
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 133
    .local v8, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x2

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    const/4 v4, 0x3

    aget-object v4, v8, v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x4

    aget-object v5, v8, v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x5

    aget-object v6, v8, v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/pkcs7/SignedData;-><init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/harmony/security/pkcs7/SignedData$1;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    .line 123
    .local v0, "sd":Lorg/apache/harmony/security/pkcs7/SignedData;
    new-array v1, v4, [B

    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$000(Lorg/apache/harmony/security/pkcs7/SignedData;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    aput-object v1, p2, v3

    .line 124
    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$100(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v1

    aput-object v1, p2, v4

    .line 125
    const/4 v1, 0x2

    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$200(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-result-object v2

    aput-object v2, p2, v1

    .line 126
    const/4 v1, 0x3

    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$300(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 127
    const/4 v1, 0x4

    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$400(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 128
    const/4 v1, 0x5

    # getter for: Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$500(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 129
    return-void
.end method
