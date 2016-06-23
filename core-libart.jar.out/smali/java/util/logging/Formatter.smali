.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "pattern":Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, "rb":Ljava/util/ResourceBundle;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "params":[Ljava/lang/Object;
    const-string v4, "{0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 82
    :try_start_1
    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 88
    .end local v1    # "params":[Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "params":[Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 101
    const-string v0, ""

    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 114
    const-string v0, ""

    return-object v0
.end method
