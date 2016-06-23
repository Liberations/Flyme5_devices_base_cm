.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final DEFAULT_LEVEL:Ljava/util/logging/Level;


# instance fields
.field private encoding:Ljava/lang/String;

.field private errorMan:Ljava/util/logging/ErrorManager;

.field private filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private level:Ljava/util/logging/Level;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sput-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    .line 57
    sget-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    .line 58
    iput-object v1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    .line 60
    iput-object v1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 81
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 84
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "result":Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 75
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 188
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "defaultLevel"    # Ljava/lang/String;
    .param p2, "defaultFilter"    # Ljava/lang/String;
    .param p3, "defaultFormatter"    # Ljava/lang/String;
    .param p4, "defaultEncoding"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v6

    .line 103
    .local v6, "manager":Ljava/util/logging/LogManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".filter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "filterName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 106
    :try_start_0
    invoke-direct {p0, v3}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "levelName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 119
    :try_start_1
    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".formatter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "formatterName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 132
    :try_start_2
    invoke-direct {p0, v4}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".encoding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "encodingName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 148
    :goto_3
    return-void

    .line 107
    .end local v2    # "encodingName":Ljava/lang/String;
    .end local v4    # "formatterName":Ljava/lang/String;
    .end local v5    # "levelName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e1":Ljava/lang/Exception;
    const-string v7, "filter"

    invoke-virtual {p0, v7, v3, v1}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    goto :goto_0

    .line 112
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    goto :goto_0

    .line 120
    .restart local v5    # "levelName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "level"

    invoke-virtual {p0, v7, v5, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    goto :goto_1

    .line 133
    .restart local v4    # "formatterName":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "formatter"

    invoke-virtual {p0, v7, v4, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 135
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_2

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_2

    .line 145
    .restart local v2    # "encodingName":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "encoding"

    invoke-virtual {p0, v7, v2, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method internalSetEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "newEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method internalSetFormatter(Ljava/util/logging/Formatter;)V
    .locals 2
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newFormatter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    .line 330
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v0, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "record == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 237
    :cond_1
    :goto_0
    return v0

    .line 234
    :cond_2
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget-object v2, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 235
    iget-object v1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    invoke-interface {v1, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 92
    return-void
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .prologue
    .line 254
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 255
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 288
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 2
    .param p1, "newErrorManager"    # Ljava/util/logging/ErrorManager;

    .prologue
    .line 300
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newErrorManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    .line 305
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    .prologue
    .line 314
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 315
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    .line 316
    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;

    .prologue
    .line 341
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 342
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    .line 343
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newLevel == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 359
    iput-object p1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    .line 360
    return-void
.end method
