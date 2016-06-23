.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private final key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x18

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 51
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    throw v0

    .line 53
    :cond_1
    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    .line 54
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 55
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x18

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_1

    .line 77
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    throw v0

    .line 79
    :cond_1
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    .line 80
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 81
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 109
    array-length v2, p0

    sub-int/2addr v2, p1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 110
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2}, Ljava/security/InvalidKeyException;-><init>()V

    throw v2

    .line 112
    :cond_0
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x18

    if-ge v1, v2, :cond_2

    .line 113
    aget-byte v0, p0, v1

    .line 114
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v0, 0x2

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x4

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x8

    shr-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x10

    shr-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x20

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x40

    shr-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v0, 0x80

    shr-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_1

    .line 117
    const/4 v2, 0x0

    .line 120
    .end local v0    # "b":I
    :goto_1
    return v2

    .line 112
    .restart local v0    # "b":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "b":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getKey()[B
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/4 v2, 0x0

    .line 89
    new-array v0, v3, [B

    .line 90
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    return-object v0
.end method
