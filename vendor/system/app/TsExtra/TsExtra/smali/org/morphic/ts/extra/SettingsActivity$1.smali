.class Lorg/morphic/ts/extra/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/morphic/ts/extra/SettingsActivity;->reboot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/morphic/ts/extra/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/morphic/ts/extra/SettingsActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/morphic/ts/extra/SettingsActivity$1;->this$0:Lorg/morphic/ts/extra/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lorg/morphic/ts/extra/SettingsActivity$1;->this$0:Lorg/morphic/ts/extra/SettingsActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/morphic/ts/extra/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 59
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 60
    return-void
.end method
