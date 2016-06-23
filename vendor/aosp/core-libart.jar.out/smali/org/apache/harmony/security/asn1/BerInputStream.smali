.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field private final in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    .line 117
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 119
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 121
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 124
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 125
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 126
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 133
    .end local v0    # "newBuffer":[B
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    .line 131
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding indefinite length encoding is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 77
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "encoded"    # [B
    .param p2, "offset"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    .line 89
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 90
    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 95
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Wrong content length"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method private decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 8
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 611
    .local v0, "begOffset":I
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v5

    .line 613
    .local v1, "endOffset":I
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 615
    .local v3, "type":Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v5, :cond_0

    .line 616
    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_2

    .line 617
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 618
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 623
    .local v2, "seqTagOffset":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_1
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 626
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 629
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 630
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 632
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 635
    .end local v2    # "seqTagOffset":I
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v5, v1, :cond_3

    .line 636
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong encoding at ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    :cond_3
    return-void
.end method

.method private expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;
    .locals 3
    .param p1, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " identifier expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLength([B)I
    .locals 5
    .param p0, "encoding"    # [B

    .prologue
    .line 193
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 194
    .local v1, "length":I
    const/4 v2, 0x0

    .line 195
    .local v2, "numOctets":I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    .line 196
    and-int/lit8 v2, v1, 0x7f

    .line 199
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 200
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    .line 201
    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    return v3
.end method

.method private strToInt(II)I
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v3, 0x0

    .line 413
    .local v3, "result":I
    move v2, p1

    .local v2, "i":I
    add-int v1, p1, p2

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 414
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    aget-byte v4, v4, v2

    add-int/lit8 v0, v4, -0x30

    .line 415
    .local v0, "c":I
    if-ltz v0, :cond_0

    const/16 v4, 0x9

    if-le v0, v4, :cond_1

    .line 416
    :cond_0
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v5, "Time encoding has invalid char"

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "c":I
    :cond_2
    return v3
.end method


