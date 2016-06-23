.class public final Lorg/apache/harmony/security/asn1/DerOutputStream;
.super Lorg/apache/harmony/security/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V
    .locals 2
    .param p1, "asn1"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x20

    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;-><init>()V

    .line 36
    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 37
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 42
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 43
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 45
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 46
    return-void
.end method

.method private encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 5
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;

    .prologue
    .line 90
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v2, v3, v4

    .line 91
    .local v2, "values":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v3, v4

    .line 93
    .local v0, "compLens":[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 95
    aget-object v3, v2, v1

    iput-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 96
    aget v3, v0, v1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 97
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 6
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;

    .prologue
    .line 201
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "cv":[Ljava/lang/Object;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 204
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    new-array v0, v5, [I

    .line 206
    .local v0, "compLens":[I
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "seqLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 210
    aget-object v5, v1, v2

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 212
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 214
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v2

    .line 218
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 220
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v3, v5

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 223
    return-void
.end method

.method private push([I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "lengths"    # [I
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 102
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 103
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 105
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[I

    .line 106
    .local v0, "newLen":[[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 109
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[Ljava/lang/Object;

    .line 110
    .local v1, "newVal":[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 113
    .end local v0    # "newLen":[[I
    .end local v1    # "newVal":[[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p1, v2, v3

    .line 114
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p2, v2, v3

    .line 115
    return-void
.end method


# virtual methods
.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 3
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    .prologue
    .line 49
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 50
    .local v0, "type":Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 51
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 52
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 53
    return-void
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 3
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 58
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 59
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 60
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .prologue
    .line 63
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 65
    .local v2, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v3, v4, v5

    .line 66
    .local v3, "values":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v4, v5

    .line 68
    .local v0, "compLens":[I
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 70
    aget-object v4, v3, v1

    if-nez v4, :cond_0

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    aget-object v4, v3, v1

    iput-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 75
    aget v4, v0, v1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 77
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 83
    return-void
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 87
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 5
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    .prologue
    const/4 v4, 0x1

    .line 118
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 119
    .local v0, "i":I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 121
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 123
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 125
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 129
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 130
    return-void
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 4
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    new-array v1, v2, [Ljava/lang/Object;

    .line 134
    .local v1, "values":[Ljava/lang/Object;
    new-array v0, v2, [I

    .line 136
    .local v0, "compLens":[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 138
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 140
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 144
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 145
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v2, v0, v3

    .line 147
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 148
    return-void
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .prologue
    .line 151
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 153
    .local v3, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 154
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v3

    new-array v0, v5, [I

    .line 156
    .local v0, "compLens":[I
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "seqLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 163
    aget-object v5, v4, v1

    if-nez v5, :cond_1

    .line 164
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    .line 161
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 171
    :cond_1
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1

    .line 176
    :cond_2
    aget-object v5, v4, v1

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 178
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 180
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v1

    .line 184
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 186
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 188
    :cond_3
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 189
    return-void
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 193
    return-void
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 197
    return-void
.end method
