.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
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
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
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
    new-instance v0, Ljava/nio/LongArrayBuffer;

    new-array v1, p0, [J

    invoke-direct {v0, v1}, Ljava/nio/LongArrayBuffer;-><init>([J)V

    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "longCount"    # I

    .prologue
    .line 87
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    new-instance v0, Ljava/nio/LongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/LongArrayBuffer;-><init>([J)V

    .line 89
    .local v0, "buf":Ljava/nio/LongBuffer;
    iput p1, v0, Ljava/nio/LongBuffer;->position:I

    .line 90
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/LongBuffer;->limit:I

    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public final array()[J
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/nio/LongBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .locals 9
    .param p1, "otherBuffer"    # Ljava/nio/LongBuffer;

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .line 149
    .local v0, "compareRemaining":I
    :goto_0
    iget v6, p0, Ljava/nio/LongBuffer;->position:I

    .line 150
    .local v6, "thisPos":I
    iget v1, p1, Ljava/nio/LongBuffer;->position:I

    .line 152
    .local v1, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    .line 153
    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    .line 154
    .local v4, "thisLong":J
    invoke-virtual {p1, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    .line 155
    .local v2, "otherLong":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_2

    .line 156
    cmp-long v7, v4, v2

    if-gez v7, :cond_1

    const/4 v7, -0x1

    .line 162
    .end local v2    # "otherLong":J
    .end local v4    # "thisLong":J
    :goto_2
    return v7

    .line 147
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherPos":I
    .end local v6    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 156
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherPos":I
    .restart local v2    # "otherLong":J
    .restart local v4    # "thisLong":J
    .restart local v6    # "thisPos":I
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 158
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    .end local v2    # "otherLong":J
    .end local v4    # "thisLong":J
    :cond_3
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 192
    instance-of v7, p1, Ljava/nio/LongBuffer;

    if-nez v7, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 195
    check-cast v3, Ljava/nio/LongBuffer;

    .line 197
    .local v3, "otherBuffer":Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 201
    iget v1, p0, Ljava/nio/LongBuffer;->position:I

    .line 202
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/LongBuffer;->position:I

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

    iget v7, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 205
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

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

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "dst"    # [J

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 257
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 258
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 259
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 261
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 290
    iget v1, p0, Ljava/nio/LongBuffer;->position:I

    .line 291
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 293
    .local v0, "hash":I
    :goto_0
    iget v5, p0, Ljava/nio/LongBuffer;->limit:I

    if-ge v1, v5, :cond_0

    .line 294
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "myPosition":I
    .local v4, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    .line 295
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

    .line 297
    .end local v2    # "l":J
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/LongBuffer;

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 430
    :cond_0
    if-ne p1, p0, :cond_1

    .line 431
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_1
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 434
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 436
    :cond_2
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [J

    .line 437
    .local v0, "contents":[J
    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 438
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 439
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "src"    # [J

    .prologue
    .line 375
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    .prologue
    .line 400
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 401
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 402
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 404
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 405
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method
