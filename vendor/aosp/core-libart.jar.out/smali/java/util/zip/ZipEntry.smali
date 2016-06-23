.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field dataOffset:J

.field extra:[B

.field localHeaderRelOffset:J

.field modDate:I

.field name:Ljava/lang/String;

.field nameLength:I

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 46
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 49
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 50
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 51
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 55
    iput v2, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 58
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string v0, "Name"

    invoke-static {v0, p1}, Ljava/util/zip/ZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJIII[BIJJ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "time"    # I
    .param p11, "modDate"    # I
    .param p12, "extra"    # [B
    .param p13, "nameLength"    # I
    .param p14, "localHeaderRelOffset"    # J
    .param p16, "dataOffset"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 46
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 47
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 51
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 55
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 56
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 58
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 73
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 75
    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 76
    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 77
    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 78
    iput p9, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 79
    iput p10, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 80
    move/from16 v0, p11

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 81
    move-object/from16 v0, p12

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 82
    move/from16 v0, p13

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 83
    move-wide/from16 v0, p14

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 84
    move-wide/from16 v0, p16

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 46
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 49
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 50
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 51
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 55
    iput v2, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 58
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 334
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 336
    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 337
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 338
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 339
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 340
    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 341
    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 342
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 343
    iget v0, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 344
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 345
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 346
    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 12
    .param p1, "cdeHdrBuf"    # [B
    .param p2, "cdStream"    # Ljava/io/InputStream;
    .param p3, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 46
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 47
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 49
    const/4 v8, -0x1

    iput v8, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 50
    const/4 v8, -0x1

    iput v8, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 51
    const/4 v8, -0x1

    iput v8, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 55
    const/4 v8, -0x1

    iput v8, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 56
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 58
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 382
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p2, p1, v8, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 384
    const/4 v8, 0x0

    array-length v9, p1

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v8, v9, v10}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v5

    .line 387
    .local v5, "it":Llibcore/io/BufferIterator;
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    .line 388
    .local v7, "sig":I
    int-to-long v8, v7

    const-wide/32 v10, 0x2014b50    # 1.6619997E-316

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 389
    const-string v8, "Central Directory Entry"

    invoke-static {v8, v7}, Ljava/util/zip/ZipFile;->throwZipException(Ljava/lang/String;I)V

    .line 392
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Llibcore/io/BufferIterator;->seek(I)V

    .line 393
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int v4, v8, v9

    .line 395
    .local v4, "gpbf":I
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_1

    .line 396
    new-instance v8, Ljava/util/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 401
    :cond_1
    move-object v0, p3

    .line 402
    .local v0, "charset":Ljava/nio/charset/Charset;
    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_2

    .line 403
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 406
    :cond_2
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    iput v8, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 407
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    iput v8, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 408
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    iput v8, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 411
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 412
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 413
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 415
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    iput v8, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 416
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int v3, v8, v9

    .line 417
    .local v3, "extraLength":I
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    const v9, 0xffff

    and-int v1, v8, v9

    .line 420
    .local v1, "commentByteCount":I
    const/16 v8, 0x2a

    invoke-virtual {v5, v8}, Llibcore/io/BufferIterator;->seek(I)V

    .line 421
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 423
    iget v8, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    new-array v6, v8, [B

    .line 424
    .local v6, "nameBytes":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {p2, v6, v8, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 425
    invoke-static {v6}, Ljava/util/zip/ZipEntry;->containsNulByte([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 426
    new-instance v8, Ljava/util/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filename contains NUL byte: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 428
    :cond_3
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v6

    invoke-direct {v8, v6, v9, v10, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v8, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 430
    if-lez v3, :cond_4

    .line 431
    new-array v8, v3, [B

    iput-object v8, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 432
    iget-object v8, p0, Ljava/util/zip/ZipEntry;->extra:[B

    const/4 v9, 0x0

    invoke-static {p2, v8, v9, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 435
    :cond_4
    if-lez v1, :cond_5

    .line 436
    new-array v2, v1, [B

    .line 437
    .local v2, "commentBytes":[B
    const/4 v8, 0x0

    invoke-static {p2, v2, v8, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 438
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v2

    invoke-direct {v8, v2, v9, v10, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v8, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 440
    .end local v2    # "commentBytes":[B
    :cond_5
    return-void
.end method

.method private static containsNulByte([B)Z
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 444
    .local v1, "b":B
    if-nez v1, :cond_0

    .line 445
    const/4 v4, 0x1

    .line 448
    .end local v1    # "b":B
    :goto_1
    return v4

    .line 443
    .restart local v1    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "b":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static validateStringLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "argument"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 455
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 456
    .local v0, "bytes":[B
    array-length v1, v0

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 457
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 353
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 354
    .local v1, "result":Ljava/util/zip/ZipEntry;
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-object v1

    .line 354
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 356
    .end local v1    # "result":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getDataOffset()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 7

    .prologue
    .line 175
    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 176
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 177
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 178
    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    and-int/lit8 v3, v3, 0x1f

    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x1f

    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 181
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 183
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "Comment"

    invoke-static {v0, p1}, Ljava/util/zip/ZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCompressedSize(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 217
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 218
    return-void
.end method

.method public setCrc(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 230
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataOffset(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 308
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 309
    return-void
.end method

.method public setExtra([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 242
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extra data too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 246
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 259
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 263
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 274
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 275
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 279
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v4, 0x1

    .line 289
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 290
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 291
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 292
    .local v1, "year":I
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    .line 293
    const/16 v2, 0x21

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 294
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 303
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 297
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 298
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7bc

    shl-int/lit8 v2, v2, 0x9

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 299
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 300
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 301
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method
