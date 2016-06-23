.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/ShortBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 48
    if-gez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    new-array v1, p0, [S

    invoke-direct {v0, v1}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    return-object v0
.end method

.method public static wrap([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "shortCount"    # I

    .prologue
    .line 87
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    .line 89
    .local v0, "buf":Ljava/nio/ShortBuffer;
    iput p1, v0, Ljava/nio/ShortBuffer;->position:I

    .line 90
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ShortBuffer;->limit:I

    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    return-object v0
.end method

.method public final array()[S
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArray()[S

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ShortBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 149
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/ShortBuffer;->position:I

    .line 150
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/ShortBuffer;->position:I

    .line 152
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    .line 153
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    .line 154
    .local v3, "thisByte":S
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    .line 155
    .local v1, "otherByte":S
    if-eq v3, v1, :cond_2

    .line 156
    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    .line 162
    .end local v1    # "otherByte":S
    .end local v3    # "thisByte":S
    :goto_2
    return v5

    .line 147
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 156
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherByte":S
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":S
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 158
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    .end local v1    # "otherByte":S
    .end local v3    # "thisByte":S
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/ShortBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 192
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-nez v7, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 195
    check-cast v3, Ljava/nio/ShortBuffer;

    .line 197
    .local v3, "otherBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 201
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    .line 202
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/ShortBuffer;->position:I

    .line 203
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    .local v0, "equalSoFar":Z
    move v5, v4

    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    .line 204
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/ShortBuffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 205
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v5, v4

    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_1

    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_2
    move v0, v6

    goto :goto_2

    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    move v6, v0

    .line 208
    goto :goto_0
.end method

.method public get([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S

    .prologue
    .line 235
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 258
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 259
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 260
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 262
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    aput-short v1, p1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    return-object p0
.end method

.method public abstract get()S
.end method

.method public abstract get(I)S
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 291
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    .line 292
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 293
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/ShortBuffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 294
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 296
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[S
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IS)Ljava/nio/ShortBuffer;
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 426
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 429
    :cond_0
    if-ne p1, p0, :cond_1

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 433
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 435
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [S

    .line 436
    .local v0, "contents":[S
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 437
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 438
    return-object p0
.end method

.method public abstract put(S)Ljava/nio/ShortBuffer;
.end method

.method public final put([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S

    .prologue
    .line 374
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 399
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 400
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 401
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 403
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 404
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/ShortBuffer;
.end method
