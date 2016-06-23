.class public final Ldalvik/system/profiler/HprofBinaryToAscii;
.super Ljava/lang/Object;
.source "HprofBinaryToAscii.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static convert([Ljava/lang/String;)Z
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 50
    array-length v4, p0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 51
    const-string v4, "binary hprof file argument expected"

    invoke-static {v4}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    .line 80
    :goto_0
    return v3

    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v4, p0, v3

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/profiler/HprofBinaryToAscii;->usage(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->startsWithMagic(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    :try_start_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    .local v2, "hprofData":Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    move-result v3

    goto :goto_0

    .line 64
    .end local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading binary hprof data from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 80
    .restart local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->write(Ldalvik/system/profiler/HprofData;)Z

    move-result v3

    goto :goto_0

    .line 75
    .end local v2    # "hprofData":Ldalvik/system/profiler/HprofData;
    :catch_1
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading snapshot containing binary hprof data from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Ldalvik/system/profiler/HprofBinaryToAscii;->convert([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ldalvik/system/profiler/BinaryHprofReader;

    invoke-direct {v0, p0}, Ldalvik/system/profiler/BinaryHprofReader;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v0, "reader":Ldalvik/system/profiler/BinaryHprofReader;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/profiler/BinaryHprofReader;->setStrict(Z)V

    .line 140
    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->read()V

    .line 141
    invoke-virtual {v0}, Ldalvik/system/profiler/BinaryHprofReader;->getHprofData()Ldalvik/system/profiler/HprofData;

    move-result-object v1

    return-object v1
.end method

.method private static readHprof(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 109
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static readSnapshot(Ljava/io/File;)Ldalvik/system/profiler/HprofData;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 123
    if-ne v0, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 124
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->read(Ljava/io/InputStream;)Ldalvik/system/profiler/HprofData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 129
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 127
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Could not find expected header"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v0    # "ch":I
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method private static startsWithMagic(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v2}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 96
    :cond_0
    invoke-static {v2}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_0
    return v3

    .line 93
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Ldalvik/system/profiler/HprofBinaryToAscii;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_2

    .line 93
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: HprofBinaryToAscii <binary-hprof-file>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Reads a binary hprof file and print it in ASCII format"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private static write(Ldalvik/system/profiler/HprofData;)Z
    .locals 4
    .param p0, "hprofData"    # Ldalvik/system/profiler/HprofData;

    .prologue
    .line 163
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v1}, Ldalvik/system/profiler/AsciiHprofWriter;->write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing ASCII hprof data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method
