.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmNsrmBackgroundEventHdlr.java"


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
    .line 97
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;

    .line 113
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    const-string v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v1, 0xb

    const/4 v2, 0x1

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;
    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$302(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 127
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$300(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 128
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$2;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$2;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 135
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v12

    .line 137
    .local v12, "usbIntent":Landroid/content/Intent;
    if-eqz v12, :cond_1

    .line 138
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 139
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 144
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string v1, "connected"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$502(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 145
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 147
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 151
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v12    # "usbIntent":Landroid/content/Intent;
    :cond_4
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 154
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 159
    const-string v0, "state"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 160
    .local v10, "headphonesConnected":I
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v2, 0x4

    if-nez v10, :cond_5

    const/4 v0, 0x0

    :goto_1
    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v1, v2, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 163
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "headphonesConnected":I
    :cond_6
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$702(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 167
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$700(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 169
    :cond_7
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 172
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 177
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string v1, "connected"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$502(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 178
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 180
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 183
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_8
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 186
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 192
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 193
    .local v6, "BluetoothConnected":I
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v0, 0x2

    if-ne v6, v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 196
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$900(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v2, 0x5

    const/4 v0, 0x2

    if-ne v6, v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v1, v2, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 200
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$902(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 193
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 198
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 203
    .end local v6    # "BluetoothConnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_b
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 206
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 211
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 212
    .local v7, "BluetoothDisconnected":I
    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x5

    const/4 v2, 0x0

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 215
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x0

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 216
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$902(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 219
    .end local v7    # "BluetoothDisconnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_c
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 224
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_1

    .line 230
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 236
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v1, 0xd

    const/4 v2, 0x1

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 242
    :cond_d
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x0

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 245
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v1, 0xd

    const/4 v2, 0x0

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0
.end method
