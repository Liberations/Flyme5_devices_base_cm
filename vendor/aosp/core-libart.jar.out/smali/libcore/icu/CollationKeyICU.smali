.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/text/CollationKey;)I
    .locals 10
    .param p1, "other"    # Ljava/text/CollationKey;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 37
    instance-of v8, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v8, :cond_3

    .line 38
    check-cast p1, Llibcore/icu/CollationKeyICU;

    .end local p1    # "other":Ljava/text/CollationKey;
    iget-object v2, p1, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 43
    .local v2, "rhsBytes":[B
    :goto_0
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    if-nez v8, :cond_4

    .line 44
    :cond_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-nez v6, :cond_2

    :cond_1
    move v5, v7

    .line 71
    :cond_2
    :goto_1
    return v5

    .line 40
    .end local v2    # "rhsBytes":[B
    .restart local p1    # "other":Ljava/text/CollationKey;
    :cond_3
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    .restart local v2    # "rhsBytes":[B
    goto :goto_0

    .line 49
    .end local p1    # "other":Ljava/text/CollationKey;
    :cond_4
    if-eqz v2, :cond_5

    array-length v8, v2

    if-nez v8, :cond_6

    :cond_5
    move v5, v6

    .line 50
    goto :goto_1

    .line 54
    :cond_6
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_8

    .line 56
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v8, v8, v1

    and-int/lit16 v3, v8, 0xff

    .line 57
    .local v3, "s":I
    aget-byte v8, v2, v1

    and-int/lit16 v4, v8, 0xff

    .line 58
    .local v4, "t":I
    if-lt v3, v4, :cond_2

    .line 61
    if-le v3, v4, :cond_7

    move v5, v6

    .line 62
    goto :goto_1

    .line 55
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    .end local v3    # "s":I
    .end local v4    # "t":I
    :cond_8
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    if-lt v8, v9, :cond_2

    .line 68
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v8, v2

    if-le v5, v8, :cond_9

    move v5, v6

    .line 69
    goto :goto_1

    :cond_9
    move v5, v7

    .line 71
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 81
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 78
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/text/CollationKey;

    if-nez v2, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    check-cast p1, Ljava/text/CollationKey;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 95
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_1

    .line 96
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v2, v3

    .line 98
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x20

    div-int/lit8 v3, v3, 0x20

    add-int/lit8 v1, v3, 0x1

    .line 99
    .local v1, "inc":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 100
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    mul-int/lit8 v3, v3, 0x25

    iget-object v4, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 101
    add-int/2addr v0, v1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v1    # "inc":I
    .end local v2    # "len":I
    :cond_0
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_1

    .line 105
    const/4 v3, 0x1

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 108
    :cond_1
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    return v3
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method
