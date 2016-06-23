.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$ConsoleWriter;,
        Ljava/io/Console$ConsoleReader;
    }
.end annotation


# static fields
.field private static final CONSOLE_LOCK:Ljava/lang/Object;

.field private static final console:Ljava/io/Console;


# instance fields
.field private final reader:Ljava/io/Console$ConsoleReader;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/io/Console;->makeConsole()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/io/Console$ConsoleReader;

    invoke-direct {v0, p1}, Ljava/io/Console$ConsoleReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    .line 56
    new-instance v0, Ljava/io/Console$ConsoleWriter;

    invoke-direct {v0, p2}, Ljava/io/Console$ConsoleWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConsole()Ljava/io/Console;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-object v0
.end method

.method private static makeConsole()Ljava/io/Console;
    .locals 4

    .prologue
    .line 44
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/Console;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v3}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 61
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 76
    .local v0, "f":Ljava/util/Formatter;
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 77
    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 78
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    invoke-virtual {v1}, Ljava/io/Console$ConsoleReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 123
    sget-object v1, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 125
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readPassword()[C
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
