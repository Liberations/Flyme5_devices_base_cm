.class final Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# instance fields
.field transient bignum:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    return-void
.end method

.method static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    .prologue
    .line 255
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 256
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    .line 257
    return-object v6
.end method

.method static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # Ljava/math/BigInt;

    .prologue
    .line 285
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 286
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_exp(JJJ)V

    .line 287
    return-object v6
.end method

.method static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .locals 4
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    .prologue
    .line 63
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_cmp(JJ)I

    move-result v0

    return v0
.end method

.method static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .locals 8
    .param p0, "dividend"    # Ljava/math/BigInt;
    .param p1, "divisor"    # Ljava/math/BigInt;
    .param p2, "quotient"    # Ljava/math/BigInt;
    .param p3, "remainder"    # Ljava/math/BigInt;

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    invoke-direct {p2}, Ljava/math/BigInt;->makeValid()V

    .line 304
    iget-wide v0, p2, Ljava/math/BigInt;->bignum:J

    .line 308
    .local v0, "quot":J
    :goto_0
    if-eqz p3, :cond_1

    .line 309
    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    .line 310
    iget-wide v2, p3, Ljava/math/BigInt;->bignum:J

    .line 314
    .local v2, "rem":J
    :goto_1
    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v6, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_div(JJJJ)V

    .line 315
    return-void

    .line 306
    .end local v0    # "quot":J
    .end local v2    # "rem":J
    :cond_0
    const-wide/16 v0, 0x0

    .restart local v0    # "quot":J
    goto :goto_0

    .line 312
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "rem":J
    goto :goto_1
.end method

.method static exp(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 4
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # I

    .prologue
    .line 292
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 293
    .local v0, "power":Ljava/math/BigInt;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInt;->putLongInt(J)V

    .line 294
    invoke-static {p0, v0}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    return-object v1
.end method

.method static gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    .prologue
    .line 272
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 273
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_gcd(JJJ)V

    .line 274
    return-object v6
.end method

.method static generatePrimeDefault(I)Ljava/math/BigInt;
    .locals 11
    .param p0, "bitLength"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 340
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v10

    .line 341
    .local v10, "r":Ljava/math/BigInt;
    iget-wide v0, v10, Ljava/math/BigInt;->bignum:J

    const/4 v3, 0x0

    move v2, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v0 .. v9}, Ljava/math/NativeBN;->BN_generate_prime_ex(JIZJJJ)V

    .line 342
    return-object v10
.end method

.method private invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeValid()V
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    .line 53
    :cond_0
    return-void
.end method

.method static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 9
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # Ljava/math/BigInt;
    .param p2, "m"    # Ljava/math/BigInt;

    .prologue
    .line 326
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v8

    .line 327
    .local v8, "r":Ljava/math/BigInt;
    iget-wide v0, v8, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    iget-wide v6, p2, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_mod_exp(JJJJ)V

    .line 328
    return-object v8
.end method

.method static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "m"    # Ljava/math/BigInt;

    .prologue
    .line 333
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 334
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mod_inverse(JJJ)V

    .line 335
    return-object v6
.end method

.method static modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "m"    # Ljava/math/BigInt;

    .prologue
    .line 319
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 320
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_nnmod(JJJ)V

    .line 321
    return-object v6
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 57
    .local v0, "bi":Ljava/math/BigInt;
    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/math/BigInt;->bignum:J

    .line 58
    return-object v0
.end method

.method static product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    .prologue
    .line 278
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 279
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mul(JJJ)V

    .line 280
    return-object v6
.end method

.method static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .locals 2
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "w"    # I

    .prologue
    .line 251
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mod_word(JI)I

    move-result v0

    return v0
.end method

.method static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 6
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "n"    # I

    .prologue
    .line 233
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 234
    .local v0, "r":Ljava/math/BigInt;
    iget-wide v2, v0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v4, v5, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    .line 235
    return-object v0
.end method

.method static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    .prologue
    .line 265
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 266
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_sub(JJJ)V

    .line 267
    return-object v6
.end method

