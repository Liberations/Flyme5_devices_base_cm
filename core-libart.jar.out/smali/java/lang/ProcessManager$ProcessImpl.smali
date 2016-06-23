.class Ljava/lang/ProcessManager$ProcessImpl;
.super Ljava/lang/Process;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessImpl"
.end annotation


# instance fields
.field private final errorStream:Ljava/io/InputStream;

.field private exitValue:Ljava/lang/Integer;

.field private final exitValueMutex:Ljava/lang/Object;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final pid:I


# direct methods
.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 244
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    .line 248
    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    .line 250
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    .line 251
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    .line 252
    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    .line 253
    return-void
.end method

.method static synthetic access$300(Ljava/lang/ProcessManager$ProcessImpl;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/ProcessManager$ProcessImpl;

    .prologue
    .line 232
    iget v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 257
    iget-object v2, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 260
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    sget v4, Landroid/system/OsConstants;->SIGKILL:I

    invoke-interface {v1, v3, v4}, Llibcore/io/Os;->kill(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 268
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 269
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 270
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public exitValue()I
    .locals 4

    .prologue
    .line 273
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process has not yet terminated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method setExitValue(I)V
    .locals 2
    .param p1, "exitValue"    # I

    .prologue
    .line 303
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    .line 305
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitFor()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method
