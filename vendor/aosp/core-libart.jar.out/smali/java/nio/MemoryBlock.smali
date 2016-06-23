.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$1;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$MemoryMappedBlock;
    }
.end annotation


# instance fields
.field private accessible:Z

.field protected address:J

.field private freed:Z

.field protected final size:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-wide p1, p0, Ljava/nio/MemoryBlock;->address:J

    .line 142
    iput-wide p3, p0, Ljava/nio/MemoryBlock;->size:J

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->accessible:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    .line 145
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .locals 8
    .param p0, "byteCount"    # I

    .prologue
    .line 130
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 131
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v0, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    .line 132
    .local v1, "array":[B
    invoke-virtual {v7, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    .line 133
    .local v2, "address":J
    new-instance v0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    int-to-long v4, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BJJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .locals 17
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "size"    # J
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_0

    .line 103
    new-instance v11, Ljava/nio/MemoryBlock;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v11, v4, v5, v6, v7}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    .line 123
    :goto_0
    return-object v11

    .line 106
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-ltz v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-ltz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p3, v4

    if-lez v3, :cond_2

    .line 107
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_2
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 112
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    sget v4, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v8, v3, v4

    .line 113
    .local v8, "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_PRIVATE:I

    .line 122
    .local v9, "flags":I
    :goto_1
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v12

    .line 123
    .local v12, "address":J
    new-instance v11, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    const/16 v16, 0x0

    move-wide/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v12    # "address":J
    :catch_0
    move-exception v2

    .line 125
    .local v2, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 114
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    .end local v8    # "prot":I
    .end local v9    # "flags":I
    :cond_3
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 115
    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    .line 116
    .restart local v8    # "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    .restart local v9    # "flags":I
    goto :goto_1

    .line 118
    .end local v8    # "prot":I
    .end local v9    # "flags":I
    :cond_4
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    sget v4, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v8, v3, v4

    .line 119
    .restart local v8    # "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    .restart local v9    # "flags":I
    goto :goto_1
.end method

.method public static wrapFromJni(JJ)Ljava/nio/MemoryBlock;
    .locals 8
    .param p0, "address"    # J
    .param p2, "byteCount"    # J

    .prologue
    .line 137
    new-instance v1, Ljava/nio/MemoryBlock$UnmanagedBlock;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    return-object v1
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .locals 2

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    .line 155
    return-void
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    return-wide v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/nio/MemoryBlock;->isFreed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/nio/MemoryBlock;->accessible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreed()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    return v0
.end method

.method public final peekByte(I)B
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 202
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method public final peekByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 206
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 207
    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 210
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 211
    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 214
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 215
    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 218
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 219
    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 246
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 222
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 223
    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 254
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 226
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 227
    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 238
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 230
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 231
    return-void
.end method

.method public final pokeByte(IB)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .prologue
    .line 170
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 171
    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "src"    # [B
    .param p3, "srcOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 174
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 175
    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 178
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 179
    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 182
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 183
    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 186
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 187
    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 242
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 243
    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 190
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 191
    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 250
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 251
    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 194
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 195
    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 234
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 235
    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    .prologue
    .line 198
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 199
    return-void
.end method

.method public final setAccessible(Z)V
    .locals 0
    .param p1, "accessible"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Ljava/nio/MemoryBlock;->accessible:Z

    .line 167
    return-void
.end method

.method public final toLong()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/nio/MemoryBlock;->address:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