.method private static toAscii(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "base"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "ch":C
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 162
    .local v4, "value":I
    if-ltz v4, :cond_0

    const/16 v5, 0x9

    if-gt v4, v5, :cond_0

    .line 163
    add-int/lit8 v5, v4, 0x30

    int-to-char v0, v5

    .line 165
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "ch":C
    .end local v4    # "value":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method add(Ljava/math/BigInt;)V
    .locals 6
    .param p1, "a"    # Ljava/math/BigInt;

    .prologue
    .line 261
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    .line 262
    return-void
.end method

.method addPositiveInt(I)V
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 243
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_add_word(JI)V

    .line 244
    return-void
.end method

.method bigEndianMagnitude()[B
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2bin(J)[B

    move-result-object v0

    return-object v0
.end method

.method bitLength()I
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->bitLength(J)I

    move-result v0

    return v0
.end method

.method checkString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "base"    # I

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "s == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 126
    .local v1, "charCount":I
    const/4 v2, 0x0

    .line 127
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 128
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 129
    .local v0, "ch":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 131
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 132
    add-int/lit8 v1, v1, -0x1

    .line 137
    .end local v0    # "ch":C
    :cond_1
    :goto_0
    sub-int v4, v1, v2

    if-nez v4, :cond_3

    .line 138
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 133
    .restart local v0    # "ch":C
    :cond_2
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "ch":C
    :cond_3
    const/4 v3, 0x0

    .line 141
    .local v3, "nonAscii":Z
    :goto_1
    if-ge v2, v1, :cond_6

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .restart local v0    # "ch":C
    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 144
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 146
    :cond_4
    const/16 v4, 0x80

    if-le v0, v4, :cond_5

    .line 147
    const/4 v3, 0x1

    .line 141
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "ch":C
    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Ljava/math/BigInt;->toAscii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "s":Ljava/lang/String;
    :cond_7
    return-object p1
.end method

.method copy()Ljava/math/BigInt;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 74
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    .line 75
    return-object v0
.end method

.method decString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2dec(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    :try_start_0
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_free(J)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    return-void

    .line 36
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeBIGNUM()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    return-wide v0
.end method

.method hexString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2hex(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBitSet(I)Z
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 228
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_is_bit_set(JI)Z

    move-result v0

    return v0
.end method

.method isPrime(I)Z
    .locals 4
    .param p1, "certainty"    # I

    .prologue
    .line 346
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Ljava/math/NativeBN;->BN_is_prime_ex(JIJ)Z

    move-result v0

    return v0
.end method

.method littleEndianIntsMagnitude()[I
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->bn2litEndInts(J)[I

    move-result-object v0

    return-object v0
.end method

.method longInt()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->longInt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method multiplyByPositiveInt(I)V
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 247
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mul_word(JI)V

    .line 248
    return-void
.end method

.method putBigEndian([BZ)V
    .locals 4
    .param p1, "a"    # [B
    .param p2, "neg"    # Z

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 172
    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->BN_bin2bn([BIZJ)V

    .line 173
    return-void
.end method

.method putBigEndianTwosComplement([B)V
    .locals 4
    .param p1, "a"    # [B

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 182
    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, v2, v3}, Ljava/math/NativeBN;->twosComp2bn([BIJ)V

    .line 183
    return-void
.end method

.method putCopy(Ljava/math/BigInt;)V
    .locals 4
    .param p1, "from"    # Ljava/math/BigInt;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 69
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_copy(JJ)V

    .line 70
    return-void
.end method

.method putDecString(Ljava/lang/String;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 94
    const/16 v2, 0xa

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 96
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_dec2bn(JLjava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "usedLen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 100
    :cond_0
    return-void
.end method

.method putHexString(Ljava/lang/String;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 103
    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 105
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_hex2bn(JLjava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "usedLen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 107
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 109
    :cond_0
    return-void
.end method

.method putLittleEndianInts([IZ)V
    .locals 4
    .param p1, "a"    # [I
    .param p2, "neg"    # Z

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 177
    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->litEndInts2bn([IIZJ)V

    .line 178
    return-void
.end method

.method putLongInt(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 81
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1, p2}, Ljava/math/NativeBN;->putLongInt(JJ)V

    .line 82
    return-void
.end method

.method putULongInt(JZ)V
    .locals 3
    .param p1, "val"    # J
    .param p3, "neg"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    .line 86
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1, p2, p3}, Ljava/math/NativeBN;->putULongInt(JJZ)V

    .line 87
    return-void
.end method

.method setSign(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 211
    if-lez p1, :cond_1

    .line 212
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-gez p1, :cond_0

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    goto :goto_0
.end method

.method shift(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 239
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    .line 240
    return-void
.end method

.method sign()I
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->sign(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method twosCompFitsIntoBytes(I)Z
    .locals 4
    .param p1, "desiredByteCount"    # I

    .prologue
    .line 219
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3}, Ljava/math/NativeBN;->bitLength(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    .line 220
    .local v0, "actualByteCount":I
    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
