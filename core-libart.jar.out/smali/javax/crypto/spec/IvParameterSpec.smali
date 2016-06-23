.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 48
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 49
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "iv"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 68
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 69
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 70
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 79
    .local v0, "res":[B
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    return-object v0
.end method
