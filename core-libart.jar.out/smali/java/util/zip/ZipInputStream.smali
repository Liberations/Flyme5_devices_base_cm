.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private stringBytesBuf:[B

.field private stringCharBuf:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 98
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 74
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 76
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 78
    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 80
    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 84
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    .line 86
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 88
    new-array v0, v4, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    .line 90
    new-array v0, v4, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    return-void
.end method

.method private peekShort(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 290
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p1, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private readAndVerifyDataDescriptor(II)V
    .locals 8
    .param p1, "inB"    # I
    .param p2, "out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v5, 0x0

    .line 187
    iget-boolean v1, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, v5, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 189
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v5, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 190
    .local v0, "sig":I
    const v1, 0x8074b50

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "unknown format (EXTSIG=%x)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    .line 194
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x8

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 195
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0xc

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    .line 197
    .end local v0    # "sig":I
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 198
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 201
    :cond_3
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_4
    return-void
.end method

.method private readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 278
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    .line 280
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    invoke-static {v0, v1, v2, p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 283
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 284
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    .line 286
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    invoke-static {v0, v1, v2, p1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 352
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    int-to-long v0, v0

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 114
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 116
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 126
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v6, :cond_1

    .line 184
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v3, 0x0

    .line 142
    .local v3, "failure":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v6, v6, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 149
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v4

    .line 150
    .local v4, "inB":I
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    .line 155
    .local v5, "out":I
    :goto_1
    iget v6, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    sub-int v0, v6, v4

    .line 157
    .local v0, "diff":I
    if-eqz v0, :cond_2

    .line 158
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v6, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v8, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v8, v0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 162
    :cond_2
    :try_start_1
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipInputStream;->readAndVerifyDataDescriptor(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_3
    :goto_2
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->reset()V

    .line 170
    const/4 v6, 0x0

    iput v6, p0, Ljava/util/zip/ZipInputStream;->len:I

    iput v6, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v6, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iput v6, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 171
    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 172
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 174
    if-eqz v3, :cond_0

    .line 175
    instance-of v6, v3, Ljava/io/IOException;

    if-eqz v6, :cond_5

    .line 176
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "failure":Ljava/lang/Exception;
    throw v3

    .line 143
    .end local v0    # "diff":I
    .end local v4    # "inB":I
    .end local v5    # "out":I
    .restart local v3    # "failure":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 153
    .restart local v4    # "inB":I
    iget v5, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .restart local v5    # "out":I
    goto :goto_1

    .line 163
    .restart local v0    # "diff":I
    :catch_1
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_3

    .line 165
    move-object v3, v1

    goto :goto_2

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_6

    .line 178
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "failure":Ljava/lang/Exception;
    throw v3

    .line 180
    .restart local v3    # "failure":Ljava/lang/Exception;
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .line 181
    .local v2, "error":Ljava/lang/AssertionError;
    invoke-virtual {v2, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 182
    throw v2
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 214
    const/16 v18, 0x0

    .line 270
    :goto_0
    return-object v18

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-static/range {v18 .. v21}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v18 .. v20}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v14

    .line 220
    .local v14, "hdr":I
    int-to-long v0, v14

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x2014b50    # 1.6619997E-316

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 221
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 222
    const/16 v18, 0x0

    goto :goto_0

    .line 224
    :cond_1
    int-to-long v0, v14

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x4034b50

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 225
    const/16 v18, 0x0

    goto :goto_0

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1a

    invoke-static/range {v18 .. v21}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 230
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 231
    .local v17, "version":I
    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 232
    new-instance v18, Ljava/util/zip/ZipException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot read local header version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 234
    :cond_3
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v13

    .line 235
    .local v13, "flags":I
    and-int/lit8 v18, v13, 0x1

    if-eqz v18, :cond_4

    .line 236
    new-instance v18, Ljava/util/zip/ZipException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid General Purpose Bit Flag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 239
    :cond_4
    and-int/lit8 v18, v13, 0x8

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 240
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v8

    .line 241
    .local v8, "ceLastModifiedTime":I
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v5

    .line 242
    .local v5, "ceLastModifiedDate":I
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v4

    .line 243
    .local v4, "ceCompressionMethod":I
    const-wide/16 v6, 0x0

    .local v6, "ceCrc":J
    const-wide/16 v2, 0x0

    .local v2, "ceCompressedSize":J
    const-wide/16 v10, -0x1

    .line 244
    .local v10, "ceSize":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0xa

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v18 .. v20}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0xe

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v18 .. v20}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v2, v18, v20

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0x12

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v18 .. v20}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 249
    :cond_5
    const/16 v18, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v16

    .line 250
    .local v16, "nameLength":I
    if-nez v16, :cond_7

    .line 251
    new-instance v18, Ljava/util/zip/ZipException;

    const-string v19, "Entry is not named"

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 239
    .end local v2    # "ceCompressedSize":J
    .end local v4    # "ceCompressionMethod":I
    .end local v5    # "ceLastModifiedDate":I
    .end local v6    # "ceCrc":J
    .end local v8    # "ceLastModifiedTime":I
    .end local v10    # "ceSize":J
    .end local v16    # "nameLength":I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 253
    .restart local v2    # "ceCompressedSize":J
    .restart local v4    # "ceCompressionMethod":I
    .restart local v5    # "ceLastModifiedDate":I
    .restart local v6    # "ceCrc":J
    .restart local v8    # "ceLastModifiedTime":I
    .restart local v10    # "ceSize":J
    .restart local v16    # "nameLength":I
    :cond_7
    const/16 v18, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v12

    .line 255
    .local v12, "extraLength":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->readString(I)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v8, v0, Ljava/util/zip/ZipEntry;->time:I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v5, v0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 260
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-eqz v18, :cond_8

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 265
    :cond_8
    if-lez v12, :cond_9

    .line 266
    new-array v9, v12, [B

    .line 267
    .local v9, "extraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v1, v12}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 270
    .end local v9    # "extraData":[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v0

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 299
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 300
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 302
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 306
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v4, :cond_6

    .line 307
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    long-to-int v0, v4

    .line 308
    .local v0, "csize":I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    if-ge v4, v0, :cond_0

    .line 311
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lt v4, v5, :cond_3

    .line 312
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 313
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-ne v4, v3, :cond_2

    .line 314
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->eof:Z

    goto :goto_0

    .line 317
    :cond_2
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 319
    :cond_3
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_5

    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int v3, v4, v5

    .line 320
    .local v3, "toRead":I
    :goto_1
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_4

    .line 321
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v3, v0, v4

    .line 323
    :cond_4
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 324
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 325
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 326
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .end local v3    # "toRead":I
    :cond_5
    move v3, p3

    .line 319
    goto :goto_1

    .line 329
    .end local v0    # "csize":I
    :cond_6
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 330
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->fill()V

    .line 331
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lez v4, :cond_7

    .line 332
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 337
    :cond_7
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 341
    .local v2, "read":I
    if-nez v2, :cond_8

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    :cond_8
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v3, v2

    .line 345
    goto/16 :goto_0

    .line 338
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
