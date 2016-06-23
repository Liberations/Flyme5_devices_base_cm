.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final pathSeparator:Ljava/lang/String;

.field public static final pathSeparatorChar:C

.field public static final separator:Ljava/lang/String;

.field public static final separatorChar:C

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL

.field private static final tempFileRandom:Ljava/util/Random;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    .line 107
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    .line 108
    const-string v0, "path.separator"

    const-string v1, ":"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 109
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    if-nez p2, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    :cond_1
    invoke-static {p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {p1, p2}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    .line 178
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private static native canonicalizePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static checkURI(Ljava/net/URI;)V
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not hierarchical: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected file scheme in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "rawPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected non-empty path in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found authority in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_5
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found query in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found fragment in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_7
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 993
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "prefix must be at least 3 characters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 995
    :cond_0
    if-nez p1, :cond_1

    .line 996
    const-string p1, ".tmp"

    .line 998
    :cond_1
    move-object v2, p2

    .line 999
    .local v2, "tmpDirFile":Ljava/io/File;
    if-nez v2, :cond_2

    .line 1000
    const-string v3, "java.io.tmpdir"

    const-string v4, "."

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "tmpDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "tmpDirFile":Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .end local v1    # "tmpDir":Ljava/lang/String;
    .restart local v2    # "tmpDirFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1006
    .local v0, "result":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1007
    return-object v0
.end method

.method private doAccess(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 283
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doChmod(IZ)Z
    .locals 5
    .param p1, "mask"    # I
    .param p2, "set"    # Z

    .prologue
    .line 706
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 707
    .local v2, "sb":Landroid/system/StructStat;
    if-eqz p2, :cond_0

    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    or-int v1, v3, p1

    .line 708
    .local v1, "newMode":I
    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    .line 709
    const/4 v3, 0x1

    .line 711
    .end local v1    # "newMode":I
    .end local v2    # "sb":Landroid/system/StructStat;
    :goto_1
    return v3

    .line 707
    .restart local v2    # "sb":Landroid/system/StructStat;
    :cond_0
    iget v3, v2, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v4, p1, -0x1

    and-int v1, v3, v4

    goto :goto_0

    .line 710
    .end local v2    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 711
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p1, "filenames"    # [Ljava/lang/String;

    .prologue
    .line 839
    if-nez p1, :cond_1

    .line 840
    const/4 v2, 0x0

    .line 847
    :cond_0
    return-object v2

    .line 842
    :cond_1
    array-length v0, p1

    .line 843
    .local v0, "count":I
    new-array v2, v0, [Ljava/io/File;

    .line 844
    .local v2, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 845
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "origPath"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "lastWasSlash":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 186
    .local v6, "newPath":[C
    array-length v3, v6

    .line 187
    .local v3, "length":I
    const/4 v4, 0x0

    .line 188
    .local v4, "newLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "newLength":I
    .local v5, "newLength":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 189
    aget-char v0, v6, v1

    .line 190
    .local v0, "ch":C
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_0

    .line 191
    if-nez v2, :cond_4

    .line 192
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    sget-char v7, Ljava/io/File;->separatorChar:C

    aput-char v7, v6, v5

    .line 193
    const/4 v2, 0x1

    .line 188
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    goto :goto_0

    .line 196
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    aput-char v0, v6, v5

    .line 197
    const/4 v2, 0x0

    goto :goto_1

    .line 201
    .end local v0    # "ch":C
    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    :cond_1
    if-eqz v2, :cond_3

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    .line 202
    add-int/lit8 v4, v5, -0x1

    .line 205
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    :goto_2
    if-eq v4, v3, :cond_2

    new-instance p0, Ljava/lang/String;

    .end local p0    # "origPath":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    :cond_2
    return-object p0

    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    .restart local p0    # "origPath":Ljava/lang/String;
    :cond_3
    move v4, v5

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_2

    .end local v4    # "newLength":I
    .restart local v0    # "ch":C
    .restart local v5    # "newLength":I
    :cond_4
    move v4, v5

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_1
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 1097
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1098
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_0

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_1

    .line 1104
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1106
    :cond_1
    return-object v1
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 211
    .local v1, "prefixLength":I
    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 212
    .local v0, "haveSlash":Z
    :goto_0
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 215
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    .end local v0    # "haveSlash":Z
    :cond_1
    move v0, v3

    .line 211
    goto :goto_0

    .restart local v0    # "haveSlash":Z
    :cond_2
    move v0, v3

    .line 213
    goto :goto_1

    .line 215
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static native listImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private mkdirErrno()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 874
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    invoke-interface {v0, v1, v2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    .line 875
    return-void
.end method

.method private mkdirs(Z)Z
    .locals 6
    .param p1, "resultIfExists"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 898
    :try_start_0
    invoke-direct {p0}, Ljava/io/File;->mkdirErrno()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    return v2

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    if-ne v4, v5, :cond_2

    .line 903
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 904
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-direct {v1, v2}, Ljava/io/File;->mkdirs(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 905
    .end local v1    # "parent":Ljava/io/File;
    :cond_2
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EEXIST:I

    if-ne v2, v4, :cond_3

    move v2, p1

    .line 906
    goto :goto_0

    :cond_3
    move v2, v3

    .line 908
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1116
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v0

    .line 1117
    .local v0, "inSeparator":C
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 1118
    return-void
.end method

.method private static native setLastModifiedImpl(Ljava/lang/String;J)Z
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1111
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    .line 1112
    return-void
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    .prologue
    .line 259
    sget v0, Landroid/system/OsConstants;->X_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    .prologue
    .line 268
    sget v0, Landroid/system/OsConstants;->R_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .prologue
    .line 278
    sget v0, Landroid/system/OsConstants;->W_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 2
    .param p1, "another"    # Ljava/io/File;

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v1, 0x0

    .line 934
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v4, Landroid/system/OsConstants;->O_RDWR:I

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v4, v5

    sget v5, Landroid/system/OsConstants;->O_EXCL:I

    or-int/2addr v4, v5

    const/16 v5, 0x180

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 935
    const/4 v2, 0x1

    .line 943
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    :goto_0
    return v2

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_1
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EEXIST:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    .line 939
    const/4 v2, 0x0

    .line 943
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 941
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 943
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    throw v2
.end method

.method public delete()Z
    .locals 3

    .prologue
    .line 313
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v1, 0x1

    .line 316
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteOnExit()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Llibcore/io/DeleteOnExit;->getInstance()Llibcore/io/DeleteOnExit;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/io/DeleteOnExit;->addFile(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 350
    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 353
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 363
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :cond_1
    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "userDir":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 6

    .prologue
    .line 1168
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 1169
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_bfree:J

    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    .line 1171
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :goto_0
    return-wide v2

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 439
    .local v0, "separatorIndex":I
    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 450
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    const/4 v0, 0x0

    .line 451
    .local v0, "firstInPath":I
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 452
    const/4 v0, 0x2

    .line 454
    :cond_0
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 455
    .local v1, "index":I
    if-ne v1, v5, :cond_1

    if-lez v0, :cond_1

    .line 456
    const/4 v1, 0x2

    .line 458
    :cond_1
    if-eq v1, v5, :cond_2

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3

    .line 459
    :cond_2
    const/4 v3, 0x0

    .line 465
    :goto_0
    return-object v3

    .line 461
    :cond_3
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_4

    .line 463
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 465
    :cond_4
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "tempParent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 480
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 6

    .prologue
    .line 1128
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 1129
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_blocks:J

    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    .line 1131
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :goto_0
    return-wide v2

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getUsableSpace()J
    .locals 6

    .prologue
    .line 1150
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 1151
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    .line 1153
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :goto_0
    return-wide v2

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDirectory()Z
    .locals 3

    .prologue
    .line 524
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 527
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 3

    .prologue
    .line 539
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 6

    .prologue
    .line 571
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 574
    :goto_0
    return-wide v2

    .line 572
    :catch_0
    move-exception v0

    .line 574
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 724
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-wide v2

    .line 725
    :catch_0
    move-exception v0

    .line 727
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/io/File;->listImpl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 7
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 762
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "filenames":[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v2

    .line 772
    :goto_0
    return-object v6

    .line 766
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 768
    .local v1, "filename":Ljava/lang/String;
    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 769
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 772
    .end local v1    # "filename":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public listFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 7
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 819
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 820
    .local v2, "files":[Ljava/io/File;
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v2

    .line 829
    :goto_0
    return-object v6

    .line 823
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 824
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 825
    .local v1, "file":Ljava/io/File;
    invoke-interface {p1, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 826
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 829
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    goto :goto_0
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()Z
    .locals 2

    .prologue
    .line 865
    :try_start_0
    invoke-direct {p0}, Ljava/io/File;->mkdirErrno()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    const/4 v1, 0x1

    .line 868
    :goto_0
    return v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mkdirs()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/File;->mkdirs(Z)Z

    move-result v0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 4
    .param p1, "newPath"    # Ljava/io/File;

    .prologue
    .line 1031
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget-object v3, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    const/4 v1, 0x1

    .line 1034
    :goto_0
    return v1

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExecutable(Z)Z
    .locals 1
    .param p1, "executable"    # Z

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .locals 2
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 632
    if-eqz p2, :cond_0

    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    sget v1, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public setLastModified(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 593
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Ljava/io/File;->setLastModifiedImpl(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setReadOnly()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(Z)Z
    .locals 1
    .param p1, "readable"    # Z

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 2
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 663
    if-eqz p2, :cond_0

    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sget v1, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public setWritable(Z)Z
    .locals 1
    .param p1, "writable"    # Z

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .locals 2
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 692
    if-eqz p2, :cond_0

    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    sget v1, Landroid/system/OsConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1057
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "name":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_0
    return-object v0

    .line 1062
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, "//"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/net/URISyntaxException;
    move-object v0, v7

    .line 1068
    goto :goto_0

    .line 1065
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public toURL()Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1085
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "name":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 1092
    :goto_0
    return-object v0

    .line 1089
    .restart local v4    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, "//"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0
.end method