# virtual methods
.method public compactBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 788
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 789
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    new-array v0, v1, [B

    .line 791
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 793
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 795
    .end local v0    # "newBuffer":[B
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 823
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-object v1

    .line 827
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 828
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 829
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    goto :goto_0

    .line 827
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final getBuffer()[B
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .prologue
    .line 661
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 662
    .local v0, "encoded":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 663
    return-object v0
.end method

.method public final getEndOffset()I
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    return v0
.end method

.method public final getTagOffset()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 160
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 161
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2

    .line 163
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 164
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit8 v2, v3, 0x7f

    .line 166
    .local v2, "numOctets":I
    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 167
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 172
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v0

    .line 174
    .local v0, "ch":I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "ch":I
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const v4, 0xffffff

    if-le v3, v4, :cond_3

    .line 178
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    .end local v1    # "i":I
    .end local v2    # "numOctets":I
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 184
    :cond_3
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 186
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "entry"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 799
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 800
    const/16 v2, 0xa

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    .line 803
    :cond_0
    const/4 v0, 0x0

    .line 804
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 805
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 806
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    .line 820
    :goto_1
    return-void

    .line 804
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 812
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 813
    .local v1, "newPool":[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v3, v1, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aget-object v3, v1, v6

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    goto :goto_1

    .line 817
    .end local v1    # "newPool":[[Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aput-object p1, v2, v0

    .line 818
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_1
.end method

.method protected read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 735
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 739
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 748
    :goto_0
    return v0

    .line 741
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 742
    .local v0, "octet":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 743
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method public readBitString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 214
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong length. Tag at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 222
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. A number of unused bits MUST be in range 0 to 7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_4

    .line 227
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. For empty string unused bits MUST be 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 232
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 bitstring  type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_3
    const-string v0, "bitstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 236
    :cond_4
    return-void
.end method

.method public readBoolean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 272
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    .line 273
    const-string v0, "boolean"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_1

    .line 278
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong length for ASN.1 boolean at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 282
    return-void
.end method

.method public readContent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 758
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Unexpected end of encoding"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 762
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 781
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 766
    .local v0, "bytesRead":I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v2, :cond_5

    .line 769
    move v1, v0

    .line 771
    .local v1, "c":I
    :cond_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v0, v2, :cond_4

    .line 772
    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Failed to read encoded content"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 775
    add-int/2addr v0, v1

    .line 776
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v0, v2, :cond_2

    .line 779
    .end local v1    # "c":I
    :cond_5
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    goto :goto_0
.end method

.method public readEnumerated()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 243
    const-string v1, "enumerated"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    .line 247
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong length for identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 255
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 256
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 257
    .local v0, "bits":I
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_2

    .line 258
    add-int/lit16 v0, v0, 0x100

    .line 261
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    .line 262
    :cond_3
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong content at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    .end local v0    # "bits":I
    :cond_4
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 296
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_7

    .line 298
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 303
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 305
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "ASN.1 GeneralizedTime: encoded format is not implemented"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-lt v1, v8, :cond_1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 310
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_3

    .line 316
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xe

    aget-byte v0, v1, v2

    .line 317
    .local v0, "char14":B
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    .line 318
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v0    # "char14":B
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v1, :cond_4

    .line 324
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 326
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v3, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 327
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 328
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v4

    .line 329
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 330
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v6

    .line 331
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 333
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v7, :cond_5

    .line 335
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/lit8 v3, v3, -0x10

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v5

    .line 337
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v1, v8, :cond_6

    .line 338
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x64

    aput v2, v1, v5

    .line 350
    :cond_5
    :goto_0
    return-void

    .line 339
    :cond_6
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 340
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v5

    goto :goto_0

    .line 345
    :cond_7
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_8

    .line 346
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding constructed ASN.1 GeneralizedTime type is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_8
    const-string v1, "GeneralizedTime"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1
.end method

.method public readInteger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 427
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 428
    const-string v2, "integer"

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v2

    throw v2

    .line 432
    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v2, v4, :cond_1

    .line 433
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong length for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 439
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v2, v4, :cond_4

    .line 440
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    aget-byte v0, v2, v3

    .line 441
    .local v0, "firstByte":B
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    int-to-byte v1, v2

    .line 443
    .local v1, "secondByte":B
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const/16 v2, -0x80

    if-ne v1, v2, :cond_4

    .line 445
    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong content for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    .end local v0    # "firstByte":B
    .end local v1    # "secondByte":B
    :cond_4
    return-void
.end method

.method public readOID()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 473
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 474
    const-string v1, "OID"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    .line 478
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v3, :cond_1

    .line 479
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong length for ASN.1 object identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 485
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    .line 486
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong encoding at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_2
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v0, v1, :cond_4

    .line 491
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    goto :goto_0

    .line 495
    :cond_4
    return-void
.end method

.method public readOctetString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 461
    return-void

    .line 456
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 457
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 octet string type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    const-string v0, "octetstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 502
    const-string v6, "sequence"

    invoke-direct {p0, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v6

    throw v6

    .line 505
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 506
    .local v0, "begOffset":I
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v6

    .line 508
    .local v1, "endOffset":I
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 510
    .local v4, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    const/4 v2, 0x0

    .line 512
    .local v2, "i":I
    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v6, :cond_6

    .line 514
    :goto_0
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_5

    array-length v6, v4

    if-ge v2, v6, :cond_5

    .line 516
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 517
    :goto_1
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 519
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    .line 520
    :cond_1
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 522
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    array-length v6, v4

    if-ge v2, v6, :cond_f

    .line 530
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_4

    .line 531
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 536
    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 538
    .local v3, "seqTagOffset":I
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 539
    .local v5, "values":[Ljava/lang/Object;
    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_d

    array-length v6, v4

    if-ge v2, v6, :cond_d

    .line 541
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 542
    :goto_3
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 544
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_7

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_8

    .line 545
    :cond_7
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 549
    :cond_8
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_9

    .line 550
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 552
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 554
    :cond_a
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 562
    :cond_b
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_c

    .line 563
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 558
    :cond_c
    add-int/lit8 v2, v2, 0x1

    :cond_d
    array-length v6, v4

    if-ge v2, v6, :cond_e

    .line 559
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_b

    .line 560
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 566
    :cond_e
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 568
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 571
    .end local v3    # "seqTagOffset":I
    .end local v5    # "values":[Ljava/lang/Object;
    :cond_f
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v6, v1, :cond_10

    .line 572
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong encoding at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 574
    :cond_10
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 581
    const-string v0, "sequenceOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 584
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 585
    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 592
    const-string v0, "set"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 595
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding ASN.1 Set type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 603
    const-string v0, "setOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 606
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 607
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1StringType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v0, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 653
    return-void

    .line 648
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_1

    .line 649
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 string type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_1
    const-string v0, "string"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readUTCTime()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 358
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    .line 359
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    packed-switch v0, :pswitch_data_0

    .line 368
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime: wrong length, identifier at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "ASN.1 UTCTime: local time format is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 378
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 379
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime wrongly encoded at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v0, :cond_1

    .line 384
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v2

    .line 388
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v0, v0, v2

    const/16 v1, 0x31

    if-le v0, v1, :cond_3

    .line 389
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x76c

    aput v1, v0, v2

    .line 394
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 395
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v3

    .line 396
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 397
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 399
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 400
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 409
    :cond_2
    return-void

    .line 391
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x7d0

    aput v1, v0, v2

    goto :goto_0

    .line 404
    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_5

    .line 405
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 UTCTime type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_5
    const-string v0, "UTCTime"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 359
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 143
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 144
    return-void
.end method

.method public final setVerify()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    .line 720
    return-void
.end method
