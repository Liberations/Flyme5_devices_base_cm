.class Ljava/io/Console$ConsoleReader;
.super Ljava/io/BufferedReader;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 153
    # getter for: Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;
    invoke-static {}, Ljava/io/Console;->access$000()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/io/Console$ConsoleReader;->lock:Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
