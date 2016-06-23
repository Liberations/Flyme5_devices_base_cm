.class Ljava/math/Logical;
.super Ljava/lang/Object;
.source "Logical.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 83
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_2

    .line 84
    :cond_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 105
    .end local p0    # "val":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    return-object p0

    .line 86
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, p1

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    .line 94
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4

    .line 95
    invoke-static {p0, p1}, Ljava/math/Logical;->andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    .line 101
    invoke-static {p1, p0}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 102
    :cond_6
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_7

    .line 103
    invoke-static {p0, p1}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_7
    invoke-static {p1, p0}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 132
    .local v2, "iPos":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 136
    .local v1, "iNeg":I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v6, :cond_0

    .line 137
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 160
    :goto_0
    return-object v6

    .line 139
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 140
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 143
    .local v4, "resDigits":[I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    .local v0, "i":I
    if-ne v0, v1, :cond_1

    .line 145
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 149
    .local v3, "limit":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 150
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_2
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v0, v6, :cond_3

    .line 155
    :goto_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_3

    .line 156
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    const/4 v8, -0x1

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 168
    .local v2, "iLonger":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 171
    .local v3, "iShorter":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    .line 214
    .end local p0    # "longer":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .line 177
    .restart local p0    # "longer":Ljava/math/BigInteger;
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .local v1, "i":I
    if-le v3, v2, :cond_1

    .line 180
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    and-int v0, v6, v7

    .line 186
    .local v0, "digit":I
    :goto_1
    if-nez v0, :cond_5

    .line 187
    add-int/lit8 v1, v1, 0x1

    :goto_2
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "digit":I
    :cond_1
    if-ge v3, v2, :cond_2

    .line 182
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    .restart local v0    # "digit":I
    goto :goto_1

    .line 184
    .end local v0    # "digit":I
    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    .restart local v0    # "digit":I
    goto :goto_1

    .line 189
    :cond_3
    if-nez v0, :cond_5

    .line 191
    :goto_3
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 193
    :cond_4
    if-nez v0, :cond_5

    .line 194
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v5, v6, 0x1

    .line 195
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 196
    .local v4, "resDigits":[I
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    aput v7, v4, v6

    .line 198
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "longer":Ljava/math/BigInteger;
    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0

    .line 202
    .end local v4    # "resDigits":[I
    .end local v5    # "resLength":I
    .restart local p0    # "longer":Ljava/math/BigInteger;
    :cond_5
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 203
    .restart local v5    # "resLength":I
    new-array v4, v5, [I

    .line 204
    .restart local v4    # "resDigits":[I
    neg-int v6, v0

    aput v6, v4, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    :goto_4
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_6

    .line 207
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    aput v6, v4, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 210
    :cond_6
    :goto_5
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_7

    .line 211
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    aput v6, v4, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 214
    :cond_7
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "longer":Ljava/math/BigInteger;
    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 219
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_0

    .line 244
    .end local p0    # "val":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .line 222
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1

    .line 223
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 225
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 228
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 234
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    .line 235
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4

    .line 236
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 238
    :cond_4
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 241
    :cond_5
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    .line 242
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 244
    :cond_6
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 374
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 376
    .local v1, "iThat":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    .line 377
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 421
    :goto_0
    return-object v6

    .line 380
    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 381
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 383
    .local v4, "resDigits":[I
    move v0, v2

    .line 384
    .local v0, "i":I
    if-ge v2, v1, :cond_4

    .line 386
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 387
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 388
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_1

    .line 390
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_1
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_3

    .line 393
    :goto_2
    if-ge v0, v1, :cond_2

    .line 395
    const/4 v6, -0x1

    aput v6, v4, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 398
    :cond_2
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 411
    .end local v3    # "limit":I
    :goto_3
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 412
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_4
    if-ge v0, v3, :cond_6

    .line 414
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 401
    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    .line 403
    .end local v3    # "limit":I
    :cond_4
    if-ge v1, v2, :cond_5

    .line 405
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    .line 408
    :cond_5
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_3

    .line 416
    .restart local v3    # "limit":I
    :cond_6
    :goto_5
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_7

    .line 418
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 421
    :cond_7
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "negative"    # Ljava/math/BigInteger;
    .param p1, "positive"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, -0x1

    .line 305
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 306
    .local v2, "iNeg":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 308
    .local v3, "iPos":I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_0

    .line 367
    .end local p0    # "negative":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .line 312
    .restart local p0    # "negative":Ljava/math/BigInteger;
    :cond_0
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 313
    .local v6, "resLength":I
    move v1, v2

    .line 314
    .local v1, "i":I
    if-le v3, v2, :cond_2

    .line 315
    new-array v5, v6, [I

    .line 316
    .local v5, "resDigits":[I
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 317
    .local v4, "limit":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 320
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_7

    .line 323
    move v1, v3

    :goto_2
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_7

    .line 325
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_2
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    and-int v0, v7, v8

    .line 330
    .local v0, "digit":I
    if-nez v0, :cond_6

    .line 331
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 332
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-ge v1, v4, :cond_3

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 334
    :cond_3
    if-nez v0, :cond_6

    .line 336
    :goto_4
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_4

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    :cond_4
    :goto_5
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 340
    :cond_5
    if-nez v0, :cond_6

    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 342
    new-array v5, v6, [I

    .line 343
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 345
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "negative":Ljava/math/BigInteger;
    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0

    .line 349
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    .restart local p0    # "negative":Ljava/math/BigInteger;
    :cond_6
    new-array v5, v6, [I

    .line 350
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    aput v7, v5, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 354
    .end local v0    # "digit":I
    :cond_7
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 355
    .restart local v4    # "limit":I
    :goto_6
    if-ge v1, v4, :cond_8

    .line 357
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v5, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 360
    :cond_8
    :goto_7
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_9

    .line 361
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 363
    :cond_9
    :goto_8
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_a

    .line 364
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 367
    :cond_a
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "negative":Ljava/math/BigInteger;
    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 252
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v2, v3, [I

    .line 254
    .local v2, "resDigits":[I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 256
    .local v1, "limit":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 257
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aput v3, v2, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_1

    .line 260
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v3, v4, v5, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 270
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 272
    .local v2, "iPos":I
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_0

    .line 294
    .end local p0    # "positive":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .line 276
    .restart local p0    # "positive":Ljava/math/BigInteger;
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 277
    .local v4, "resLength":I
    new-array v3, v4, [I

    .line 280
    .local v3, "resDigits":[I
    move v0, v2

    .line 281
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 283
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_1
    if-ne v0, v1, :cond_2

    .line 286
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 289
    :cond_2
    :goto_2
    if-ge v0, v4, :cond_3

    .line 291
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 294
    :cond_3
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "positive":Ljava/math/BigInteger;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 113
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    .local v2, "resLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    .local v0, "i":I
    if-lt v0, v2, :cond_0

    .line 117
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 125
    :goto_0
    return-object v3

    .line 120
    :cond_0
    new-array v1, v2, [I

    .line 121
    .local v1, "resDigits":[I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 122
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    aput v3, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static not(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, -0x1

    .line 40
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_0

    .line 41
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 78
    :goto_0
    return-object v2

    .line 43
    :cond_0
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 46
    :cond_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 49
    .local v1, "resDigits":[I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_4

    .line 51
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eq v2, v4, :cond_2

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :cond_3
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v2, :cond_5

    .line 60
    const/4 v2, 0x1

    aput v2, v1, v0

    .line 61
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-nez v2, :cond_5

    .line 68
    aput v4, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 73
    :cond_5
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    :goto_4
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_6

    .line 76
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 78
    :cond_6
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 426
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    :cond_0
    sget-object p0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 452
    .end local p0    # "val":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    return-object p0

    .line 429
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_2
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_1

    .line 432
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_3

    move-object p0, p1

    .line 433
    goto :goto_0

    .line 436
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    .line 437
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    .line 438
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_4

    .line 439
    invoke-static {p0, p1}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 441
    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 444
    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 447
    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_7

    .line 448
    invoke-static {p1, p0}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 449
    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 450
    invoke-static {p1, p0}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 452
    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 9
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    const/4 v8, -0x1

    .line 513
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 514
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 520
    .local v2, "iPos":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_0

    .line 565
    .end local p1    # "negative":Ljava/math/BigInteger;
    :goto_0
    return-object p1

    .line 523
    .restart local p1    # "negative":Ljava/math/BigInteger;
    :cond_0
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 524
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 526
    .local v4, "resDigits":[I
    if-ge v1, v2, :cond_1

    .line 529
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 530
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_1
    if-ge v2, v1, :cond_6

    .line 533
    move v0, v2

    .line 534
    .restart local v0    # "i":I
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 535
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 536
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_2

    .line 537
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 539
    :cond_2
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-eq v0, v6, :cond_4

    .line 540
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 548
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 555
    .end local v3    # "limit":I
    :cond_3
    :goto_4
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 556
    .restart local v3    # "limit":I
    :goto_5
    if-ge v0, v3, :cond_7

    .line 559
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 542
    :cond_4
    :goto_6
    if-ge v0, v1, :cond_5

    .line 543
    aput v8, v4, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 546
    :cond_5
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_3

    .line 551
    .end local v0    # "i":I
    .end local v3    # "limit":I
    :cond_6
    move v0, v2

    .line 552
    .restart local v0    # "i":I
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    neg-int v6, v6

    aput v6, v4, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 561
    .restart local v3    # "limit":I
    :cond_7
    :goto_7
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_8

    .line 562
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 565
    :cond_8
    new-instance p1, Ljava/math/BigInteger;

    .end local p1    # "negative":Ljava/math/BigInteger;
    invoke-direct {p1, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_0
.end method

.method static orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 480
    .local v1, "iThat":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 483
    .local v2, "iVal":I
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v5, :cond_0

    .line 507
    .end local p1    # "that":Ljava/math/BigInteger;
    :goto_0
    return-object p1

    .line 485
    .restart local p1    # "that":Ljava/math/BigInteger;
    :cond_0
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_1

    move-object p1, p0

    .line 486
    goto :goto_0

    .line 489
    :cond_1
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 490
    .local v4, "resLength":I
    new-array v3, v4, [I

    .line 493
    .local v3, "resDigits":[I
    if-ne v1, v2, :cond_2

    .line 494
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v2

    neg-int v5, v5

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v2

    neg-int v6, v6

    or-int/2addr v5, v6

    neg-int v5, v5

    aput v5, v3, v2

    .line 495
    move v0, v2

    .line 503
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v4, :cond_4

    .line 504
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 497
    .end local v0    # "i":I
    :cond_2
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 498
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 500
    :cond_3
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    goto :goto_1

    .line 507
    :cond_4
    new-instance p1, Ljava/math/BigInteger;

    .end local p1    # "that":Ljava/math/BigInteger;
    const/4 v5, -0x1

    invoke-direct {p1, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    .line 461
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 462
    .local v2, "resLength":I
    new-array v1, v2, [I

    .line 465
    .local v1, "resDigits":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_0

    .line 466
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    or-int/2addr v3, v4

    aput v3, v1, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 469
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 570
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_0

    .line 599
    .end local p0    # "val":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .line 573
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_0
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1

    move-object p0, p1

    .line 574
    goto :goto_0

    .line 576
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 579
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 583
    :cond_3
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_6

    .line 584
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_5

    .line 585
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_4

    .line 586
    invoke-static {p0, p1}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 588
    :cond_4
    invoke-static {p1, p0}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 591
    :cond_5
    invoke-static {p0, p1}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 594
    :cond_6
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_7

    .line 595
    invoke-static {p1, p0}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 596
    :cond_7
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 597
    invoke-static {p1, p0}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 599
    :cond_8
    invoke-static {p0, p1}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method static xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 10
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, -0x1

    .line 676
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 678
    .local v6, "resLength":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 679
    .local v2, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 684
    .local v3, "iPos":I
    if-ge v2, v3, :cond_1

    .line 685
    new-array v5, v6, [I

    .line 686
    .local v5, "resDigits":[I
    move v1, v2

    .line 688
    .local v1, "i":I
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 689
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 691
    .local v4, "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v1, v4, :cond_0

    .line 693
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_3

    .line 698
    :goto_1
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_3

    .line 700
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 703
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_1
    if-ge v3, v2, :cond_6

    .line 704
    new-array v5, v6, [I

    .line 705
    .restart local v5    # "resDigits":[I
    move v1, v3

    .line 707
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    aput v7, v5, v1

    .line 708
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 709
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v4, :cond_2

    .line 711
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 715
    :cond_2
    if-ne v1, v2, :cond_4

    .line 716
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    .line 758
    .end local v4    # "limit":I
    :cond_3
    :goto_3
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 759
    .restart local v4    # "limit":I
    :goto_4
    if-ge v1, v4, :cond_b

    .line 760
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 721
    :cond_4
    :goto_5
    if-ge v1, v2, :cond_5

    .line 723
    aput v9, v5, v1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 725
    :cond_5
    :goto_6
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_3

    .line 727
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 732
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_6
    move v1, v2

    .line 733
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int v0, v7, v8

    .line 734
    .local v0, "digit":I
    if-nez v0, :cond_a

    .line 735
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 736
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_7
    if-ge v1, v4, :cond_7

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    xor-int v0, v7, v8

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 738
    :cond_7
    if-nez v0, :cond_a

    .line 740
    :goto_8
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_8

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 742
    :cond_8
    :goto_9
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_9

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 744
    :cond_9
    if-nez v0, :cond_a

    .line 745
    add-int/lit8 v6, v6, 0x1

    .line 746
    new-array v5, v6, [I

    .line 747
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 749
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 771
    .end local v0    # "digit":I
    :goto_a
    return-object v7

    .line 753
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    .restart local v0    # "digit":I
    :cond_a
    new-array v5, v6, [I

    .line 754
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    aput v7, v5, v1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 762
    .end local v0    # "digit":I
    .restart local v4    # "limit":I
    :cond_b
    :goto_b
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_c

    .line 764
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 766
    :cond_c
    :goto_c
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_d

    .line 768
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 771
    :cond_d
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_a
.end method

.method static xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 625
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 626
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 627
    .local v4, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 628
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 629
    .local v1, "iThat":I
    move v0, v1

    .line 633
    .local v0, "i":I
    if-ne v2, v1, :cond_0

    .line 634
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    xor-int/2addr v6, v7

    aput v6, v4, v0

    .line 655
    :goto_0
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 657
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_4

    .line 659
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/2addr v6, v7

    aput v6, v4, v0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    .end local v3    # "limit":I
    :cond_0
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 637
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 638
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v3, :cond_1

    .line 639
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 642
    :cond_1
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_3

    .line 644
    :goto_3
    if-ge v0, v2, :cond_2

    .line 646
    const/4 v6, -0x1

    aput v6, v4, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 649
    :cond_2
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_0

    .line 651
    :cond_3
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    xor-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_0

    .line 662
    :cond_4
    :goto_4
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_5

    .line 664
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 666
    :cond_5
    :goto_5
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_6

    .line 668
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 671
    :cond_6
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v6
.end method

.method static xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    .line 608
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 609
    .local v2, "resLength":I
    new-array v1, v2, [I

    .line 610
    .local v1, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 611
    .local v0, "i":I
    :goto_0
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_0

    .line 612
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v1, v0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    :goto_1
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_1

    .line 615
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 618
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method
