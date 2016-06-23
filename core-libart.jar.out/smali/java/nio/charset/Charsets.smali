.class public final Ljava/nio/charset/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static native asciiBytesToChars([BII[C)V
.end method

.method public static native isoLatin1BytesToChars([BII[C)V
.end method

.method public static native toAsciiBytes([CII)[B
.end method

.method public static toBigEndianUtf16Bytes([CII)[B
    .locals 7
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 48
    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [B

    .line 49
    .local v3, "result":[B
    add-int v1, p1, p2

    .line 50
    .local v1, "end":I
    const/4 v4, 0x0

    .line 51
    .local v4, "resultIndex":I
    move v2, p1

    .local v2, "i":I
    move v5, v4

    .end local v4    # "resultIndex":I
    .local v5, "resultIndex":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 52
    aget-char v0, p0, v2

    .line 53
    .local v0, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 54
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "resultIndex":I
    .restart local v5    # "resultIndex":I
    int-to-byte v6, v0

    aput-byte v6, v3, v4

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "ch":C
    :cond_0
    return-object v3
.end method

.method public static native toIsoLatin1Bytes([CII)[B
.end method

.method public static native toUtf8Bytes([CII)[B
.end method
