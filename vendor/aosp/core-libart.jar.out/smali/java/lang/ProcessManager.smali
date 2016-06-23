.class final Ljava/lang/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessManager$ProcessOutputStream;,
        Ljava/lang/ProcessManager$ProcessInputStream;,
        Ljava/lang/ProcessManager$ProcessReferenceQueue;,
        Ljava/lang/ProcessManager$ProcessReference;,
        Ljava/lang/ProcessManager$ProcessImpl;
    }
.end annotation


# static fields
.field private static final instance:Ljava/lang/ProcessManager;


# instance fields
.field private final processReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ProcessManager$ProcessReference;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Ljava/lang/ProcessManager;

    invoke-direct {v0}, Ljava/lang/ProcessManager;-><init>()V

    sput-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    .line 56
    new-instance v0, Ljava/lang/ProcessManager$1;

    const-class v1, Ljava/lang/ProcessManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessManager$1;-><init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V

    .line 61
    .local v0, "reaperThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Ljava/lang/ProcessManager;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ProcessManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/ProcessManager;->watchChildren()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 71
    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    .local v0, "reference":Ljava/lang/ProcessManager$ProcessReference;
    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    iget v3, v0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_0
    return-void
.end method

.method private static native exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static getInstance()Ljava/lang/ProcessManager;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-object v0
.end method

.method private onExit(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "exitValue"    # I

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "processReference":Ljava/lang/ProcessManager$ProcessReference;
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v4

    .line 123
    :try_start_0
    invoke-direct {p0}, Ljava/lang/ProcessManager;->cleanUp()V

    .line 124
    iget-object v3, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    move-object v2, v0

    .line 125
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/lang/ProcessManager$ProcessReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ProcessManager$ProcessImpl;

    .line 128
    .local v1, "process":Ljava/lang/ProcessManager$ProcessImpl;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, p2}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    .line 132
    .end local v1    # "process":Ljava/lang/ProcessManager$ProcessImpl;
    :cond_0
    return-void

    .line 125
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private waitForMoreChildren()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 154
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "unexpected interrupt"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 153
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private watchChildren()V
    .locals 7

    .prologue
    .line 82
    new-instance v3, Landroid/util/MutableInt;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/util/MutableInt;-><init>(I)V

    .line 86
    .local v3, "status":Landroid/util/MutableInt;
    :goto_0
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Llibcore/io/Os;->waitpid(ILandroid/util/MutableInt;I)I

    move-result v2

    .line 90
    .local v2, "pid":I
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result v1

    .line 100
    .local v1, "exitValue":I
    :goto_1
    invoke-direct {p0, v2, v1}, Ljava/lang/ProcessManager;->onExit(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "exitValue":I
    .end local v2    # "pid":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ECHILD:I

    if-ne v4, v5, :cond_3

    .line 105
    invoke-direct {p0}, Ljava/lang/ProcessManager;->waitForMoreChildren()V

    goto :goto_0

    .line 92
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .restart local v2    # "pid":I
    :cond_0
    :try_start_1
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v1

    .restart local v1    # "exitValue":I
    goto :goto_1

    .line 94
    .end local v1    # "exitValue":I
    :cond_1
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WIFSTOPPED(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    iget v4, v3, Landroid/util/MutableInt;->value:I

    invoke-static {v4}, Landroid/system/OsConstants;->WSTOPSIG(I)I

    move-result v1

    .restart local v1    # "exitValue":I
    goto :goto_1

    .line 97
    .end local v1    # "exitValue":I
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected status from waitpid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/util/MutableInt;->value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .end local v2    # "pid":I
    .restart local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .locals 16
    .param p1, "taintedCommand"    # [Ljava/lang/String;
    .param p2, "taintedEnvironment"    # [Ljava/lang/String;
    .param p3, "workingDirectory"    # Ljava/io/File;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v14, "taintedCommand == null"

    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_0
    move-object/from16 v0, p1

    array-length v7, v0

    if-nez v7, :cond_1

    .line 174
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    const-string v14, "taintedCommand.length == 0"

    invoke-direct {v7, v14}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    :cond_1
    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 179
    .local v1, "command":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v2, v7

    .line 182
    .local v2, "environment":[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v7, v1

    if-ge v9, v7, :cond_4

    .line 183
    aget-object v7, v1, v9

    if-nez v7, :cond_3

    .line 184
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "taintedCommand["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] == null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    .end local v2    # "environment":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    .restart local v2    # "environment":[Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 188
    :cond_4
    if-eqz v2, :cond_6

    .line 189
    const/4 v9, 0x0

    :goto_2
    array-length v7, v2

    if-ge v9, v7, :cond_6

    .line 190
    aget-object v7, v2, v9

    if-nez v7, :cond_5

    .line 191
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "taintedEnvironment["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] == null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 196
    :cond_6
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 197
    .local v4, "in":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 198
    .local v5, "out":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    .line 200
    .local v6, "err":Ljava/io/FileDescriptor;
    if-nez p3, :cond_7

    const/4 v3, 0x0

    .line 206
    .local v3, "workingPath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v14

    move/from16 v7, p4

    .line 209
    :try_start_0
    invoke-static/range {v1 .. v7}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 218
    .local v10, "pid":I
    :try_start_1
    new-instance v11, Ljava/lang/ProcessManager$ProcessImpl;

    invoke-direct {v11, v10, v4, v5, v6}, Ljava/lang/ProcessManager$ProcessImpl;-><init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 219
    .local v11, "process":Ljava/lang/ProcessManager$ProcessImpl;
    new-instance v12, Ljava/lang/ProcessManager$ProcessReference;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v12, v11, v7}, Ljava/lang/ProcessManager$ProcessReference;-><init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V

    .line 220
    .local v12, "processReference":Ljava/lang/ProcessManager$ProcessReference;
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v11

    .line 200
    .end local v3    # "workingPath":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "process":Ljava/lang/ProcessManager$ProcessImpl;
    .end local v12    # "processReference":Ljava/lang/ProcessManager$ProcessReference;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 210
    .restart local v3    # "workingPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 211
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v13, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error running exec(). Command: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " Working Directory: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " Environment: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .local v13, "wrapper":Ljava/io/IOException;
    invoke-virtual {v13, v8}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    throw v13

    .line 229
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "wrapper":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method
