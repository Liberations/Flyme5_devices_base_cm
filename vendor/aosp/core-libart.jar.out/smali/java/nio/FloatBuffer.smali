.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    .prologue
    .line 97
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    .line 98
    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
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
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    new-array v1, p0, [F

    invoke-direct {v0, v1}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    return-object v0
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "array"    # [F

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "floatCount"    # I

    .prologue
    .line 89
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 90
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    .line 91
    .local v0, "buf":Ljava/nio/FloatBuffer;
    iput p1, v0, Ljava/nio/FloatBuffer;->position:I

    .line 92
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/FloatBuffer;->limit:I

    .line 93
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    return-object v0
.end method

.method public final array()[F
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArray()[F

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    .line 151
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/FloatBuffer;->position:I

    .line 152
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/FloatBuffer;->position:I

    .line 154
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_4

    .line 155
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    .line 156
    .local v3, "thisFloat":F
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 158
    .local v1, "otherFloat":F
    cmpl-float v5, v3, v1

    if-eqz v5, :cond_3

    cmpl-float v5, v3, v3

    if-eqz v5, :cond_0

    cmpl-float v5, v1, v1

    if-nez v5, :cond_3

    .line 160
    :cond_0
    cmpg-float v5, v3, v1

    if-gez v5, :cond_2

    const/4 v5, -0x1

    .line 166
    .end local v1    # "otherFloat":F
    .end local v3    # "thisFloat":F
    :goto_2
    return v5

    .line 149
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 160
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherFloat":F
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisFloat":F
    .restart local v4    # "thisPos":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    .line 162
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 166
    .end local v1    # "otherFloat":F
    .end local v3    # "thisFloat":F
    :cond_4
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 201
    instance-of v9, p1, Ljava/nio/FloatBuffer;

    if-nez v9, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v5, p1

    .line 204
    check-cast v5, Ljava/nio/FloatBuffer;

    .line 206
    .local v5, "otherBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v9

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 210
    iget v3, p0, Ljava/nio/FloatBuffer;->position:I

    .line 211
    .local v3, "myPosition":I
    iget v6, v5, Ljava/nio/FloatBuffer;->position:I

    .line 212
    .local v6, "otherPosition":I
    const/4 v2, 0x1

    .local v2, "equalSoFar":Z
    move v7, v6

    .end local v6    # "otherPosition":I
    .local v7, "otherPosition":I
    move v4, v3

    .line 213
    .end local v3    # "myPosition":I
    .local v4, "myPosition":I
    :goto_1
    if-eqz v2, :cond_4

    iget v9, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v4, v9, :cond_4

    .line 214
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "myPosition":I
    .restart local v3    # "myPosition":I
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    .line 215
    .local v0, "a":F
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "otherPosition":I
    .restart local v6    # "otherPosition":I
    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 216
    .local v1, "b":F
    cmpl-float v9, v0, v1

    if-eqz v9, :cond_2

    cmpl-float v9, v0, v0

    if-eqz v9, :cond_3

    cmpl-float v9, v1, v1

    if-eqz v9, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    move v7, v6

    .end local v6    # "otherPosition":I
    .restart local v7    # "otherPosition":I
    move v4, v3

    .line 217
    .end local v3    # "myPosition":I
    .restart local v4    # "myPosition":I
    goto :goto_1

    .end local v4    # "myPosition":I
    .end local v7    # "otherPosition":I
    .restart local v3    # "myPosition":I
    .restart local v6    # "otherPosition":I
    :cond_3
    move v2, v8

    .line 216
    goto :goto_2

    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v3    # "myPosition":I
    .end local v6    # "otherPosition":I
    .restart local v4    # "myPosition":I
    .restart local v7    # "otherPosition":I
    :cond_4
    move v8, v2

    .line 219
    goto :goto_0
.end method

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F

    .prologue
    .line 246
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 269
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 270
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 271
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 273
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 274
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    aput v1, p1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 302
    iget v1, p0, Ljava/nio/FloatBuffer;->position:I

    .line 303
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 304
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/FloatBuffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 305
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 307
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[F
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 437
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 440
    :cond_0
    if-ne p1, p0, :cond_1

    .line 441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 444
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 446
    :cond_2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [F

    .line 447
    .local v0, "contents":[F
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 448
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 449
    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F

    .prologue
    .line 385
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 410
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 411
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 412
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 414
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 415
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method
