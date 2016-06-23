.class public final Lorg/apache/harmony/security/asn1/ASN1Implicit;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Implicit.java"


# static fields
.field private static final TAGGING_CONSTRUCTED:I = 0x1

.field private static final TAGGING_PRIMITIVE:I = 0x0

.field private static final TAGGING_STRING:I = 0x2


# instance fields
.field private final taggingType:I

.field private final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 64
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 66
    instance-of v0, p2, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Implicit tagging can not be used for ASN.1 ANY or CHOICE type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 76
    iget v0, p2, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {p2, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget v0, p2, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {p2, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_0
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 3
    .param p1, "identifier"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    packed-switch v2, :pswitch_data_0

    .line 98
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v2, p1, :cond_0

    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-ne v2, p1, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 94
    :pswitch_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v2, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 96
    :pswitch_1
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-eq v2, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->checkTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 implicitly tagged type expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Expected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 116
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 118
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_1
    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 132
    return-void

    .line 129
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 136
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 140
    return-void
.end method
