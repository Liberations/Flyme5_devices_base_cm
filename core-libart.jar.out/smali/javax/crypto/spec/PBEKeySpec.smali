.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final iterationCount:I

.field private final keyLength:I

.field private password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 3
    .param p1, "password"    # [C

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 50
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 51
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 52
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 53
    return-void

    .line 47
    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 48
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    if-gtz p3, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    if-nez p1, :cond_3

    .line 127
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 132
    :goto_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 133
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 134
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 135
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 136
    return-void

    .line 129
    :cond_3
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 130
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public constructor <init>([C[BII)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    if-gtz p3, :cond_2

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    if-gtz p4, :cond_3

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyLength <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    if-nez p1, :cond_4

    .line 89
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 94
    :goto_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 95
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 96
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 97
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 98
    return-void

    .line 91
    :cond_4
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 92
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method


# virtual methods
.method public final clearPassword()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 144
    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The password has been cleared"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 158
    .local v0, "result":[C
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 159
    return-object v0
.end method

.method public final getSalt()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-nez v1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 173
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method
