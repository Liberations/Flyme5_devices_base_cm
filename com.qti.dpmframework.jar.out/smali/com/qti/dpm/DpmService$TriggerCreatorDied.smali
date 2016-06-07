.class final Lcom/qti/dpm/DpmService$TriggerCreatorDied;
.super Ljava/lang/Object;
.source "DpmService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TriggerCreatorDied"
.end annotation


# instance fields
.field public final mId:I

.field public final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;Landroid/os/IBinder;I)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    iput-object p2, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->mToken:Landroid/os/IBinder;

    .line 1579
    iput p3, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->mId:I

    .line 1580
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1584
    const-string v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->this$0:Lcom/qti/dpm/DpmService;

    iget v1, p0, Lcom/qti/dpm/DpmService$TriggerCreatorDied;->mId:I

    # invokes: Lcom/qti/dpm/DpmService;->deleteVendorTrigger(I)I
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$3200(Lcom/qti/dpm/DpmService;I)I

    .line 1586
    return-void
.end method
