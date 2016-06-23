.class public final Lorg/apache/harmony/security/utils/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private group:Ljava/lang/Object;

.field private hash:I

.field private name:Ljava/lang/String;

.field private final oid:[I

.field private sOID:Ljava/lang/String;

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "oid"    # [I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 70
    invoke-static {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->validateOid([I)V

    .line 72
    iput-object p1, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    .line 73
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "oid"    # [I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "oidGroup"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 88
    if-nez p3, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oidGroup == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    .line 93
    iput-object p2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static hashIntArray([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "intHash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 213
    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public static validateOid([I)V
    .locals 3
    .param p0, "oid"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oid == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    array-length v0, p0

    if-ge v0, v1, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OID MUST have at least 2 subidentifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    aget v0, p0, v2

    if-le v0, v1, :cond_2

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid values for first subidentifier are 0, 1 and 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    aget v0, p0, v2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    aget v0, p0, v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_3

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 137
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 134
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroup()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()[I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hashIntArray([I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 178
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    return v0
.end method

.method public toOIDString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    iget-object v3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 168
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v2
.end method
