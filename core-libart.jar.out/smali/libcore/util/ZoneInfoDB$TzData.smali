.class public Llibcore/util/ZoneInfoDB$TzData;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TzData"
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1


# instance fields
.field private byteOffsets:[I

.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Llibcore/util/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ids:[Ljava/lang/String;

.field private mappedFile:Llibcore/io/MemoryMappedFile;

.field private rawUtcOffsetsCache:[I

.field private version:Ljava/lang/String;

.field private zoneTab:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 8
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v4, Llibcore/util/ZoneInfoDB$TzData$1;

    invoke-direct {v4, p0, v7}, Llibcore/util/ZoneInfoDB$TzData$1;-><init>(Llibcore/util/ZoneInfoDB$TzData;I)V

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    .line 93
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 94
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Llibcore/util/ZoneInfoDB$TzData;->loadData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    .end local v3    # "path":Ljava/lang/String;
    :goto_1
    return-void

    .line 93
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    const-string v4, "Couldn\'t find any tzdata!"

    invoke-static {v4}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 103
    const-string v4, "missing"

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    .line 104
    const-string v4, "# Emergency fallback data.\n"

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    .line 105
    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "GMT"

    aput-object v6, v4, v5

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    .line 106
    new-array v4, v7, [I

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    iput-object v4, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    goto :goto_1
.end method

.method static synthetic access$000(Llibcore/util/ZoneInfoDB$TzData;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfoDB$TzData;

    .prologue
    .line 46
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/util/ZoneInfoDB$TzData;)Llibcore/io/MemoryMappedFile;
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfoDB$TzData;

    .prologue
    .line 46
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    return-object v0
.end method

.method static synthetic access$200(Llibcore/util/ZoneInfoDB$TzData;)[I
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfoDB$TzData;

    .prologue
    .line 46
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    return-object v0
.end method

.method private declared-synchronized getRawUtcOffsets()[I
    .locals 4

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-object v1

    .line 226
    :cond_0
    :try_start_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/ZoneInfo;

    invoke-virtual {v1}, Llibcore/util/ZoneInfo;->getRawOffset()I

    move-result v1

    aput v1, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private loadData(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-static {p1}, Llibcore/io/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;

    move-result-object v3

    iput-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->readHeader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    const/4 v2, 0x1

    .line 122
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "errnoException":Landroid/system/ErrnoException;
    goto :goto_0

    .line 118
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tzdata file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was present but invalid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readHeader()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v7, 0x0

    .line 131
    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v2

    .line 133
    .local v2, "it":Llibcore/io/BufferIterator;
    const/16 v6, 0xc

    new-array v4, v6, [B

    .line 134
    .local v4, "tzdata_version":[B
    array-length v6, v4

    invoke-virtual {v2, v4, v7, v6}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 135
    new-instance v3, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v7, v9, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 136
    .local v3, "magic":Ljava/lang/String;
    const-string v6, "tzdata"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    aget-byte v6, v4, v6

    if-eqz v6, :cond_1

    .line 137
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad tzdata magic: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 139
    :cond_1
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v9, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    .line 141
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v1

    .line 142
    .local v1, "index_offset":I
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    .line 143
    .local v0, "data_offset":I
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    .line 145
    .local v5, "zonetab_offset":I
    invoke-direct {p0, v2, v1, v0}, Llibcore/util/ZoneInfoDB$TzData;->readIndex(Llibcore/io/BufferIterator;II)V

    .line 146
    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->size()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v5

    invoke-direct {p0, v2, v5, v6}, Llibcore/util/ZoneInfoDB$TzData;->readZoneTab(Llibcore/io/BufferIterator;II)V

    .line 147
    return-void
.end method

.method private readIndex(Llibcore/io/BufferIterator;II)V
    .locals 20
    .param p1, "it"    # Llibcore/io/BufferIterator;
    .param p2, "indexOffset"    # I
    .param p3, "dataOffset"    # I

    .prologue
    .line 157
    invoke-virtual/range {p1 .. p2}, Llibcore/io/BufferIterator;->seek(I)V

    .line 160
    const/16 v4, 0x28

    .line 162
    .local v4, "SIZEOF_TZNAME":I
    const/4 v3, 0x4

    .line 164
    .local v3, "SIZEOF_TZINT":I
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 165
    .local v8, "idBytes":[B
    sub-int v13, p3, p2

    .line 166
    .local v13, "indexSize":I
    div-int/lit8 v6, v13, 0x34

    .line 168
    .local v6, "entryCount":I
    mul-int/lit8 v17, v6, 0x28

    move/from16 v0, v17

    new-array v9, v0, [C

    .line 169
    .local v9, "idChars":[C
    new-array v10, v6, [I

    .line 170
    .local v10, "idEnd":[I
    const/4 v11, 0x0

    .line 172
    .local v11, "idOffset":I
    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    .line 174
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 175
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v8, v1, v2}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v18

    aput v18, v17, v7

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    move-object/from16 v17, v0

    aget v18, v17, v7

    add-int v18, v18, p3

    aput v18, v17, v7

    .line 180
    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v16

    .line 181
    .local v16, "length":I
    const/16 v17, 0x2c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 182
    new-instance v17, Ljava/lang/AssertionError;

    const-string v18, "length in index file < sizeof(tzhead)"

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 184
    :cond_0
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/BufferIterator;->skip(I)V

    .line 187
    array-length v15, v8

    .line 188
    .local v15, "len":I
    const/4 v14, 0x0

    .local v14, "j":I
    move v12, v11

    .end local v11    # "idOffset":I
    .local v12, "idOffset":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 189
    aget-byte v17, v8, v14

    if-nez v17, :cond_2

    .line 195
    :cond_1
    aput v12, v10, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12    # "idOffset":I
    .restart local v11    # "idOffset":I
    goto :goto_0

    .line 192
    .end local v11    # "idOffset":I
    .restart local v12    # "idOffset":I
    :cond_2
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "idOffset":I
    .restart local v11    # "idOffset":I
    aget-byte v17, v8, v14

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v9, v12

    .line 188
    add-int/lit8 v14, v14, 0x1

    move v12, v11

    .end local v11    # "idOffset":I
    .restart local v12    # "idOffset":I
    goto :goto_1

    .line 200
    .end local v12    # "idOffset":I
    .end local v14    # "j":I
    .end local v15    # "len":I
    .end local v16    # "length":I
    .restart local v11    # "idOffset":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v9, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 201
    .local v5, "allIds":Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    .line 202
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v7, :cond_4

    const/16 v17, 0x0

    :goto_3
    aget v19, v10, v7

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v18, v7

    .line 202
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 203
    :cond_4
    add-int/lit8 v17, v7, -0x1

    aget v17, v10, v17

    goto :goto_3

    .line 205
    :cond_5
    return-void
.end method

.method private readZoneTab(Llibcore/io/BufferIterator;II)V
    .locals 5
    .param p1, "it"    # Llibcore/io/BufferIterator;
    .param p2, "zoneTabOffset"    # I
    .param p3, "zoneTabSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 150
    new-array v0, p3, [B

    .line 151
    .local v0, "bytes":[B
    invoke-virtual {p1, p2}, Llibcore/io/BufferIterator;->seek(I)V

    .line 152
    array-length v1, v0

    invoke-virtual {p1, v0, v4, v1}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 153
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public getAvailableIDs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableIDs(I)[Ljava/lang/String;
    .locals 4
    .param p1, "rawUtcOffset"    # I

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->getRawUtcOffsets()[I

    move-result-object v2

    .line 214
    .local v2, "rawUtcOffsets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 215
    aget v3, v2, v0

    if-ne v3, p1, :cond_0

    .line 216
    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    return-object v0
.end method

.method public makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/util/ZoneInfo;

    .line 249
    .local v0, "zoneInfo":Llibcore/util/ZoneInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/ZoneInfo;

    goto :goto_0
.end method
