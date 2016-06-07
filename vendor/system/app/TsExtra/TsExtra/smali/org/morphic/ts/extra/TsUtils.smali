.class Lorg/morphic/ts/extra/TsUtils;
.super Ljava/lang/Object;
.source "TsUtils.java"


# static fields
.field private static CONTROL_PATH:Ljava/lang/String;

.field private static INPUTNUM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static findInputNum()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 44
    const-string v2, "/sys/class/input/input%d/wake_gesture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lorg/morphic/ts/extra/TsUtils;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .end local v1    # "path":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 42
    .restart local v1    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getInputControlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "extra"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lorg/morphic/ts/extra/TsUtils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, ""

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    .line 56
    invoke-static {}, Lorg/morphic/ts/extra/TsUtils;->findInputNum()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    .line 59
    :cond_0
    sget-object v0, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "ts.touchinput"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "ts.touchinput"

    sget-object v1, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/input/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/morphic/ts/extra/TsUtils;->INPUTNUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    .line 70
    :cond_2
    sget-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lorg/morphic/ts/extra/TsUtils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    const-string v0, ""

    sput-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    .line 73
    :cond_3
    sget-object v0, Lorg/morphic/ts/extra/TsUtils;->CONTROL_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static setActiveEdgeMode(Z)Z
    .locals 2
    .param p0, "state"    # Z

    .prologue
    .line 77
    const-string v1, "edge_mode"

    invoke-static {v1}, Lorg/morphic/ts/extra/TsUtils;->getInputControlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "path":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_0
    return v1

    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "2"

    :goto_1
    invoke-static {v0, v1}, Lorg/morphic/ts/extra/TsUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public static writeLine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v2, 0x1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const/4 v2, 0x0

    goto :goto_0
.end method
