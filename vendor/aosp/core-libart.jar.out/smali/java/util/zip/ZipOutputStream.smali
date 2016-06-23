.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final ZIP_VERSION_2_0:I = 0x14


# instance fields
.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private commentBytes:[B

.field private compressionLevel:I

.field private final crc:Ljava/util/zip/CRC32;

.field private curOffset:I

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private defaultCompressionMethod:I

.field private final entries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entryCommentBytes:[B

.field private nameBytes:[B

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 103
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    .line 78
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    .line 80
    iput v2, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    .line 86
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 88
    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 104
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    return-void
.end method

.method private checkSizeIsWithinShort(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 432
    array-length v0, p2

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long in UTF-8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    return-void
.end method

.method private writeLong(Ljava/io/OutputStream;J)J
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 392
    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 393
    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 394
    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 395
    return-wide p2
.end method

.method private writeShort(Ljava/io/OutputStream;I)I
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 400
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 401
    return p2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 118
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 119
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 122
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x14

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkOpen()V

    .line 133
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v3, :cond_0

    .line 207
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 137
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 141
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-nez v3, :cond_3

    .line 142
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v6, v3, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 143
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v3, Ljava/util/zip/CRC32;->tbytes:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 146
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_3
    const/16 v3, 0x1e

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 152
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/lit8 v3, v3, 0x10

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 154
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v4, 0x8074b50

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 155
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    iput-wide v6, v4, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v3, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 156
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v4, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-direct {p0, v3, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 157
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v4, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v3, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 161
    :cond_4
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    .line 165
    .local v0, "flags":I
    :goto_1
    or-int/lit16 v0, v0, 0x800

    .line 166
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v4, 0x2014b50    # 1.6619997E-316

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 167
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 168
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 169
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 170
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 171
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 172
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 173
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 174
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 175
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 176
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 181
    :goto_2
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    array-length v4, v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 182
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_9

    .line 183
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v4, v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 188
    :goto_3
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 189
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 190
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 191
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 192
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 193
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 195
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    :cond_5
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    .line 199
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    array-length v2, v2

    if-lez v2, :cond_6

    .line 200
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    .line 203
    :cond_6
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 204
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 205
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    .line 206
    iput-boolean v1, p0, Ljava/util/zip/ZipOutputStream;->done:Z

    goto/16 :goto_0

    .end local v0    # "flags":I
    :cond_7
    move v0, v2

    .line 161
    goto/16 :goto_1

    .line 178
    .restart local v0    # "flags":I
    :cond_8
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v5, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 179
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v4, v3, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto/16 :goto_2

    .line 185
    :cond_9
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto/16 :goto_3
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_1

    .line 247
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "No entries"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 231
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 233
    .local v0, "cdirSize":I
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 234
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 235
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 236
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 237
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 238
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 239
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 240
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 241
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    array-length v1, v1

    if-lez v1, :cond_4

    .line 242
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 12
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    .line 262
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    .line 268
    .local v1, "method":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 269
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    .line 273
    :cond_1
    if-nez v1, :cond_6

    .line 274
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    .line 275
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 279
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_4

    .line 280
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "STORED entry missing CRC"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 277
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_5

    .line 283
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "STORED entry missing size"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_5
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 286
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "STORED entry size/compressed size mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_6
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkOpen()V

    .line 292
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    iget-object v4, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    new-instance v2, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_7
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_8

    .line 297
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "Too many entries for the zip file format\'s 16-bit entry count"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_8
    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iput-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 300
    const-string v3, "Name"

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    .line 301
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    .line 302
    iget-object v3, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 303
    iget-object v3, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iput-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    .line 306
    const-string v3, "Comment"

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    .line 309
    :cond_9
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    invoke-virtual {v3, v4}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 310
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 312
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 313
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    if-nez v1, :cond_c

    move v0, v2

    .line 320
    .local v0, "flags":I
    :goto_1
    or-int/lit16 v0, v0, 0x800

    .line 321
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v4, 0x4034b50

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 322
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/16 v4, 0x14

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 323
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 324
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 325
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_a

    .line 326
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 328
    :cond_a
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 329
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 331
    if-nez v1, :cond_d

    .line 332
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 333
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 334
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 340
    :goto_2
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    array-length v4, v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 341
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_e

    .line 342
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 346
    :goto_3
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 347
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_b

    .line 348
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 350
    :cond_b
    return-void

    .line 317
    .end local v0    # "flags":I
    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 336
    .restart local v0    # "flags":I
    :cond_d
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 337
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 338
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto :goto_2

    .line 344
    :cond_e
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_3
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 363
    .local v0, "newCommentBytes":[B
    const-string v1, "Comment"

    invoke-direct {p0, v1, v0}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    .line 364
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 372
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    .line 376
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .prologue
    .line 383
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 384
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

    .line 386
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    .line 387
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 413
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No active entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 422
    :goto_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 423
    return-void

    .line 420
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_0
.end method
