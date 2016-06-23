.class public Ljava/nio/charset/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static countBytes(Ljava/lang/String;Z)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 74
    const-wide/16 v4, 0x0

    .line 75
    .local v4, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 76
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 78
    .local v0, "ch":C
    if-eqz v0, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    .line 79
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 85
    :goto_1
    if-eqz p1, :cond_2

    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 86
    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_1

    .line 81
    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    goto :goto_1

    .line 83
    :cond_1
    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    goto :goto_1

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "ch":C
    :cond_3
    return-wide v4
.end method

.method public static decode([B[CII)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "utfSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    .line 36
    const/4 v3, 0x0

    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "s":I
    move v6, v5

    .end local v5    # "s":I
    .local v6, "s":I
    move v4, v3

    .line 37
    .end local v3    # "count":I
    .local v4, "count":I
    :goto_0
    if-ge v4, p3, :cond_8

    .line 38
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    aput-char v7, p1, v6

    if-ge v7, v9, :cond_0

    .line 39
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "s":I
    .restart local v5    # "s":I
    move v6, v5

    .end local v5    # "s":I
    .restart local v6    # "s":I
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto :goto_0

    .line 40
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_0
    aget-char v0, p1, v6

    .local v0, "a":I
    and-int/lit16 v7, v0, 0xe0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_3

    .line 41
    if-lt v3, p3, :cond_1

    .line 42
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 45
    .local v1, "b":I
    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v9, :cond_2

    .line 46
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v8, v1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .line 49
    .end local v5    # "s":I
    .restart local v6    # "s":I
    goto :goto_0

    .end local v1    # "b":I
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_3
    and-int/lit16 v7, v0, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_7

    .line 50
    add-int/lit8 v7, v3, 0x1

    if-lt v7, p3, :cond_4

    .line 51
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 53
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    aget-byte v1, p0, v7

    .line 54
    .restart local v1    # "b":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    aget-byte v2, p0, v7

    .line 55
    .local v2, "c":I
    and-int/lit16 v7, v1, 0xc0

    if-ne v7, v9, :cond_5

    and-int/lit16 v7, v2, 0xc0

    if-eq v7, v9, :cond_6

    .line 56
    :cond_5
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad second or third byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 58
    :cond_6
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0xf

    shl-int/lit8 v7, v7, 0xc

    and-int/lit8 v8, v1, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v5

    .end local v5    # "s":I
    .restart local v6    # "s":I
    move v4, v3

    .line 59
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 60
    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_7
    new-instance v7, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    .end local v0    # "a":I
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_8
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 98
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, p1

    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 100
    .local v0, "ch":C
    if-eqz v0, :cond_0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 101
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    aput-byte v4, p0, v3

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 102
    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    .line 103
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 104
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1

    .line 106
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 107
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 108
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_1

    .line 111
    .end local v0    # "ch":C
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    .line 120
    .local v1, "utfCount":I
    add-int/lit8 v2, v1, 0x2

    new-array v0, v2, [B

    .line 121
    .local v0, "result":[B
    const/4 v2, 0x0

    int-to-short v3, v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 122
    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 123
    return-object v0
.end method
