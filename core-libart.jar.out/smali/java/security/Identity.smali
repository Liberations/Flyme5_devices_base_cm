.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 78
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 80
    :cond_0
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 5
    .param p0, "pk1"    # Ljava/security/PublicKey;
    .param p1, "pk2"    # Ljava/security/PublicKey;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "format1":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .local v1, "format2":Ljava/lang/String;
    if-eqz v1, :cond_1

    move v4, v3

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    .end local v1    # "format2":Ljava/lang/String;
    :cond_0
    :goto_2
    return v2

    .restart local v1    # "format2":Ljava/lang/String;
    :cond_1
    move v4, v2

    .line 117
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 123
    :cond_3
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .locals 3
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 92
    .local v0, "certPK":Ljava/security/PublicKey;
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "Cert\'s public key does not match Identity\'s public key"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 99
    :cond_1
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 102
    :cond_2
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/security/Certificate;

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    .line 161
    .local v0, "ret":[Ljava/security/Certificate;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 296
    if-ne p0, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    instance-of v2, p1, Ljava/security/Identity;

    if-nez v2, :cond_2

    .line 300
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 302
    check-cast v0, Ljava/security/Identity;

    .line 303
    .local v0, "i":Ljava/security/Identity;
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    :cond_3
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v1

    goto :goto_0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "hash":I
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_1
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .locals 3
    .param p1, "identity"    # Ljava/security/Identity;

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v2, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Certificate not found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 239
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    move-result-object v0

    .line 241
    .local v0, "i":Ljava/security/Identity;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 242
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "key already used in scope"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "i":Ljava/security/Identity;
    :cond_0
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 348
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0

    .line 347
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "detailed"    # Z

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method
