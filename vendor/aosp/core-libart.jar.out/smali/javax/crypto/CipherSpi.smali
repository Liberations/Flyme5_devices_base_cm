.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 517
    if-nez p1, :cond_0

    .line 518
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 520
    :cond_0
    if-nez p2, :cond_1

    .line 521
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 523
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 524
    .local v5, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 526
    .local v3, "limit":I
    sub-int v7, v3, v5

    if-gtz v7, :cond_2

    .line 550
    :goto_0
    return v6

    .line 532
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 533
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 534
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 535
    .local v4, "offset":I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .line 536
    .local v1, "bOutput":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    .end local v4    # "offset":I
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 543
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 538
    .end local v0    # "bInput":[B
    .end local v1    # "bOutput":[B
    :cond_3
    sub-int v7, v3, v5

    new-array v0, v7, [B

    .line 539
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 540
    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .restart local v1    # "bOutput":[B
    goto :goto_1

    .line 546
    :cond_4
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    array-length v6, v1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_0
    if-nez p2, :cond_1

    .line 337
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 339
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 340
    .local v5, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 341
    .local v3, "limit":I
    sub-int v7, v3, v5

    if-gtz v7, :cond_3

    .line 367
    :cond_2
    :goto_0
    return v6

    .line 346
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 348
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 349
    .local v4, "offset":I
    add-int v7, v4, v5

    sub-int v8, v3, v5

    invoke-virtual {p0, v0, v7, v8}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .line 350
    .local v1, "bOutput":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    .end local v4    # "offset":I
    :goto_1
    if-eqz v1, :cond_2

    .line 359
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 360
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 352
    .end local v0    # "bInput":[B
    .end local v1    # "bOutput":[B
    :cond_4
    sub-int v7, v3, v5

    new-array v0, v7, [B

    .line 353
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 354
    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .restart local v1    # "bOutput":[B
    goto :goto_1

    .line 363
    :cond_5
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    array-length v6, v1

    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "input == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 414
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 415
    .local v4, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 416
    .local v2, "limit":I
    sub-int v5, v2, v4

    if-gtz v5, :cond_1

    .line 431
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 421
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 422
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 423
    .local v3, "offset":I
    add-int v5, v3, v4

    sub-int v6, v2, v4

    invoke-virtual {p0, v0, v5, v6}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    .line 424
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 426
    .end local v0    # "bInput":[B
    .end local v3    # "offset":I
    :cond_2
    sub-int v1, v2, v4

    .line 427
    .local v1, "len":I
    new-array v0, v1, [B

    .line 428
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 429
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    goto :goto_0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This cipher does not support Authenticated Encryption with Additional Data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
