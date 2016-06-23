.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private os:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private writerNotInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 64
    const-string v0, "INFO"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 66
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "formatter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 116
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultLevel"    # Ljava/lang/String;
    .param p2, "defaultFilter"    # Ljava/lang/String;
    .param p3, "defaultFormatter"    # Ljava/lang/String;
    .param p4, "defaultEncoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 92
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 94
    return-void
.end method

.method private initializeWriter()V
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 122
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    .line 135
    return-void

    .line 126
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private write(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when writing to the output stream"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 245
    return-void
.end method

.method close(Z)V
    .locals 4
    .param p1, "closeStream"    # Z

    .prologue
    .line 216
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 217
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v1, :cond_0

    .line 218
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    .line 222
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 223
    if-eqz p1, :cond_1

    .line 224
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when closing the output stream"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when flushing the output stream"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method internalSetOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "newOs"    # Ljava/io/OutputStream;

    .prologue
    .line 154
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 155
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v0, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v2, :cond_0

    .line 286
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "msg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 295
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 291
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Exception occurred when formatting the log record"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Exception occurred when logging the record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 189
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x1

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 175
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 176
    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 177
    return-void
.end method
