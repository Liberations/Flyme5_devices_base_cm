.class final Lorg/apache/harmony/security/x509/DistributionPointName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DistributionPointName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPointName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    if-nez v1, :cond_0

    .line 109
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x509/GeneralNames;)V

    .line 115
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .restart local v0    # "result":Lorg/apache/harmony/security/x509/DistributionPointName;
    goto :goto_0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 102
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 103
    .local v0, "dpn":Lorg/apache/harmony/security/x509/DistributionPointName;
    # getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 119
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 120
    .local v0, "dpn":Lorg/apache/harmony/security/x509/DistributionPointName;
    # getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    # getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$100(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$000(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    goto :goto_0
.end method
