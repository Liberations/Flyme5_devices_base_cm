.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$MeasureOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_APPEND:Z = false

.field private static final DEFAULT_COUNT:I = 0x1

.field private static final DEFAULT_LIMIT:I = 0x0

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "%h/java%u.log"

.field private static final LCK_EXT:Ljava/lang/String; = ".lck"

.field private static final allLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field fileName:Ljava/lang/String;

.field private files:[Ljava/io/File;

.field private limit:I

.field lock:Ljava/nio/channels/FileLock;

.field private manager:Ljava/util/logging/LogManager;

.field private output:Ljava/util/logging/FileHandler$MeasureOutputStream;

.field private pattern:Ljava/lang/String;

.field uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 133
    iput-object v1, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 136
    iput-object v1, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 149
    invoke-direct {p0, v1, v1, v1, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 133
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 136
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 387
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 133
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 136
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    if-ltz p2, :cond_1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0 || count < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 133
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 136
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    if-ltz p2, :cond_1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0 || count < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 483
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 133
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 136
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 414
    return-void
.end method

.method private getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 333
    iget-object v2, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 343
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 337
    .restart local p2    # "defaultValue":Z
    :cond_0
    move v1, p2

    .line 338
    .local v1, "result":Z
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move p2, v1

    .line 343
    goto :goto_0

    .line 340
    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 354
    iget-object v2, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "property":Ljava/lang/String;
    move v1, p2

    .line 356
    .local v1, "result":I
    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v1, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Boolean;
    .param p3, "l"    # Ljava/lang/Integer;
    .param p4, "c"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    .line 157
    iget-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/FileHandler;->initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 159
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->initOutputFiles()V

    .line 160
    return-void
.end method

.method private initOutputFiles()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 165
    :goto_0
    iget v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 167
    const/4 v2, 0x0

    .local v2, "generation":I
    :goto_1
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v2, v4, :cond_0

    .line 169
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/util/logging/FileHandler;->parseFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_0
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 172
    sget-object v5, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    monitor-enter v5

    .line 177
    :try_start_0
    sget-object v4, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    monitor-exit v5

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 180
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Ljava/util/logging/FileHandler;->append:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    iget v4, p0, Ljava/util/logging/FileHandler;->limit:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_4

    .line 182
    :cond_2
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_2
    if-lez v3, :cond_4

    .line 183
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 186
    :cond_3
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 182
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 189
    .end local v3    # "i":I
    :cond_4
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".lck"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 197
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 198
    iget-object v4, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    if-nez v4, :cond_5

    .line 199
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 200
    monitor-exit v5

    goto/16 :goto_0

    .line 202
    :cond_5
    sget-object v4, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    iget-object v7, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    new-instance v4, Ljava/util/logging/FileHandler$MeasureOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    iget-boolean v8, p0, Ljava/util/logging/FileHandler;->append:Z

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    iput-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    .line 208
    iget-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 209
    return-void
.end method

.method private initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Boolean;
    .param p3, "l"    # Ljava/lang/Integer;
    .param p4, "c"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    const-string v1, "ALL"

    const-string v4, "java.util.logging.XMLFormatter"

    invoke-super {p0, v1, v5, v4, v5}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "className":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".pattern"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "%h/java%u.log"

    invoke-direct {p0, v1, v4}, Ljava/util/logging/FileHandler;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "p":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "pattern == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_1
    iget-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "pattern.isEmpty()"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_2
    if-nez p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".append"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 224
    if-nez p4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".count"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 226
    if-nez p3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".limit"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 228
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v1, v2, :cond_6

    move v1, v2

    :goto_3
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 229
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    if-gez v1, :cond_7

    move v1, v3

    :goto_4
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 230
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    .line 231
    return-void

    .line 222
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 228
    :cond_6
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    goto :goto_3

    .line 229
    :cond_7
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    goto :goto_4
.end method

.method private parseFileName(I)Ljava/lang/String;
    .locals 14
    .param p1, "gen"    # I

    .prologue
    const/16 v13, 0x25

    const/4 v10, 0x0

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "cur":I
    const/4 v5, 0x0

    .line 261
    .local v5, "next":I
    const/4 v2, 0x0

    .line 262
    .local v2, "hasUniqueID":Z
    const/4 v1, 0x0

    .line 266
    .local v1, "hasGeneration":Z
    const-string v11, "java.io.tmpdir"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "tempPath":Ljava/lang/String;
    if-nez v7, :cond_2

    move v8, v10

    .line 270
    .local v8, "tempPathHasSepEnd":Z
    :goto_0
    const-string v11, "user.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "homePath":Ljava/lang/String;
    if-nez v3, :cond_3

    move v4, v10

    .line 274
    .local v4, "homePathHasSepEnd":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    const/16 v11, 0x2f

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 277
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 278
    .local v9, "value":[C
    :cond_0
    :goto_2
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_4

    .line 279
    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 280
    aget-char v10, v9, v5

    sparse-switch v10, :sswitch_data_0

    .line 309
    sub-int v10, v5, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 311
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_2

    .line 267
    .end local v3    # "homePath":Ljava/lang/String;
    .end local v4    # "homePathHasSepEnd":Z
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "tempPathHasSepEnd":Z
    .end local v9    # "value":[C
    :cond_2
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    goto :goto_0

    .line 271
    .restart local v3    # "homePath":Ljava/lang/String;
    .restart local v8    # "tempPathHasSepEnd":Z
    :cond_3
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    .line 282
    .restart local v4    # "homePathHasSepEnd":Z
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "value":[C
    :sswitch_0
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const/4 v1, 0x1

    .line 284
    goto :goto_3

    .line 286
    :sswitch_1
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const/4 v2, 0x1

    .line 288
    goto :goto_3

    .line 294
    :sswitch_2
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    if-nez v8, :cond_1

    .line 296
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 300
    :sswitch_3
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    if-nez v4, :cond_1

    .line 302
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 306
    :sswitch_4
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 317
    :cond_4
    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 319
    if-nez v1, :cond_5

    iget v10, p0, Ljava/util/logging/FileHandler;->count:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 320
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    :cond_5
    if-nez v2, :cond_6

    iget v10, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    if-lez v10, :cond_6

    .line 324
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x67 -> :sswitch_0
        0x68 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 491
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 492
    sget-object v2, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :try_start_0
    iget-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 495
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 496
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 497
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method findNextGeneration()V
    .locals 7

    .prologue
    .line 234
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 235
    iget v2, p0, Ljava/util/logging/FileHandler;->count:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 236
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 239
    :cond_0
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 242
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/logging/FileHandler$MeasureOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    iget-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Error opening log file"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 513
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    .line 514
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {v0}, Ljava/util/logging/FileHandler$MeasureOutputStream;->getLength()J

    move-result-wide v0

    iget v2, p0, Ljava/util/logging/FileHandler;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->findNextGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
