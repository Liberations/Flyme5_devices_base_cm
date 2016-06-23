.class public abstract Ljava/security/spec/EncodedKeySpec;
.super Ljava/lang/Object;
.source "EncodedKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final encodedKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "encodedKey"    # [B

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    .line 38
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 40
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 51
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 52
    return-object v0
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method
