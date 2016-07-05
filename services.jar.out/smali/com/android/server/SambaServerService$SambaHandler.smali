.class Lcom/android/server/SambaServerService$SambaHandler;
.super Landroid/os/Handler;
.source "SambaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SambaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaServerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaServerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmeizu/samba/server/LocalSharedFolder;

    .local v2, "folders":Lmeizu/samba/server/LocalSharedFolder;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mServerRunning:Z
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    invoke-virtual {v8}, Lcom/android/server/SambaServerService;->startServerInternal()Z

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/SambaServerService;->mServerRunning:Z
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$002(Lcom/android/server/SambaServerService;Z)Z

    :cond_0
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v9, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v8, v9, :cond_1

    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string v9, "samba"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "adduser"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v2, Lmeizu/samba/server/LocalSharedFolder;->password:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_5

    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    aget-object v7, v8, v4

    .local v7, "path":Ljava/lang/String;
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    aget-object v0, v8, v4

    .local v0, "des":Ljava/lang/String;
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->mode:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v9, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v9

    const-string v10, "samba"

    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v12, "addshared"

    aput-object v12, v11, v8

    const/4 v8, 0x1

    aput-object v7, v11, v8

    const/4 v8, 0x2

    aput-object v0, v11, v8

    const/4 v12, 0x3

    iget-boolean v8, v2, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v8, :cond_2

    const-string v8, "true"

    :goto_2
    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :goto_3
    new-instance v6, Lcom/android/server/SambaServerService$SharedItem;

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    invoke-direct {v6, v8, v7, v0}, Lcom/android/server/SambaServerService$SharedItem;-><init>(Lcom/android/server/SambaServerService;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "item":Lcom/android/server/SambaServerService$SharedItem;
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v6    # "item":Lcom/android/server/SambaServerService$SharedItem;
    :cond_2
    const-string v8, "false"

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v9

    const-string v10, "samba"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v12, "addshared"

    aput-object v12, v11, v8

    const/4 v8, 0x1

    aput-object v7, v11, v8

    const/4 v8, 0x2

    aput-object v0, v11, v8

    const/4 v12, 0x3

    iget-boolean v8, v2, Lmeizu/samba/server/LocalSharedFolder;->writable:Z

    if-eqz v8, :cond_4

    const-string v8, "true"

    :goto_4
    aput-object v8, v11, v12

    const/4 v8, 0x4

    iget-object v12, v2, Lmeizu/samba/server/LocalSharedFolder;->user:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v0    # "des":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "SambaServerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSharedFolders  ex stop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "des":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v8, "false"

    goto :goto_4

    .end local v0    # "des":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string v9, "samba"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "restartSmbd"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x1

    # invokes: Lcom/android/server/SambaServerService;->updateNotification(Z)V
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$400(Lcom/android/server/SambaServerService;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v2    # "folders":Lmeizu/samba/server/LocalSharedFolder;
    .end local v4    # "i":I
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmeizu/samba/server/LocalSharedFolder;

    .restart local v2    # "folders":Lmeizu/samba/server/LocalSharedFolder;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    const/4 v4, 0x0

    :goto_5
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_9

    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    aget-object v7, v8, v4

    .restart local v7    # "path":Ljava/lang/String;
    iget-object v8, v2, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    aget-object v0, v8, v4

    .restart local v0    # "des":Ljava/lang/String;
    :try_start_2
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string v9, "samba"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "removeshared"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    const/4 v3, 0x0

    .local v3, "found":Z
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/SambaServerService$SharedItem;

    .restart local v6    # "item":Lcom/android/server/SambaServerService$SharedItem;
    iget-object v8, v6, Lcom/android/server/SambaServerService$SharedItem;->path:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v6, Lcom/android/server/SambaServerService$SharedItem;->desc:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .end local v6    # "item":Lcom/android/server/SambaServerService$SharedItem;
    :cond_7
    if-nez v3, :cond_8

    const-string v8, "SambaServerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not find the share file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lmeizu/samba/server/LocalSharedFolder;->paths:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lmeizu/samba/server/LocalSharedFolder;->descriptions:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .end local v3    # "found":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "SambaServerService"

    const-string v9, "ex remove shared"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v0    # "des":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "path":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    invoke-virtual {v8}, Lcom/android/server/SambaServerService;->stopServerInternal()Z

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/SambaServerService;->updateNotification(Z)V
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$400(Lcom/android/server/SambaServerService;Z)V

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/SambaServerService;->mServerRunning:Z
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$002(Lcom/android/server/SambaServerService;Z)Z

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string v9, "samba"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "restartSmbd"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x1

    # invokes: Lcom/android/server/SambaServerService;->updateNotification(Z)V
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$400(Lcom/android/server/SambaServerService;Z)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "SambaServerService"

    const-string v9, "ex remove shared"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "folders":Lmeizu/samba/server/LocalSharedFolder;
    .end local v4    # "i":I
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/SambaServerService$SharedItem;

    .restart local v6    # "item":Lcom/android/server/SambaServerService$SharedItem;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$500(Lcom/android/server/SambaServerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string v9, "samba"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "removeshared"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v6, Lcom/android/server/SambaServerService$SharedItem;->path:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v6, Lcom/android/server/SambaServerService$SharedItem;->desc:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "SambaServerService"

    const-string v9, "ex remove shared"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "item":Lcom/android/server/SambaServerService$SharedItem;
    :cond_b
    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mSharedItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/SambaServerService;->access$600(Lcom/android/server/SambaServerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    invoke-virtual {v8}, Lcom/android/server/SambaServerService;->stopServerInternal()Z

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/SambaServerService;->updateNotification(Z)V
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$400(Lcom/android/server/SambaServerService;Z)V

    iget-object v8, p0, Lcom/android/server/SambaServerService$SambaHandler;->this$0:Lcom/android/server/SambaServerService;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/SambaServerService;->mServerRunning:Z
    invoke-static {v8, v9}, Lcom/android/server/SambaServerService;->access$002(Lcom/android/server/SambaServerService;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
