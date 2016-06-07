.class Lorg/morphic/ts/extra/ScreenReceiver$1;
.super Ljava/lang/Object;
.source "ScreenReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/morphic/ts/extra/ScreenReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/morphic/ts/extra/ScreenReceiver;

.field final synthetic val$mAm:Landroid/app/ActivityManager;


# direct methods
.method constructor <init>(Lorg/morphic/ts/extra/ScreenReceiver;Landroid/app/ActivityManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/morphic/ts/extra/ScreenReceiver$1;->this$0:Lorg/morphic/ts/extra/ScreenReceiver;

    iput-object p2, p0, Lorg/morphic/ts/extra/ScreenReceiver$1;->val$mAm:Landroid/app/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 60
    .local v3, "userId":I
    const-string v4, "sys.am.keeprec"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lorg/morphic/ts/extra/ScreenReceiver$1;->val$mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 72
    .local v1, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-lez v4, :cond_0

    .line 73
    iget-object v4, p0, Lorg/morphic/ts/extra/ScreenReceiver$1;->val$mAm:Landroid/app/ActivityManager;

    iget v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0

    .line 77
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v1    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const-string v4, "sys.am.keeprec"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
