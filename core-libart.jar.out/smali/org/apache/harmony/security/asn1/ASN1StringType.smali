.class public abstract Lorg/apache/harmony/security/asn1/ASN1StringType;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1StringType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1StringType$ASN1StringUTF8Type;
    }
.end annotation


# static fields
.field public static final BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$1;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$1;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 57
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$2;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$2;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 59
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$3;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$3;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 61
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$4;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$4;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 63
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$5;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$5;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 65
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$6;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$6;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 67
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$7;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tagNumber"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    .line 87
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 103
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 105
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    .line 109
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
    .line 99
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 112
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 113
    .local v0, "bytes":[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 114
    array-length v1, v0

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 115
    return-void
.end method
