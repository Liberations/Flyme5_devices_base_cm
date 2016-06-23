.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field private cursor:I

.field private final manager:Ljava/util/logging/LogManager;

.field private push:Ljava/util/logging/Level;

.field private size:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0x3e8

    .line 86
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 64
    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 67
    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 70
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "className":Ljava/lang/String;
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".target"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "targetName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 92
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 95
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 96
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Handler;

    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "sizeString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 104
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 105
    iget v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v7, :cond_1

    .line 106
    const/16 v7, 0x3e8

    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_1
    :goto_0
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".push"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "pushName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 116
    :try_start_2
    invoke-static {v3}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    :cond_2
    :goto_1
    const-string v7, "ALL"

    const-string v8, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v7, v10, v8, v10}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v7, v7, [Ljava/util/logging/LogRecord;

    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 124
    return-void

    .line 97
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "pushName":Ljava/lang/String;
    .end local v4    # "sizeString":Ljava/lang/String;
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load target handler \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    .restart local v4    # "sizeString":Ljava/lang/String;
    .restart local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "pushName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".push"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .locals 3
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 67
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 70
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 145
    if-gtz p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    .line 149
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    .line 150
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 151
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 152
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 153
    const-string v0, "ALL"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-array v0, p2, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 155
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 163
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 164
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 165
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 174
    return-void
.end method

.method public getPushLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 224
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    :try_start_1
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-lt v0, v1, :cond_2

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 193
    :cond_2
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    aput-object p1, v0, v1

    .line 194
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public push()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 236
    :cond_0
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    if-ge v0, v1, :cond_3

    .line 239
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 242
    :cond_2
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 245
    return-void
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 257
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 258
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    .line 259
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 260
    return-void
.end method
