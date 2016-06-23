.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field private static rng:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private transient clockSequence:I

.field private transient hash:I

.field private leastSigBits:J

.field private mostSigBits:J

.field private transient node:J

.field private transient timestamp:J

.field private transient variant:I

.field private transient version:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "mostSigBits"    # J
    .param p3, "leastSigBits"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    .line 68
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    .line 69
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 70
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 22
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "uuid == null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 185
    :cond_0
    const-string v17, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 187
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid UUID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 190
    :cond_1
    const/16 v17, 0x0

    aget-object v17, v16, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 191
    .local v8, "m1":J
    const/16 v17, 0x1

    aget-object v17, v16, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 192
    .local v10, "m2":J
    const/16 v17, 0x2

    aget-object v17, v16, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 194
    .local v12, "m3":J
    const/16 v17, 0x3

    aget-object v17, v16, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 195
    .local v4, "lsb1":J
    const/16 v17, 0x4

    aget-object v17, v16, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 197
    .local v6, "lsb2":J
    const/16 v17, 0x20

    shl-long v18, v8, v17

    const/16 v17, 0x10

    shl-long v20, v10, v17

    or-long v18, v18, v20

    or-long v14, v18, v12

    .line 198
    .local v14, "msb":J
    const/16 v17, 0x30

    shl-long v18, v4, v17

    or-long v2, v18, v6

    .line 200
    .local v2, "lsb":J
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v17
.end method

.method private init()V
    .locals 13

    .prologue
    .line 79
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v1, v8

    .line 80
    .local v1, "msbHash":I
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v10, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v0, v8

    .line 81
    .local v0, "lsbHash":I
    xor-int v8, v1, v0

    iput v8, p0, Ljava/util/UUID;->hash:I

    .line 84
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x8000000000000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Ljava/util/UUID;->variant:I

    .line 96
    :goto_0
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/32 v10, 0xf000

    and-long/2addr v8, v10

    const/16 v10, 0xc

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->version:I

    .line 98
    iget v8, p0, Ljava/util/UUID;->variant:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    iget v8, p0, Ljava/util/UUID;->version:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 113
    :goto_1
    return-void

    .line 87
    :cond_0
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 89
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, -0x2000000000000000L    # -2.6815615859885194E154

    and-long/2addr v8, v10

    const/16 v10, 0x3d

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_0

    .line 92
    :cond_1
    const/4 v8, 0x2

    iput v8, p0, Ljava/util/UUID;->variant:I

    goto :goto_0

    .line 103
    :cond_2
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    const/16 v10, 0x20

    ushr-long v4, v8, v10

    .line 104
    .local v4, "timeLow":J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide v10, 0xffff0000L

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long v6, v8, v10

    .line 105
    .local v6, "timeMid":J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v10, 0xfff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    shl-long v2, v8, v10

    .line 106
    .local v2, "timeHigh":J
    or-long v8, v4, v6

    or-long/2addr v8, v2

    iput-wide v8, p0, Ljava/util/UUID;->timestamp:J

    .line 109
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v10, 0x3fff000000000000L    # 1.9375

    and-long/2addr v8, v10

    const/16 v10, 0x30

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Ljava/util/UUID;->clockSequence:I

    .line 112
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v10, 0xffffffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/UUID;->node:J

    goto :goto_1
.end method

.method private static makeUuid([BI)Ljava/util/UUID;
    .locals 7
    .param p0, "hash"    # [B
    .param p1, "version"    # I

    .prologue
    .line 156
    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v2

    .line 157
    .local v2, "msb":J
    const/16 v4, 0x8

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    .line 159
    .local v0, "lsb":J
    const-wide/32 v4, -0xf001

    and-long/2addr v2, v4

    .line 160
    int-to-long v4, p1

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 163
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v0, v4

    .line 164
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v0, v4

    .line 165
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .locals 4
    .param p0, "name"    # [B

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 149
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 150
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 3

    .prologue
    .line 123
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 125
    .local v0, "data":[B
    const-class v2, Ljava/util/UUID;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    .line 129
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;

    move-result-object v1

    return-object v1

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 448
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    .line 449
    return-void
.end method


# virtual methods
.method public clockSequence()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget v0, p0, Ljava/util/UUID;->clockSequence:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 319
    if-ne p1, p0, :cond_1

    move v0, v2

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    iget-wide v4, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v6, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 324
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 329
    :cond_2
    iget-wide v4, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v6, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 330
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 335
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v2

    .line 355
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 356
    goto :goto_0

    .line 359
    :cond_2
    instance-of v3, p1, Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 363
    check-cast v0, Ljava/util/UUID;

    .line 365
    .local v0, "that":Ljava/util/UUID;
    iget-wide v4, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v6, v0, Ljava/util/UUID;->leastSigBits:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v6, v0, Ljava/util/UUID;->mostSigBits:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Ljava/util/UUID;->hash:I

    return v0
.end method

.method public node()J
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->node:J

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Ljava/util/UUID;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 272
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x10

    const/16 v8, 0x2d

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v6, p0, Ljava/util/UUID;->mostSigBits:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "msbStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_0

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v1, v5, 0x10

    .line 412
    .local v1, "diff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 413
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 418
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    iget-wide v6, p0, Ljava/util/UUID;->leastSigBits:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "lsbStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_1

    .line 422
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v1, v5, 0x10

    .line 423
    .restart local v1    # "diff":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 424
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const/16 v5, 0x17

    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public variant()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Ljava/util/UUID;->variant:I

    return v0
.end method

.method public version()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Ljava/util/UUID;->version:I

    return v0
.end method
