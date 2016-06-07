.class public Lcom/android/server/OnekeyUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnekeyUpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnekeyUpgrade"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/OnekeyUpgradeReceiver$1;

    const-string v1, "Reboot"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/OnekeyUpgradeReceiver$1;-><init>(Lcom/android/server/OnekeyUpgradeReceiver;Ljava/lang/String;Landroid/content/Context;)V

    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
