.class public final Lorg/apache/harmony/security/asn1/ASN1Integer;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Integer;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Integer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 48
    return-void
.end method

.method public static fromIntValue(I)Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 120
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Integer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Integer;

    return-object v0
.end method

.method public static toBigIntegerValue(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "decoded"    # Ljava/lang/Object;

    .prologue
    .line 110
    new-instance v0, Ljava/math/BigInteger;

    check-cast p0, [B

    .end local p0    # "decoded":Ljava/lang/Object;
    check-cast p0, [B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .locals 1
    .param p0, "decoded"    # Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v0, Ljava/math/BigInteger;

    check-cast p0, [B

    .end local p0    # "decoded":Ljava/lang/Object;
    check-cast p0, [B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readInteger()V

    .line 65
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeInteger()V

    .line 85
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    new-array v0, v1, [B

    .line 78
    .local v0, "bytesEncoded":[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 88
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 89
    return-void
.end method
