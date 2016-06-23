.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    .line 41
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 121
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .prologue
    .line 53
    if-gez p0, :cond_0

    .line 54
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

    .line 56
    :cond_0
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    new-array v1, p0, [B

    invoke-direct {v0, v1}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "capacity"    # I

    .prologue
    .line 69
    if-gez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    add-int/lit8 v0, p0, 0x7

    invoke-static {v0}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v1

    .line 74
    .local v1, "memoryBlock":Ljava/nio/MemoryBlock;
    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v6

    .line 75
    .local v6, "address":J
    const-wide/16 v2, 0x7

    add-long/2addr v2, v6

    const-wide/16 v4, -0x8

    and-long v8, v2, v4

    .line 76
    .local v8, "alignedAddress":J
    new-instance v0, Ljava/nio/DirectByteBuffer;

    sub-long v2, v8, v6

    long-to-int v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 90
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 112
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 113
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    .line 114
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/ByteBuffer;->position:I

    .line 115
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/ByteBuffer;->limit:I

    .line 116
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 287
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/ByteBuffer;->position:I

    .line 288
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/ByteBuffer;->position:I

    .line 290
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    .line 291
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 292
    .local v3, "thisByte":B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 293
    .local v1, "otherByte":B
    if-eq v3, v1, :cond_2

    .line 294
    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    .line 300
    .end local v1    # "otherByte":B
    .end local v3    # "thisByte":B
    :goto_2
    return v5

    .line 285
    .end local v0    # "compareRemaining":I
    .end local v2    # "otherPos":I
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 294
    .restart local v0    # "compareRemaining":I
    .restart local v1    # "otherByte":B
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":B
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 296
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 297
    add-int/lit8 v2, v2, 0x1

    .line 298
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 300
    .end local v1    # "otherByte":B
    .end local v3    # "thisByte":B
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 334
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 337
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 339
    .local v3, "otherBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 343
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    .line 344
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/ByteBuffer;->position:I

    .line 345
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    .local v0, "equalSoFar":Z
    move v5, v4

    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    .line 346
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 347
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

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

    .line 350
    goto :goto_0
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B

    .prologue
    .line 376
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 397
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 398
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 399
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 401
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, p1, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 600
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    .line 601
    .local v1, "myPosition":I
    const/4 v0, 0x0

    .line 602
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/ByteBuffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 603
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    .line 605
    :cond_0
    return v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 666
    :cond_0
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 667
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "buffer is inaccessible"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v4

    .line 779
    :cond_1
    if-ne p1, p0, :cond_2

    .line 780
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == this"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 782
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 783
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "src buffer is inaccessible"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 785
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 786
    .local v7, "srcByteCount":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v7, v4, :cond_4

    .line 787
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    .line 790
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, p1

    .line 791
    .local v2, "srcObject":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 792
    .local v3, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_5

    .line 793
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    .line 796
    :cond_5
    move-object v6, p0

    .line 797
    .local v6, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v6

    .line 798
    .local v0, "dstObject":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 799
    .local v1, "dstOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_6

    .line 800
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 803
    :cond_6
    int-to-long v4, v7

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 804
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 805
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 807
    return-object p0

    .line 790
    .end local v0    # "dstObject":Ljava/lang/Object;
    .end local v1    # "dstOffset":I
    .end local v2    # "srcObject":Ljava/lang/Object;
    .end local v3    # "srcOffset":I
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_0

    .line 797
    .restart local v2    # "srcObject":Ljava/lang/Object;
    .restart local v3    # "srcOffset":I
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_8
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 721
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 746
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 747
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 748
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 750
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 751
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_1
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
