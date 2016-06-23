.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field private attributes:Ljava/util/jar/Attributes;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private isFactoryChecked:Z

.field final parentJar:Ljava/util/jar/JarFile;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .locals 1
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 86
    iget-object v0, p1, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    .line 87
    iget-object v0, p1, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 88
    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "parentJar"    # Ljava/util/jar/JarFile;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 74
    iput-object p2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    .line 75
    return-void
.end method

.method private addCodeSigner(Ljava/util/ArrayList;[Ljava/security/cert/Certificate;)V
    .locals 7
    .param p2, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/CodeSigner;",
            ">;[",
            "Ljava/security/cert/Certificate;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v6, 0x1

    .line 212
    move-object v0, p2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 214
    .local v1, "cert":Ljava/security/cert/Certificate;
    instance-of v5, v1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 240
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    :goto_1
    return-void

    .line 212
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_2
    const/4 v2, 0x0

    .line 220
    .local v2, "certPath":Ljava/security/cert/CertPath;
    iget-boolean v5, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    if-nez v5, :cond_3

    .line 222
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    iput-object v5, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iput-boolean v6, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 229
    :cond_3
    :goto_2
    iget-object v5, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    if-eqz v5, :cond_0

    .line 233
    :try_start_1
    iget-object v5, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 237
    :goto_3
    if-eqz v2, :cond_0

    .line 238
    new-instance v5, Ljava/security/CodeSigner;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :catch_0
    move-exception v5

    .line 226
    iput-boolean v6, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    goto :goto_2

    :catchall_0
    move-exception v5

    iput-boolean v6, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    throw v5

    .line 234
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method private getCodeSigners([[Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;
    .locals 7
    .param p1, "certChains"    # [[Ljava/security/cert/Certificate;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v5, 0x0

    .line 208
    :goto_0
    return-object v5

    .line 200
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v1, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    move-object v0, p1

    .local v0, "arr$":[[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 203
    .local v2, "chain":[Ljava/security/cert/Certificate;
    invoke-direct {p0, v1, v2}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;[Ljava/security/cert/Certificate;)V

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/security/CodeSigner;

    .line 207
    .local v5, "tmp":[Ljava/security/CodeSigner;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 109
    :goto_0
    return-object v1

    .line 105
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 106
    .local v0, "manifest":Ljava/util/jar/Manifest;
    if-nez v0, :cond_2

    .line 107
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    goto :goto_0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v9, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v9, :cond_1

    .line 153
    :cond_0
    return-object v2

    .line 129
    :cond_1
    iget-object v9, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iget-object v7, v9, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 130
    .local v7, "jarVerifier":Ljava/util/jar/JarVerifier;
    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 135
    .local v1, "certChains":[[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "count":I
    move-object v0, v1

    .local v0, "arr$":[[Ljava/security/cert/Certificate;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v3, v0, v6

    .line 142
    .local v3, "chain":[Ljava/security/cert/Certificate;
    array-length v9, v3

    add-int/2addr v4, v9

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "chain":[Ljava/security/cert/Certificate;
    :cond_2
    new-array v2, v4, [Ljava/security/cert/Certificate;

    .line 147
    .local v2, "certs":[Ljava/security/cert/Certificate;
    const/4 v5, 0x0

    .line 148
    .local v5, "i":I
    move-object v0, v1

    array-length v8, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v3, v0, v6

    .line 149
    .restart local v3    # "chain":[Ljava/security/cert/Certificate;
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v9, v3

    add-int/2addr v5, v9

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iget-object v0, v2, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 181
    .local v0, "jarVerifier":Ljava/util/jar/JarVerifier;
    if-eqz v0, :cond_0

    .line 185
    iget-object v2, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/jar/JarEntry;->getCodeSigners([[Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 188
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v1}, [Ljava/security/CodeSigner;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    goto :goto_0
.end method

.method setAttributes(Ljava/util/jar/Attributes;)V
    .locals 0
    .param p1, "attrib"    # Ljava/util/jar/Attributes;

    .prologue
    .line 157
    iput-object p1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 158
    return-void
.end method
