.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# instance fields
.field private certificateChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:J

.field private issuerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuerPrincipals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    .line 59
    return-void
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 6
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "issuer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_0
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 144
    :cond_1
    const-string v3, "CANONICAL"

    invoke-virtual {p1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 152
    :cond_3
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 153
    .local v2, "size":I
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 154
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 3
    .param p1, "iss_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    const-string p1, ""

    .line 181
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    return-void
.end method

.method public addIssuerName([B)V
    .locals 3
    .param p1, "iss_name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "iss_name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 205
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 455
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLSelector;

    .line 456
    .local v1, "result":Ljava/security/cert/X509CRLSelector;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-object v1

    .line 459
    .end local v1    # "result":Ljava/security/cert/X509CRLSelector;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    .restart local v1    # "result":Ljava/security/cert/X509CRLSelector;
    goto :goto_0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 344
    iget-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getIssuerNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getIssuers()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 278
    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    .line 280
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 283
    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 285
    .local v1, "size":I
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 286
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 14
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .prologue
    const/4 v9, 0x0

    .line 403
    instance-of v8, p1, Ljava/security/cert/X509CRL;

    if-nez v8, :cond_0

    move v8, v9

    .line 443
    :goto_0
    return v8

    :cond_0
    move-object v4, p1

    .line 406
    check-cast v4, Ljava/security/cert/X509CRL;

    .line 407
    .local v4, "crlist":Ljava/security/cert/X509CRL;
    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    const-string v11, "CANONICAL"

    invoke-virtual {v10, v11}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    .line 412
    goto :goto_0

    .line 414
    :cond_1
    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-nez v8, :cond_2

    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v8, :cond_4

    .line 418
    :cond_2
    :try_start_0
    const-string v8, "2.5.29.20"

    invoke-virtual {v4, v8}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 419
    .local v2, "bytes":[B
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v2, v0

    .line 420
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-direct {v3, v8}, Ljava/math/BigInteger;-><init>([B)V

    .line 422
    .local v3, "crlNumber":Ljava/math/BigInteger;
    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v8, :cond_3

    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_3

    move v8, v9

    .line 423
    goto :goto_0

    .line 425
    :cond_3
    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v8, :cond_4

    iget-object v8, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_4

    move v8, v9

    .line 426
    goto :goto_0

    .line 428
    .end local v2    # "bytes":[B
    .end local v3    # "crlNumber":Ljava/math/BigInteger;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move v8, v9

    .line 429
    goto :goto_0

    .line 432
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    iget-wide v10, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_8

    .line 433
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    .line 434
    .local v7, "thisUp":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    .line 435
    .local v6, "nextUp":Ljava/util/Date;
    if-eqz v7, :cond_5

    if-nez v6, :cond_6

    :cond_5
    move v8, v9

    .line 436
    goto :goto_0

    .line 438
    :cond_6
    iget-wide v10, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-ltz v8, :cond_7

    iget-wide v10, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_8

    :cond_7
    move v8, v9

    .line 440
    goto/16 :goto_0

    .line 443
    .end local v6    # "nextUp":Ljava/util/Date;
    .end local v7    # "thisUp":Ljava/util/Date;
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 265
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    .line 266
    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "dateAndTime"    # Ljava/util/Date;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    goto :goto_0
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 105
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 106
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 126
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 113
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "name":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "name":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .restart local v1    # "name":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, [B

    .end local v1    # "name":Ljava/lang/Object;
    check-cast v1, [B

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .restart local v1    # "name":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "name neither a String nor a byte[]"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIssuers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "issuers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v2, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 73
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 82
    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    .line 80
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    const-string v3, "CANONICAL"

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxCRL"    # Ljava/math/BigInteger;

    .prologue
    .line 236
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    .line 237
    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "minCRL"    # Ljava/math/BigInteger;

    .prologue
    .line 222
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v3, "X509CRLSelector:\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 369
    const-string v3, "\n  IssuerNames:\n  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 371
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    const-string v3, "\n  ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_2

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  minCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  maxCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    iget-wide v4, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  dateAndTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  certificateChecking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_5
    const-string v3, "\n]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
