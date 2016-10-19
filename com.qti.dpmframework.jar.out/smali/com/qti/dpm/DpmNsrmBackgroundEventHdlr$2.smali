.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 254
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpsStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 265
    :pswitch_0
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpsStatusChanged unhandled event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 269
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1202(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 271
    :cond_0
    return-void

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1102(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x0

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1102(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
