.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public final escapedString:Ljava/lang/String;

.field private hasConsecutiveSpaces:Z

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public final rawString:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;

.field private final tag:I

.field public wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 2
    .param p1, "parsedString"    # Ljava/lang/String;
    .param p2, "hasQorE"    # Z
    .param p3, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 61
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 62
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 66
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq p3, v1, :cond_0

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-ne p3, v1, :cond_1

    .line 69
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .line 75
    .local v0, "tag":I
    :goto_0
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 76
    return-void

    .line 70
    .end local v0    # "tag":I
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .restart local v0    # "tag":I
    goto :goto_0

    .line 73
    .end local v0    # "tag":I
    :cond_2
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    .restart local v0    # "tag":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 81
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 85
    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 87
    .local v2, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 89
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v2    # "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 99
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 100
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B
    .param p3, "tag"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 107
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 108
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x27

    if-lt v0, v2, :cond_0

    const/16 v2, 0x29

    if-le v0, v2, :cond_4

    :cond_0
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3a

    if-le v0, v2, :cond_4

    :cond_1
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    .line 132
    :cond_3
    const/4 v2, 0x0

    .line 135
    .end local v0    # "ch":C
    :goto_1
    return v2

    .line 123
    .restart local v0    # "ch":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "ch":C
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x5c

    const/16 v9, 0x20

    const/4 v7, 0x1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 211
    .local v4, "length":I
    if-nez v4, :cond_0

    .line 276
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 214
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v4, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 219
    .local v2, "escapeSpaces":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :goto_2
    if-eqz v2, :cond_1

    if-eq v1, v9, :cond_1

    .line 272
    const/4 v2, 0x0

    .line 219
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    :sswitch_0
    add-int/lit8 v8, v4, -0x1

    if-ge v3, v8, :cond_6

    .line 234
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    move v5, v7

    .line 235
    .local v5, "nextIsSpace":Z
    :goto_3
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    if-nez v3, :cond_5

    :cond_2
    move v2, v7

    .line 236
    :goto_4
    iget-boolean v8, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    or-int/2addr v8, v5

    iput-boolean v8, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    .line 241
    .end local v5    # "nextIsSpace":Z
    :goto_5
    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move v5, v6

    .line 234
    goto :goto_3

    .restart local v5    # "nextIsSpace":Z
    :cond_5
    move v2, v6

    .line 235
    goto :goto_4

    .line 238
    .end local v5    # "nextIsSpace":Z
    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    .line 250
    :sswitch_1
    iput-boolean v7, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 251
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 262
    :sswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 276
    .end local v1    # "ch":C
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_2

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 188
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "c":C
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 143
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 144
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_0

    .line 146
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v3, v4, :cond_1

    .line 147
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 153
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 160
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 161
    .local v1, "c":I
    if-ge v1, v5, :cond_3

    .line 162
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 168
    if-ge v1, v5, :cond_4

    .line 169
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v3, v4, :cond_2

    .line 149
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_0

    .line 151
    :cond_2
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_0

    .line 164
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "c":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :cond_4
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 174
    .end local v1    # "c":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 176
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getRFC2253String()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x20

    .line 334
    iget-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    if-nez v6, :cond_0

    .line 335
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 372
    :goto_0
    return-object v6

    .line 338
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 340
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x2

    .line 341
    .local v3, "lastIndex":I
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_2

    .line 342
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_1

    .line 343
    add-int/lit8 v3, v2, -0x1

    .line 341
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 347
    :cond_2
    const/4 v0, 0x1

    .line 348
    .local v0, "beginning":Z
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 349
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 350
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 351
    .local v1, "ch":C
    if-eq v1, v9, :cond_3

    .line 352
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    const/4 v0, 0x0

    .line 349
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 356
    .local v4, "nextCh":C
    if-ne v4, v8, :cond_6

    .line 357
    if-nez v0, :cond_4

    if-le v2, v3, :cond_5

    .line 358
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 362
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x0

    goto :goto_4

    .line 370
    .end local v1    # "ch":C
    .end local v4    # "nextCh":C
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    .line 372
    .end local v0    # "beginning":Z
    .end local v2    # "i":I
    .end local v3    # "lastIndex":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0
.end method

.method public getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;
    .locals 2
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/asn1/ASN1Type;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public makeCanonical()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    .line 280
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 281
    .local v4, "length":I
    if-nez v4, :cond_0

    .line 282
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 326
    :goto_0
    return-object v5

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 287
    .local v3, "index":I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 294
    :cond_1
    :goto_1
    if-ge v3, v4, :cond_3

    .line 295
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 297
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    .line 316
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 300
    .local v1, "bufLength":I
    if-eqz v1, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 303
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 313
    .end local v1    # "bufLength":I
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    .end local v2    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 322
    .restart local v1    # "bufLength":I
    :goto_4
    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 324
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
