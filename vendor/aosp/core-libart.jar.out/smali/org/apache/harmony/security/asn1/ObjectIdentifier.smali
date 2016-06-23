.class public final Lorg/apache/harmony/security/asn1/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private final oid:[I

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "strOid"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "oid"    # [I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->validate([I)V

    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 58
    return-void
.end method

.method public static isOID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method private static toIntArray(Ljava/lang/String;Z)[I
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shouldThrow"    # Z

    .prologue
    const/16 v11, 0x2e

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 189
    if-nez p0, :cond_2

    .line 190
    if-nez p1, :cond_1

    move-object v5, v7

    .line 265
    :cond_0
    :goto_0
    return-object v5

    .line 193
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "str == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 196
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 197
    .local v4, "length":I
    if-nez v4, :cond_4

    .line 198
    if-nez p1, :cond_3

    move-object v5, v7

    .line 199
    goto :goto_0

    .line 201
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    :cond_4
    const/4 v1, 0x1

    .line 205
    .local v1, "count":I
    const/4 v6, 0x1

    .line 207
    .local v6, "wasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_a

    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 209
    .local v0, "c":C
    if-ne v0, v11, :cond_7

    .line 210
    if-eqz v6, :cond_6

    .line 211
    if-nez p1, :cond_5

    move-object v5, v7

    .line 212
    goto :goto_0

    .line 214
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 216
    :cond_6
    const/4 v6, 0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 207
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_8

    const/16 v8, 0x39

    if-gt v0, v8, :cond_8

    .line 219
    const/4 v6, 0x0

    goto :goto_2

    .line 221
    :cond_8
    if-nez p1, :cond_9

    move-object v5, v7

    .line 222
    goto :goto_0

    .line 224
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    .end local v0    # "c":C
    :cond_a
    if-eqz v6, :cond_c

    .line 230
    if-nez p1, :cond_b

    move-object v5, v7

    .line 231
    goto :goto_0

    .line 233
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    :cond_c
    if-ge v1, v9, :cond_e

    .line 237
    if-nez p1, :cond_d

    move-object v5, v7

    .line 238
    goto :goto_0

    .line 240
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 243
    :cond_e
    new-array v5, v1, [I

    .line 244
    .local v5, "oid":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v2, v4, :cond_10

    .line 245
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    .restart local v0    # "c":C
    if-ne v0, v11, :cond_f

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 244
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 249
    :cond_f
    aget v8, v5, v3

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, -0x30

    aput v8, v5, v3

    goto :goto_4

    .line 253
    .end local v0    # "c":C
    :cond_10
    aget v8, v5, v10

    if-le v8, v9, :cond_12

    .line 254
    if-nez p1, :cond_11

    move-object v5, v7

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_11
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 258
    :cond_12
    aget v8, v5, v10

    if-eq v8, v9, :cond_0

    const/4 v8, 0x1

    aget v8, v5, v8

    const/16 v9, 0x27

    if-le v8, v9, :cond_0

    .line 259
    if-nez p1, :cond_13

    move-object v5, v7

    .line 260
    goto/16 :goto_0

    .line 262
    :cond_13
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "oid"    # [I

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 140
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static validate([I)V
    .locals 7
    .param p0, "oid"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 104
    if-nez p0, :cond_0

    .line 105
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "oid == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_0
    array-length v4, p0

    if-ge v4, v5, :cond_1

    .line 109
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "OID MUST have at least 2 subidentifiers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_1
    aget v4, p0, v6

    if-le v4, v5, :cond_2

    .line 113
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Valid values for first subidentifier are 0, 1 and 2"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_2
    aget v4, p0, v6

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    aget v4, p0, v4

    const/16 v5, 0x27

    if-le v4, v5, :cond_3

    .line 116
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_3
    move-object v1, p0

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget v0, v1, v2

    .line 121
    .local v0, "anOid":I
    if-gez v0, :cond_4

    .line 122
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Subidentifier MUST have positive value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "anOid":I
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 78
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 75
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "intHash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v0
.end method
