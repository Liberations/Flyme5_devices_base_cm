.class public Lorg/morphic/ts/extra/ScreenStateReceiverService;
.super Landroid/app/Service;
.source "ScreenStateReceiverService.java"


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/morphic/ts/extra/ScreenStateReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v0, "TsExtraScreenStateReceiverService"

    const-string v1, "Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "TsExtraScreenStateReceiverService"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "TsExtraScreenStateReceiverService"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lorg/morphic/ts/extra/ScreenStateReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/morphic/ts/extra/ScreenStateReceiverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    const-string v0, "TsExtraScreenStateReceiverService"

    const-string v1, "Service onDestroy DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 41
    const-string v2, "TsExtraScreenStateReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service onStartCommand "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/morphic/ts/extra/ScreenStateReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lorg/morphic/ts/extra/ScreenReceiver;

    invoke-direct {v1}, Lorg/morphic/ts/extra/ScreenReceiver;-><init>()V

    iput-object v1, p0, Lorg/morphic/ts/extra/ScreenStateReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iget-object v1, p0, Lorg/morphic/ts/extra/ScreenStateReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/morphic/ts/extra/ScreenStateReceiverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    const/4 v1, 0x1

    return v1

    .line 41
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "Created"

    goto :goto_0
.end method
