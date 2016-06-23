.class public final Ljava/security/SignedObject;
.super Ljava/lang/Object;
.source "SignedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9ffbd682a3cd5ffL


# instance fields
.field private content:[B

.field private signature:[B

.field private thealgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .locals 3
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "signingKey"    # Ljava/security/PrivateKey;
    .param p3, "signingEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->content:[B

    .line 86
    invoke-virtual {p3, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 87
    invoke-virtual {p3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {p3, v2}, Ljava/security/Signature;->update([B)V

    .line 89
    invoke-virtual {p3}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->signature:[B

    .line 90
    return-void

    .line 83
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 46
    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 47
    .local v0, "tmp":[B
    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 48
    iput-object v0, p0, Ljava/security/SignedObject;->content:[B

    .line 49
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 50
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 51
    iput-object v0, p0, Ljava/security/SignedObject;->signature:[B

    .line 52
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 107
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    throw v1
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 120
    .local v0, "sig":[B
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 121
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Signature;)Z
    .locals 1
    .param p1, "verificationKey"    # Ljava/security/PublicKey;
    .param p2, "verificationEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 153
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 154
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
