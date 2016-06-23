.class public final Llibcore/io/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
.end method

.method public static native peekByte(J)B
.end method

.method public static native peekByteArray(J[BII)V
.end method

.method public static native peekCharArray(J[CIIZ)V
.end method

.method public static native peekDoubleArray(J[DIIZ)V
.end method

.method public static native peekFloatArray(J[FIIZ)V
.end method

.method public static peekInt(JZ)I
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .prologue
    .line 156
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekIntNative(J)I

    move-result v0

    .line 157
    .local v0, "result":I
    if-eqz p2, :cond_0

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    .line 47
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    .line 52
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native peekIntArray(J[IIIZ)V
.end method

.method private static native peekIntNative(J)I
.end method

.method public static peekLong(JZ)J
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .prologue
    .line 165
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekLongNative(J)J

    move-result-wide v0

    .line 166
    .local v0, "result":J
    if-eqz p2, :cond_0

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 169
    :cond_0
    return-wide v0
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .locals 10
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 60
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_0

    .line 61
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v0, v3, v4

    .line 65
    .local v0, "h":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 69
    .local v1, "l":I
    int-to-long v4, v0

    shl-long/2addr v4, v6

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    move p1, v2

    .line 79
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-wide v4

    .line 71
    .end local v0    # "h":I
    .end local v1    # "l":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v1, v3, v4

    .line 75
    .restart local v1    # "l":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    .line 79
    .restart local v0    # "h":I
    int-to-long v4, v0

    shl-long/2addr v4, v6

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native peekLongArray(J[JIIZ)V
.end method

.method private static native peekLongNative(J)J
.end method

.method public static peekShort(JZ)S
    .locals 2
    .param p0, "address"    # J
    .param p2, "swap"    # Z

    .prologue
    .line 174
    invoke-static {p0, p1}, Llibcore/io/Memory;->peekShortNative(J)S

    move-result v0

    .line 175
    .local v0, "result":S
    if-eqz p2, :cond_0

    .line 176
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 178
    :cond_0
    return v0
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 84
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 85
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 87
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static native peekShortArray(J[SIIZ)V
.end method

.method private static native peekShortNative(J)S
.end method

.method public static native pokeByte(JB)V
.end method

.method public static native pokeByteArray(J[BII)V
.end method

.method public static native pokeCharArray(J[CIIZ)V
.end method

.method public static native pokeDoubleArray(J[DIIZ)V
.end method

.method public static native pokeFloatArray(J[FIIZ)V
.end method

.method public static pokeInt(JIZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # I
    .param p3, "swap"    # Z

    .prologue
    .line 193
    if-eqz p3, :cond_0

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 196
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeIntNative(JI)V

    .line 197
    return-void
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 92
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    .line 93
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 94
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 95
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 96
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 103
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 98
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 99
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 100
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 101
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeIntArray(J[IIIZ)V
.end method

.method private static native pokeIntNative(JI)V
.end method

.method public static pokeLong(JJZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # J
    .param p4, "swap"    # Z

    .prologue
    .line 201
    if-eqz p4, :cond_0

    .line 202
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    .line 204
    :cond_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/Memory;->pokeLongNative(JJ)V

    .line 205
    return-void
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .locals 4
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v3, 0x20

    .line 106
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v2, :cond_0

    .line 107
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 108
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 109
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 110
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 111
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 112
    long-to-int v0, p2

    .line 113
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 114
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 115
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 116
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .line 129
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 118
    .end local v0    # "i":I
    :cond_0
    long-to-int v0, p2

    .line 119
    .restart local v0    # "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 120
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 121
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 122
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 123
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 124
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 125
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 126
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 127
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeLongArray(J[JIIZ)V
.end method

.method private static native pokeLongNative(JJ)V
.end method

.method public static pokeShort(JSZ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # S
    .param p3, "swap"    # Z

    .prologue
    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 212
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Memory;->pokeShortNative(JS)V

    .line 213
    return-void
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 132
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    .line 133
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 134
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 139
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 136
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 137
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static native pokeShortArray(J[SIIZ)V
.end method

.method private static native pokeShortNative(JS)V
.end method

.method public static native unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
