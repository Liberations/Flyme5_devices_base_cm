.class public final Lorg/apache/harmony/security/x501/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private canonicalString:Ljava/lang/String;

.field private volatile encoded:[B

.field private rdn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private rfc1779String:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 238
    new-instance v0, Lorg/apache/harmony/security/x501/Name$1;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/Name$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lorg/apache/harmony/security/x509/DNParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/DNParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/apache/harmony/security/x501/Name$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 69
    .local v0, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->getEndOffset()I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Wrong content length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 75
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x501/Name;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-object v0
.end method

.method private getName0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v5, "name":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 173
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 175
    .local v0, "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    const-string v7, "CANONICAL"

    if-ne v7, p1, :cond_0

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    .end local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .local v1, "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    new-instance v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;

    invoke-direct {v7}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;-><init>()V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 181
    .end local v1    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .restart local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 182
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 184
    .local v2, "attributeTypeAndValue":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2, p1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->appendName(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    const-string v7, "RFC1779"

    if-ne v7, p1, :cond_2

    .line 188
    const-string v7, " + "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    :cond_2
    const/16 v7, 0x2b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    .end local v2    # "attributeTypeAndValue":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    :cond_3
    if-eqz v3, :cond_4

    .line 196
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    const-string v7, "RFC1779"

    if-ne p1, v7, :cond_4

    .line 198
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 203
    .end local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "sName":Ljava/lang/String;
    const-string v7, "CANONICAL"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 205
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 207
    :cond_6
    return-object v6
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v0

    .line 120
    :cond_1
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_3
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 132
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_5
    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 141
    const-string v0, "RFC1779"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 143
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_7
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 148
    const-string v0, "RFC2253"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 150
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_9
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 155
    const-string v0, "CANONICAL"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 157
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v0
.end method
