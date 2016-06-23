.class public final Llibcore/io/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/EventLogger$1;,
        Llibcore/io/EventLogger$DefaultReporter;,
        Llibcore/io/EventLogger$Reporter;
    }
.end annotation


# static fields
.field private static volatile REPORTER:Llibcore/io/EventLogger$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Llibcore/io/EventLogger$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/io/EventLogger$DefaultReporter;-><init>(Llibcore/io/EventLogger$1;)V

    sput-object v0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getReporter()Llibcore/io/EventLogger$Reporter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    return-object v0
.end method

.method public static setReporter(Llibcore/io/EventLogger$Reporter;)V
    .locals 2
    .param p0, "reporter"    # Llibcore/io/EventLogger$Reporter;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reporter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sput-object p0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    .line 34
    return-void
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "code"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    .prologue
    .line 67
    invoke-static {}, Llibcore/io/EventLogger;->getReporter()Llibcore/io/EventLogger$Reporter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Llibcore/io/EventLogger$Reporter;->report(I[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
