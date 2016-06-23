.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    .line 97
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 49
    if-gez p0, :cond_0

    .line 50
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

    .line 52
    :cond_0
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    new-array v1, p0, [D

    invoke-direct {v0, v1}, Ljava/nio/DoubleArrayBuffer;-><init>([D)V

    return-object v0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "doubleCount"    # I

    .prologue
    .line 88
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 89
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/DoubleArrayBuffer;-><init>([D)V

    .line 90
    .local v0, "buf":Ljava/nio/DoubleBuffer;
    iput p1, v0, Ljava/nio/DoubleBuffer;->position:I

    .line 91
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/DoubleBuffer;->limit:I

    .line 92
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    return-object v0
.end method

.method public final array()[D
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .locals 9
    .param p1, "otherBuffer"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    .line 150
    .local v0, "compareRemaining":I
    :goto_0
    iget v6, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 151
    .local v6, "thisPos":I
    iget v1, p1, Ljava/nio/DoubleBuffer;->position:I

    .line 153
    .local v1, "otherPos":I
    :goto_1
    if-lez v0, :cond_4

    .line 154
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    .line 155
    .local v4, "thisDouble":D
    invoke-virtual {p1, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    .line 157
    .local v2, "otherDouble":D
    cmpl-double v7, v4, v2

    if-eqz v7, :cond_3

    cmpl-double v7, v4, v4

    if-eqz v7, :cond_0

    cmpl-double v7, v2, v2

    if-nez v7, :cond_3

    .line 159
    :cond_0
    cmpg-double v7, v4, v2

    if-gez v7, :cond_2

    const/4 v7, -0x1

    .line 165
    .end local v2    # "otherDouble":D
    .end local v4    # "thisDouble":D
    :goto_2
    return v7

    .line 148
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherPos":I
    .end local v6    # "thisPos":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 159
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherPos":I
    .restart local v2    # "otherDouble":D
    .restart local v4    # "thisDouble":D
    .restart local v6    # "thisPos":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    .line 161
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 165
    .end local v2    # "otherDouble":D
    .end local v4    # "thisDouble":D
    :cond_4
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 200
    instance-of v11, p1, Ljava/nio/DoubleBuffer;

    if-nez v11, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object v7, p1

    .line 203
    check-cast v7, Ljava/nio/DoubleBuffer;

    .line 205
    .local v7, "otherBuffer":Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v11

    invoke-virtual {v7}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 209
    iget v5, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 210
    .local v5, "myPosition":I
    iget v8, v7, Ljava/nio/DoubleBuffer;->position:I

    .line 211
    .local v8, "otherPosition":I
    const/4 v4, 0x1

    .local v4, "equalSoFar":Z
    move v9, v8

    .end local v8    # "otherPosition":I
    .local v9, "otherPosition":I
    move v6, v5

    .line 212
    .end local v5    # "myPosition":I
    .local v6, "myPosition":I
    :goto_1
    if-eqz v4, :cond_4

    iget v11, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v6, v11, :cond_4

    .line 213
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "myPosition":I
    .restart local v5    # "myPosition":I
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    .line 214
    .local v0, "a":D
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "otherPosition":I
    .restart local v8    # "otherPosition":I
    invoke-virtual {v7, v9}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    .line 215
    .local v2, "b":D
    cmpl-double v11, v0, v2

    if-eqz v11, :cond_2

    cmpl-double v11, v0, v0

    if-eqz v11, :cond_3

    cmpl-double v11, v2, v2

    if-eqz v11, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_2
    move v9, v8

    .end local v8    # "otherPosition":I
    .restart local v9    # "otherPosition":I
    move v6, v5

    .line 216
    .end local v5    # "myPosition":I
    .restart local v6    # "myPosition":I
    goto :goto_1

    .end local v6    # "myPosition":I
    .end local v9    # "otherPosition":I
    .restart local v5    # "myPosition":I
    .restart local v8    # "otherPosition":I
    :cond_3
    move v4, v10

    .line 215
    goto :goto_2

    .end local v0    # "a":D
    .end local v2    # "b":D
    .end local v5    # "myPosition":I
    .end local v8    # "otherPosition":I
    .restart local v6    # "myPosition":I
    .restart local v9    # "otherPosition":I
    :cond_4
    move v10, v4

    .line 218
    goto :goto_0
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D

    .prologue
    .line 245
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 268
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 269
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 270
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 272
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 301
    iget v1, p0, Ljava/nio/DoubleBuffer;->position:I

    .line 302
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 304
    .local v0, "hash":I
    :goto_0
    iget v5, p0, Ljava/nio/DoubleBuffer;->limit:I

    if-ge v1, v5, :cond_0

    .line 305
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "myPosition":I
    .local v4, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 306
    .local v2, "l":J
    long-to-int v5, v2

    add-int/2addr v5, v0

    const/16 v6, 0x20

    shr-long v6, v2, v6

    long-to-int v6, v6

    xor-int v0, v5, v6

    move v1, v4

    .end local v4    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 308
    .end local v2    # "l":J
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[D
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 441
    :cond_0
    if-ne p1, p0, :cond_1

    .line 442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 445
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 447
    :cond_2
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [D

    .line 448
    .local v0, "doubles":[D
    invoke-virtual {p1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 449
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 450
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D

    .prologue
    .line 386
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 411
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 412
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 413
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 415
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 416
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method
