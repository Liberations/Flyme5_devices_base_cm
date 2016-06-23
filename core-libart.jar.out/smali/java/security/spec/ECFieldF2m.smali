.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# static fields
.field private static final PPB_LEN:I = 0x5

.field private static final PPB_MID_LEN:I = 0x3

.field private static final TPB_LEN:I = 0x3

.field private static final TPB_MID_LEN:I = 0x1


# instance fields
.field private final ks:[I

.field private final m:I

.field private final rp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "m"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 54
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 58
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "rp"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 79
    iget v3, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "m <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_0
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 83
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "rp == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_1
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    .line 90
    .local v2, "rp_bc":I
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "rp is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_4
    add-int/lit8 v3, v2, -0x2

    new-array v3, v3, [I

    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 100
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    .local v1, "rpTmp":Ljava/math/BigInteger;
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 102
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    aput v4, v3, v0

    .line 103
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 105
    :cond_5
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 8
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 125
    iget v4, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v4, :cond_0

    .line 126
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "m <= 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_0
    array-length v4, p2

    new-array v4, v4, [I

    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 132
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iget-object v5, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v5, v5

    invoke-static {p2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 135
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 137
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "the length of ks is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "checkFailed":Z
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 147
    .local v2, "prev":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 148
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_2

    .line 149
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v4, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x1

    .line 155
    :cond_3
    if-nez v0, :cond_4

    if-ge v2, v7, :cond_5

    .line 156
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ks is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_5
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget v5, p0, Ljava/security/spec/ECFieldF2m;->m:I

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 163
    .local v3, "rpTmp":Ljava/math/BigInteger;
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 164
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_6
    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 179
    if-ne p0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 183
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    .line 185
    .local v0, "o":Ljava/security/spec/ECFieldF2m;
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iget v3, v0, Ljava/security/spec/ECFieldF2m;->m:I

    if-ne v2, v3, :cond_2

    .line 187
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v2, :cond_3

    .line 188
    iget-object v2, v0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 200
    .end local v0    # "o":Ljava/security/spec/ECFieldF2m;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "o":Ljava/security/spec/ECFieldF2m;
    :cond_3
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iget-object v2, v0, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-nez v1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 238
    .local v0, "ret":[I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
