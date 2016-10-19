.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;
.super Ljava/util/TimerTask;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;->this$1:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;->this$1:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;

    iget-object v0, v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->pollBackgroundEvents()V
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 117
    return-void
.end method
