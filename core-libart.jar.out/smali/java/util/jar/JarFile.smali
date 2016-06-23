.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileEnumerator;,
        Ljava/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestBytes:[B

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 203
    invoke-static {p0, p2}, Ljava/util/jar/JarFile;->readMetaEntries(Ljava/util/zip/ZipFile;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 213
    .local v0, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    if-eqz p2, :cond_0

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 217
    new-instance v2, Ljava/util/jar/Manifest;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1, v3}, Ljava/util/jar/Manifest;-><init>([BZ)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 218
    new-instance v1, Ljava/util/jar/JarVerifier;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-direct {v1, v2, v3, v0}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    iput-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 221
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 251
    return-void
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static getMetaEntries(Ljava/util/zip/ZipFile;)Ljava/util/List;
    .locals 5
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 429
    .local v0, "allEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 431
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "META-INF/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 433
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v1
.end method

.method static readMetaEntries(Ljava/util/zip/ZipFile;Z)Ljava/util/HashMap;
    .locals 8
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "verificationRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p0}, Ljava/util/jar/JarFile;->getMetaEntries(Ljava/util/zip/ZipFile;)Ljava/util/List;

    move-result-object v4

    .line 326
    .local v4, "metaEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v5, "metaEntriesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 329
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "entryName":Ljava/lang/String;
    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    if-nez p1, :cond_0

    .line 356
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 344
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "entryName":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_0

    .line 346
    const-string v6, ".SF"

    invoke-static {v1, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".DSA"

    invoke-static {v1, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".RSA"

    invoke-static {v1, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".EC"

    invoke-static {v1, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 351
    .local v3, "is":Ljava/io/InputStream;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 450
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/util/jar/JarFile$JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/jar/JarFile$JarFileEnumerator;-><init>(Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 415
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 418
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v0

    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v1, Ljava/util/jar/JarEntry;

    invoke-direct {v1, v0, p0}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 379
    :cond_0
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    .line 382
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->removeChunks()V

    .line 384
    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v3

    if-nez v3, :cond_1

    .line 385
    iput-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 390
    :cond_1
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 391
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_3

    move-object v1, v2

    .line 401
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v1

    .line 394
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_3
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 397
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    .line 398
    .local v0, "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    if-eqz v0, :cond_2

    .line 401
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz v1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarFile has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_2

    .line 295
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 309
    :cond_1
    :goto_0
    return-object v0

    .line 299
    :cond_2
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Ljava/util/jar/Manifest;

    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/jar/Manifest;-><init>([BZ)V

    iput-object v1, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 307
    iput-object v0, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    .line 309
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    goto :goto_0
.end method
