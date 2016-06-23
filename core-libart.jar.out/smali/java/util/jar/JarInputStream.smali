.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private currentJarEntry:Ljava/util/jar/JarEntry;

.field private isMeta:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private pendingJarEntry:Ljava/util/jar/JarEntry;

.field private verStream:Ljava/io/OutputStream;

.field private verified:Z

.field private verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    .line 71
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 72
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    .line 73
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    .line 75
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 82
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    .line 85
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    invoke-static {p0}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 87
    .local v0, "manifestBytes":[B
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-direct {v2, v0, p2}, Ljava/util/jar/Manifest;-><init>([BZ)V

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    .line 88
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 90
    if-eqz p2, :cond_2

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v1, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Ljava/util/jar/JarVerifier;

    const-string v3, "JarInputStream"

    iget-object v4, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-direct {v2, v3, v4, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 99
    .end local v0    # "manifestBytes":[B
    .end local v1    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    .line 100
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    goto :goto_0
.end method


# virtual methods
.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    goto :goto_0
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "entry":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarEntry;->setAttributes(Ljava/util/jar/Attributes;)V

    .line 249
    :cond_0
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 204
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    .line 205
    .local v1, "pending":Ljava/util/jar/JarEntry;
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    .line 206
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    .line 226
    .end local v1    # "pending":Ljava/util/jar/JarEntry;
    :goto_0
    return-object v1

    .line 210
    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    .line 211
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_1

    move-object v1, v3

    .line 212
    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    .line 217
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    if-eqz v2, :cond_4

    .line 218
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    .line 219
    .local v0, "entrySize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    if-lez v0, :cond_3

    .end local v0    # "entrySize":I
    :goto_1
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    .line 225
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    .line 226
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    goto :goto_0

    .line 219
    .restart local v0    # "entrySize":I
    :cond_3
    const/16 v0, 0x2000

    goto :goto_1

    .line 221
    .end local v0    # "entrySize":I
    :cond_4
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    goto :goto_2
.end method

.method public getNextJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 154
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    if-nez v3, :cond_1

    move v1, v2

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    .line 165
    .local v1, "r":I
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Ljava/util/jar/JarInputStream;->verified:Z

    if-nez v3, :cond_0

    .line 166
    if-ne v1, v2, :cond_3

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    .line 170
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    if-eqz v2, :cond_2

    .line 171
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 174
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 177
    throw v0

    .line 180
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
