.class public final Lcom/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static readSignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 7
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    .prologue
    const/16 v6, 0x80

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "result":I
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    const/4 v3, -0x1

    .line 88
    .local v3, "signBits":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 89
    .local v1, "cur":I
    and-int/lit8 v4, v1, 0x7f

    mul-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 90
    shl-int/lit8 v3, v3, 0x7

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_1

    const/4 v4, 0x5

    if-lt v0, v4, :cond_0

    .line 94
    :cond_1
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_2

    .line 95
    new-instance v4, Lcom/android/dex/DexException;

    const-string v5, "invalid LEB128 sequence"

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_2
    shr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 100
    or-int/2addr v2, v3

    .line 103
    :cond_3
    return v2
.end method

.method public static readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 6
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;

    .prologue
    const/16 v5, 0x80

    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "result":I
    const/4 v0, 0x0

    .line 115
    .local v0, "count":I
    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 116
    .local v1, "cur":I
    and-int/lit8 v3, v1, 0x7f

    mul-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    and-int/lit16 v3, v1, 0x80

    if-ne v3, v5, :cond_1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 120
    :cond_1
    and-int/lit16 v3, v1, 0x80

    if-ne v3, v5, :cond_2

    .line 121
    new-instance v3, Lcom/android/dex/DexException;

    const-string v4, "invalid LEB128 sequence"

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_2
    return v2
.end method

.method public static signedLeb128Size(I)I
    .locals 7
    .param p0, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 61
    shr-int/lit8 v3, p0, 0x7

    .line 62
    .local v3, "remaining":I
    const/4 v0, 0x0

    .line 63
    .local v0, "count":I
    const/4 v2, 0x1

    .line 64
    .local v2, "hasMore":Z
    const/high16 v5, -0x80000000

    and-int/2addr v5, p0

    if-nez v5, :cond_1

    move v1, v4

    .line 66
    .local v1, "end":I
    :goto_0
    if-eqz v2, :cond_3

    .line 67
    if-ne v3, v1, :cond_0

    and-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, p0, 0x6

    and-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 70
    :goto_1
    move p0, v3

    .line 71
    shr-int/lit8 v3, v3, 0x7

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "end":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .restart local v1    # "end":I
    :cond_2
    move v2, v4

    .line 67
    goto :goto_1

    .line 75
    :cond_3
    return v0
.end method

.method public static unsignedLeb128Size(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 40
    shr-int/lit8 v1, p0, 0x7

    .line 41
    .local v1, "remaining":I
    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    :goto_0
    if-eqz v1, :cond_0

    .line 44
    shr-int/lit8 v1, v1, 0x7

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public static writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 6
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 148
    shr-int/lit8 v2, p1, 0x7

    .line 149
    .local v2, "remaining":I
    const/4 v1, 0x1

    .line 150
    .local v1, "hasMore":Z
    const/high16 v4, -0x80000000

    and-int/2addr v4, p1

    if-nez v4, :cond_1

    move v0, v3

    .line 152
    .local v0, "end":I
    :goto_0
    if-eqz v1, :cond_4

    .line 153
    if-ne v2, v0, :cond_0

    and-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 156
    :goto_1
    and-int/lit8 v5, p1, 0x7f

    if-eqz v1, :cond_3

    const/16 v4, 0x80

    :goto_2
    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-interface {p0, v4}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 157
    move p1, v2

    .line 158
    shr-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 150
    .end local v0    # "end":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .restart local v0    # "end":I
    :cond_2
    move v1, v3

    .line 153
    goto :goto_1

    :cond_3
    move v4, v3

    .line 156
    goto :goto_2

    .line 160
    :cond_4
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 2
    .param p0, "out"    # Lcom/android/dex/util/ByteOutput;
    .param p1, "value"    # I

    .prologue
    .line 132
    ushr-int/lit8 v0, p1, 0x7

    .line 134
    .local v0, "remaining":I
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 136
    move p1, v0

    .line 137
    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 140
    :cond_0
    and-int/lit8 v1, p1, 0x7f

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    .line 141
    return-void
.end method
