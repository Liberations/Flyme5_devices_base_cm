.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 56
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 71
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    .line 96
    :goto_0
    return-object v0

    .line 74
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 75
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 77
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 78
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 80
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 81
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 83
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 84
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 86
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 87
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 89
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 90
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 92
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 93
    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 95
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 96
    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    aget-wide v2, p0, p1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 98
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    if-nez p0, :cond_a

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 115
    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    .line 116
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    return v0

    .line 118
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 132
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    return v0

    .line 135
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 149
    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    return v0

    .line 152
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 167
    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    .line 168
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    aget-wide v0, p0, p1

    .line 180
    :goto_0
    return-wide v0

    .line 169
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 170
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    int-to-double v0, v0

    goto :goto_0

    .line 171
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 172
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    int-to-double v0, v0

    goto :goto_0

    .line 173
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [F

    if-eqz v0, :cond_3

    .line 174
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aget v0, p0, p1

    float-to-double v0, v0

    goto :goto_0

    .line 175
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [I

    if-eqz v0, :cond_4

    .line 176
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v0, p0, p1

    int-to-double v0, v0

    goto :goto_0

    .line 177
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [J

    if-eqz v0, :cond_5

    .line 178
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v0, p0, p1

    long-to-double v0, v0

    goto :goto_0

    .line 179
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [S

    if-eqz v0, :cond_6

    .line 180
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    int-to-double v0, v0

    goto :goto_0

    .line 182
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 197
    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    .line 198
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aget v0, p0, p1

    .line 208
    :goto_0
    return v0

    .line 199
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 200
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    int-to-float v0, v0

    goto :goto_0

    .line 201
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 202
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    int-to-float v0, v0

    goto :goto_0

    .line 203
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 204
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v0, p0, p1

    int-to-float v0, v0

    goto :goto_0

    .line 205
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 206
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v0, p0, p1

    long-to-float v0, v0

    goto :goto_0

    .line 207
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 208
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    int-to-float v0, v0

    goto :goto_0

    .line 210
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 225
    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    .line 226
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v0, p0, p1

    .line 232
    :goto_0
    return v0

    .line 227
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 228
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    goto :goto_0

    .line 229
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 230
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    goto :goto_0

    .line 231
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [S

    if-eqz v0, :cond_3

    .line 232
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    goto :goto_0

    .line 234
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 245
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    .line 262
    :goto_0
    return v0

    .line 247
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    .line 248
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    array-length v0, p0

    goto :goto_0

    .line 249
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 250
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    array-length v0, p0

    goto :goto_0

    .line 251
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    .line 252
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    array-length v0, p0

    goto :goto_0

    .line 253
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 254
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    array-length v0, p0

    goto :goto_0

    .line 255
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 256
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    array-length v0, p0

    goto :goto_0

    .line 257
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 258
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    array-length v0, p0

    goto :goto_0

    .line 259
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 260
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    array-length v0, p0

    goto :goto_0

    .line 261
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    .line 262
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    array-length v0, p0

    goto :goto_0

    .line 264
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 279
    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    .line 280
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v0, p0, p1

    .line 288
    :goto_0
    return-wide v0

    .line 281
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 282
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 283
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 284
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v0, p0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 285
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 286
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v0, p0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 287
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    .line 288
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 290
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 305
    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    .line 306
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v0, p0, p1

    .line 308
    :goto_0
    return v0

    .line 307
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 308
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v0, p0, p1

    int-to-short v0, v0

    goto :goto_0

    .line 310
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 355
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 356
    new-array v0, p1, [C

    goto :goto_0

    .line 357
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 358
    new-array v0, p1, [I

    goto :goto_0

    .line 359
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 360
    new-array v0, p1, [B

    goto :goto_0

    .line 361
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 362
    new-array v0, p1, [Z

    goto :goto_0

    .line 363
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 364
    new-array v0, p1, [S

    goto :goto_0

    .line 365
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 366
    new-array v0, p1, [J

    goto :goto_0

    .line 367
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 368
    new-array v0, p1, [F

    goto :goto_0

    .line 369
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 370
    new-array v0, p1, [D

    goto :goto_0

    .line 371
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 3
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_2
    if-nez p0, :cond_3

    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "componentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 399
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 400
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 403
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    aput-object p2, p0, p1

    .line 426
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 405
    .restart local p0    # "array":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    if-nez p2, :cond_4

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 409
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 410
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 411
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_0

    .line 412
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_7

    .line 413
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_0

    .line 414
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 415
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_0

    .line 416
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 417
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_0

    .line 418
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 419
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_0

    .line 420
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 421
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 422
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 423
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_0
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 439
    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    .line 440
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    aput-boolean p2, p0, p1

    .line 444
    return-void

    .line 442
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 457
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 458
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aput-byte p2, p0, p1

    .line 472
    :goto_0
    return-void

    .line 459
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 460
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 461
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 462
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 463
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 464
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aput p2, p0, p1

    goto :goto_0

    .line 465
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 466
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 467
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 468
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    int-to-short v0, p2

    aput-short v0, p0, p1

    goto :goto_0

    .line 470
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 485
    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    .line 486
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aput-char p2, p0, p1

    .line 498
    :goto_0
    return-void

    .line 487
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 488
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 489
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 490
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 491
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 492
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aput p2, p0, p1

    goto :goto_0

    .line 493
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 494
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 496
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 511
    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    .line 512
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    aput-wide p2, p0, p1

    .line 516
    return-void

    .line 514
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 529
    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    .line 530
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aput p2, p0, p1

    .line 536
    :goto_0
    return-void

    .line 531
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 532
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    float-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 534
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 549
    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    .line 550
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aput p2, p0, p1

    .line 560
    :goto_0
    return-void

    .line 551
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 552
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 553
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 554
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 555
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    .line 556
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 558
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 573
    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    .line 574
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aput-wide p2, p0, p1

    .line 582
    :goto_0
    return-void

    .line 575
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 576
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    long-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 577
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 578
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    long-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 580
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 595
    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    .line 596
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aput-short p2, p0, p1

    .line 608
    :goto_0
    return-void

    .line 597
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 598
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 599
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 600
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 601
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 602
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aput p2, p0, p1

    goto :goto_0

    .line 603
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 604
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 606
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
