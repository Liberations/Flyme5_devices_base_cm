.class public Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;
.super Ljava/security/SecureRandomSpi;
.source "SHA1PRNG_SecureRandomImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COUNTER_BASE:I = 0x0

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I = 0x0

.field private static devURandom:Ljava/io/FileInputStream; = null

.field private static myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl; = null

.field private static final serialVersionUID:J = 0x3f0091d1f89aebbL


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 50
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/urandom"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    .line 66
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    .line 68
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    .line 70
    new-array v1, v4, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    .line 72
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :array_0
    .array-data 4
        -0x80000000
        0x800000
        0x8000
        0x80
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x0
        0x28
        0x30
        0x38
    .end array-data

    .line 68
    :array_2
    .array-data 4
        0x0
        0x8
        0x10
        0x18
    .end array-data

    .line 70
    :array_3
    .array-data 4
        0x0
        0x18
        0x10
        0x8
    .end array-data

    .line 72
    :array_4
    .array-data 4
        -0x1
        0xffffff
        0xffff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    .line 168
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 170
    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    .line 173
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 177
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 178
    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 179
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 180
    iput v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 181
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 183
    return-void
.end method

.method private static getRandomBytes(I)[B
    .locals 6
    .param p0, "byteCount"    # I

    .prologue
    .line 548
    if-gtz p0, :cond_0

    .line 549
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too few bytes requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    .line 554
    .local v1, "originalPolicy":Ldalvik/system/BlockGuard$Policy;
    :try_start_0
    sget-object v3, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 555
    new-array v2, p0, [B

    .line 556
    .local v2, "result":[B
    sget-object v3, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->devURandom:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    return-object v2

    .line 558
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " random bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    throw v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v4, 0x51

    const/4 v5, 0x5

    .line 497
    const/16 v2, 0x57

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 498
    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 499
    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 501
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 502
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 503
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 504
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v4

    .line 506
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, v2, 0x2

    .line 508
    .local v1, "nRemaining":I
    iget v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 511
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_6

    .line 514
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    .line 520
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v6

    .line 521
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 522
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 523
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1f

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 526
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_3

    .line 527
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 531
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    add-int/lit8 v3, v0, 0x15

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 534
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_5

    .line 535
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 538
    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_6

    .line 539
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 543
    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 544
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {p1, v2, v3, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 545
    return-void
.end method

.method private updateSeed([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 199
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 200
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v3, 0x0

    .line 428
    .local v3, "intData":[I
    const/4 v6, 0x5

    .line 429
    .local v6, "only_hash":I
    const/16 v0, 0x1a

    .line 430
    .local v0, "hashes_and_frame":I
    const/16 v1, 0x2a

    .line 433
    .local v1, "hashes_and_frame_extra":I
    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 434
    iget-wide v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 435
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 436
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 438
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v4, v7, 0x2

    .line 440
    .local v4, "nRemaining":I
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 446
    add-int/lit8 v7, v4, 0x5

    new-array v3, v7, [I

    .line 448
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 449
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v4, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 486
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 487
    aget v7, v3, v2

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    .end local v2    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 458
    .local v5, "offset":I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x51

    aget v7, v7, v8

    const/16 v8, 0x30

    if-ge v7, v8, :cond_1

    .line 460
    add-int/lit8 v7, v4, 0x1a

    new-array v3, v7, [I

    .line 473
    :goto_2
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 474
    add-int/lit8 v5, v5, 0x10

    .line 476
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v8, 0x15

    invoke-static {v7, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 478
    add-int/2addr v5, v4

    .line 480
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 481
    add-int/lit8 v5, v5, 0x5

    .line 483
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    const/4 v9, 0x5

    invoke-static {v7, v8, v3, v5, v9}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 464
    :cond_1
    add-int/lit8 v7, v4, 0x2a

    new-array v3, v7, [I

    .line 466
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x10

    aget v7, v7, v8

    aput v7, v3, v5

    .line 467
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x11

    aget v8, v8, v9

    aput v8, v3, v7

    .line 468
    const/4 v7, 0x2

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1e

    aget v8, v8, v9

    aput v8, v3, v7

    .line 469
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1f

    aget v8, v8, v9

    aput v8, v3, v7

    .line 470
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 490
    .end local v5    # "offset":I
    .restart local v2    # "i":I
    :cond_2
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 491
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v9, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v9, v9, 0x14

    invoke-virtual {p1, v7, v8, v9}, Ljava/io/ObjectOutputStream;->write([BII)V

    .line 492
    return-void
.end method


# virtual methods
.method protected declared-synchronized engineGenerateSeed(I)[B
    .locals 3
    .param p1, "numBytes"    # I

    .prologue
    .line 247
    monitor-enter p0

    if-gez p1, :cond_0

    .line 248
    :try_start_0
    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 250
    :cond_0
    if-nez p1, :cond_1

    .line 251
    :try_start_1
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-object v0

    .line 254
    :cond_1
    :try_start_2
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    if-nez v1, :cond_2

    .line 255
    new-instance v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    .line 256
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineSetSeed([B)V

    .line 259
    :cond_2
    new-array v0, p1, [B

    .line 260
    .local v0, "myBytes":[B
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineNextBytes([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized engineNextBytes([B)V
    .locals 18
    .param p1, "bytes"    # [B

    .prologue
    .line 288
    monitor-enter p0

    const/4 v4, 0x7

    .line 290
    .local v4, "extrabytes":I
    if-nez p1, :cond_0

    .line 291
    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "bytes == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 294
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    if-nez v11, :cond_3

    const/4 v8, 0x0

    .line 297
    .local v8, "lastWord":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    if-nez v11, :cond_5

    .line 300
    const/16 v11, 0x14

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->getRandomBytes(I)[B

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    .line 301
    const/16 v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 305
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    if-nez v11, :cond_4

    const/4 v8, 0x0

    .line 344
    :cond_1
    :goto_1
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 346
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_8

    .line 422
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 294
    .end local v8    # "lastWord":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x7

    shr-int/lit8 v8, v11, 0x2

    goto :goto_0

    .line 305
    .restart local v8    # "lastWord":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x7

    shr-int/lit8 v8, v11, 0x2

    goto :goto_1

    .line 308
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x52

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    .line 326
    add-int/lit8 v5, v8, 0x3

    .local v5, "i":I
    :goto_3
    const/16 v11, 0x12

    if-ge v5, v11, :cond_6

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v12, 0x0

    aput v12, v11, v5

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 330
    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    const/4 v11, 0x3

    shl-long/2addr v12, v11

    const-wide/16 v14, 0x40

    add-long v2, v12, v14

    .line 334
    .local v2, "bits":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-ge v11, v12, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0xe

    const/16 v13, 0x20

    ushr-long v14, v2, v13

    long-to-int v13, v14

    aput v13, v11, v12

    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0xf

    const-wide/16 v14, -0x1

    and-long/2addr v14, v2

    long-to-int v13, v14

    aput v13, v11, v12

    .line 342
    :goto_4
    const/16 v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    goto/16 :goto_1

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v12, 0x13

    const/16 v13, 0x20

    ushr-long v14, v2, v13

    long-to-int v13, v14

    aput v13, v11, v12

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v12, 0x14

    const-wide/16 v14, -0x1

    and-long/2addr v14, v2

    long-to-int v13, v14

    aput v13, v11, v12

    goto :goto_4

    .line 350
    .end local v2    # "bits":J
    .end local v5    # "i":I
    :cond_8
    const/4 v10, 0x0

    .line 353
    .local v10, "nextByteToReturn":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v11, v11, 0x14

    move-object/from16 v0, p1

    array-length v12, v0

    sub-int/2addr v12, v10

    if-ge v11, v12, :cond_d

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v9, v11, 0x14

    .line 356
    .local v9, "n":I
    :goto_5
    if-lez v9, :cond_9

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 358
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v11, v9

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 359
    add-int/2addr v10, v9

    .line 362
    :cond_9
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v10, v11, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    and-int/lit8 v9, v11, 0x3

    .line 368
    :cond_a
    if-nez v9, :cond_e

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const/16 v14, 0x20

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v11, v8

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x2

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 380
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_b

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v14, 0x10

    aget v13, v13, v14

    aput v13, v11, v12

    .line 382
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v12, 0x6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v14, 0x11

    aget v13, v13, v14

    aput v13, v11, v12

    .line 385
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_c

    .line 389
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v14, 0x15

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v11}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v12, 0x15

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy([II[III)V

    .line 396
    :cond_c
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 398
    const/4 v6, 0x0

    .line 399
    .local v6, "j":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    const/4 v11, 0x5

    if-ge v5, v11, :cond_f

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v5, 0x52

    aget v7, v11, v12

    .line 401
    .local v7, "k":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    ushr-int/lit8 v12, v7, 0x18

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x1

    ushr-int/lit8 v13, v7, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x2

    ushr-int/lit8 v13, v7, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 404
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v12, v6, 0x3

    int-to-byte v13, v7

    aput-byte v13, v11, v12

    .line 405
    add-int/lit8 v6, v6, 0x4

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 353
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v9    # "n":I
    :cond_d
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int v9, v11, v10

    goto/16 :goto_5

    .line 376
    .restart local v9    # "n":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v12, v11, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    long-to-int v13, v14

    or-int/2addr v12, v13

    aput v12, v11, v8

    .line 377
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v12, v8, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    aget v13, v13, v9

    shl-long/2addr v14, v13

    sget-object v13, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    goto/16 :goto_6

    .line 408
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_f
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 409
    const/16 v11, 0x14

    move-object/from16 v0, p1

    array-length v12, v0

    sub-int/2addr v12, v10

    if-ge v11, v12, :cond_11

    const/16 v6, 0x14

    .line 412
    :goto_8
    if-lez v6, :cond_10

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 414
    add-int/2addr v10, v6

    .line 415
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 418
    :cond_10
    move-object/from16 v0, p1

    array-length v11, v0

    if-lt v10, v11, :cond_a

    goto/16 :goto_2

    .line 409
    :cond_11
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v6, v11, v10

    goto :goto_8
.end method

.method protected declared-synchronized engineSetSeed([B)V
    .locals 5
    .param p1, "seed"    # [B

    .prologue
    .line 216
    monitor-enter p0

    if-nez p1, :cond_0

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 224
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 226
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_2
    monitor-exit p0

    return-void
.end method
