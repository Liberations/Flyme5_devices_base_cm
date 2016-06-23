.class Ljava/math/BitLevel;
.super Ljava/lang/Object;
.source "BitLevel.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitCount(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "bCount":I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 84
    :goto_0
    return v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 71
    .local v1, "i":I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_1

    .line 72
    :goto_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_3

    .line 73
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    :goto_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_2

    .line 79
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    :cond_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v2, v2, 0x5

    sub-int v0, v2, v0

    :cond_3
    move v2, v0

    .line 84
    goto :goto_0
.end method

.method static bitLength(Ljava/math/BigInteger;)I
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 43
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-nez v3, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 46
    :cond_0
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v0, v3, 0x5

    .line 47
    .local v0, "bLength":I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v3, v4

    .line 49
    .local v1, "highDigit":I
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-gez v3, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 52
    .local v2, "i":I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 57
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 58
    goto :goto_0
.end method

.method static flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 13
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 214
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 215
    iget v9, p0, Ljava/math/BigInteger;->sign:I

    if-nez v9, :cond_1

    move v7, v8

    .line 216
    .local v7, "resSign":I
    :goto_0
    shr-int/lit8 v4, p1, 0x5

    .line 217
    .local v4, "intCount":I
    and-int/lit8 v0, p1, 0x1f

    .line 218
    .local v0, "bitN":I
    add-int/lit8 v9, v4, 0x1

    iget v10, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 219
    .local v6, "resLength":I
    new-array v5, v6, [I

    .line 222
    .local v5, "resDigits":[I
    shl-int v1, v8, v0

    .line 223
    .local v1, "bitNumber":I
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v11, v5, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 225
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    if-gez v8, :cond_7

    .line 226
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v4, v8, :cond_2

    .line 227
    aput v1, v5, v4

    .line 253
    :cond_0
    :goto_1
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v8

    .line 215
    .end local v0    # "bitN":I
    .end local v1    # "bitNumber":I
    .end local v4    # "intCount":I
    .end local v5    # "resDigits":[I
    .end local v6    # "resLength":I
    .end local v7    # "resSign":I
    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->sign:I

    goto :goto_0

    .line 230
    .restart local v0    # "bitN":I
    .restart local v1    # "bitNumber":I
    .restart local v4    # "intCount":I
    .restart local v5    # "resDigits":[I
    .restart local v6    # "resLength":I
    .restart local v7    # "resSign":I
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 231
    .local v2, "firstNonZeroDigit":I
    if-le v4, v2, :cond_3

    .line 232
    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_1

    .line 233
    :cond_3
    if-ge v4, v2, :cond_5

    .line 234
    neg-int v8, v1

    aput v8, v5, v4

    .line 235
    add-int/lit8 v3, v4, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 236
    aput v12, v5, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 238
    :cond_4
    aget v8, v5, v3

    add-int/lit8 v9, v8, -0x1

    aput v9, v5, v3

    aput v8, v5, v3

    goto :goto_1

    .line 240
    .end local v3    # "i":I
    :cond_5
    move v3, v4

    .line 241
    .restart local v3    # "i":I
    aget v8, v5, v4

    neg-int v8, v8

    xor-int/2addr v8, v1

    neg-int v8, v8

    aput v8, v5, v3

    .line 242
    aget v8, v5, v3

    if-nez v8, :cond_0

    .line 243
    add-int/lit8 v3, v3, 0x1

    :goto_3
    aget v8, v5, v3

    if-ne v8, v12, :cond_6

    .line 244
    aput v11, v5, v3

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 246
    :cond_6
    aget v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v3

    goto :goto_1

    .line 251
    .end local v2    # "firstNonZeroDigit":I
    .end local v3    # "i":I
    :cond_7
    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_1
.end method

.method static nonZeroDroppedBits(I[I)Z
    .locals 5
    .param p0, "numberOfBits"    # I
    .param p1, "digits"    # [I

    .prologue
    .line 104
    shr-int/lit8 v2, p0, 0x5

    .line 105
    .local v2, "intCount":I
    and-int/lit8 v0, p0, 0x1f

    .line 108
    .local v0, "bitCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    if-ne v1, v2, :cond_1

    aget v3, p1, v1

    rsub-int/lit8 v4, v0, 0x20

    shl-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "source"    # Ljava/math/BigInteger;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 128
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 129
    .local v2, "srcLen":I
    add-int/lit8 v1, v2, 0x1

    .line 130
    .local v1, "resLen":I
    new-array v0, v1, [I

    .line 131
    .local v0, "resDigits":[I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v0, v3, v2}, Ljava/math/BitLevel;->shiftLeftOneBit([I[II)V

    .line 132
    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static shiftLeftOneBit([I[II)V
    .locals 4
    .param p0, "result"    # [I
    .param p1, "source"    # [I
    .param p2, "srcLen"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "carry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 117
    aget v2, p1, v1

    .line 118
    .local v2, "val":I
    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v0

    aput v3, p0, v1

    .line 119
    ushr-int/lit8 v0, v2, 0x1f

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "val":I
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    aput v0, p0, p2

    .line 124
    :cond_1
    return-void
.end method

.method static shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 6
    .param p0, "source"    # Ljava/math/BigInteger;
    .param p1, "count"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 138
    shr-int/lit8 v1, p1, 0x5

    .line 139
    .local v1, "intCount":I
    and-int/lit8 p1, p1, 0x1f

    .line 140
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v4, :cond_1

    .line 141
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_0

    sget-object v4, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 166
    :goto_0
    return-object v4

    .line 141
    :cond_0
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 144
    :cond_1
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int v3, v4, v1

    .line 145
    .local v3, "resLength":I
    add-int/lit8 v4, v3, 0x1

    new-array v2, v4, [I

    .line 147
    .local v2, "resDigits":[I
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v2, v3, v4, v1, p1}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    .line 148
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_6

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    if-nez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_2
    if-lt v0, v1, :cond_3

    if-lez p1, :cond_6

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    rsub-int/lit8 v5, p1, 0x20

    shl-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 157
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    aget v4, v2, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 158
    const/4 v4, 0x0

    aput v4, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_4
    if-ne v0, v3, :cond_5

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 163
    :cond_5
    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    .line 166
    .end local v0    # "i":I
    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v4, v5, v3, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static shiftRight([II[III)Z
    .locals 6
    .param p0, "result"    # [I
    .param p1, "resultLen"    # I
    .param p2, "source"    # [I
    .param p3, "intCount"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    const/4 v0, 0x1

    .line 188
    .local v0, "allZero":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 189
    aget v3, p2, v1

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v0, v3

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 189
    goto :goto_1

    .line 190
    :cond_1
    if-nez p4, :cond_2

    .line 191
    invoke-static {p2, p3, p0, v5, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 192
    move v1, p1

    .line 205
    :goto_2
    return v0

    .line 194
    :cond_2
    rsub-int/lit8 v2, p4, 0x20

    .line 196
    .local v2, "leftShiftCount":I
    aget v3, p2, v1

    shl-int/2addr v3, v2

    if-nez v3, :cond_3

    :goto_3
    and-int/2addr v0, v4

    .line 197
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_4

    .line 198
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    add-int v4, v1, p3

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v4, v5

    .line 196
    goto :goto_3

    .line 201
    :cond_4
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    aput v3, p0, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static testBit(Ljava/math/BigInteger;I)Z
    .locals 3
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 94
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
