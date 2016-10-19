.class Lcom/qti/dpm/DpmService$PackageListener$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService$PackageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qti/dpm/DpmService$PackageListener;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService$PackageListener;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/qti/dpm/DpmService$PackageListener$1;->this$1:Lcom/qti/dpm/DpmService$PackageListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageListener receive intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/qti/dpm/DpmService$PackageListener$1;->this$1:Lcom/qti/dpm/DpmService$PackageListener;

    # invokes: Lcom/qti/dpm/DpmService$PackageListener;->sendUpdatedPackageInfo(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/qti/dpm/DpmService$PackageListener;->access$3000(Lcom/qti/dpm/DpmService$PackageListener;Landroid/content/Intent;)V

    .line 1253
    :cond_1
    return-void
.end method
