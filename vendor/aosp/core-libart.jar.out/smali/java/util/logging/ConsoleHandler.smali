.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;-><init>(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 59
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 69
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 70
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 71
    return-void
.end method
