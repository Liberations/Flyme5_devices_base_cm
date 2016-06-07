.class public Lcom/qti/dpm/DpmService$DpmSender;
.super Landroid/os/Handler;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DpmSender"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:SNDR"


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    .line 532
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 536
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    .line 533
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 545
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/qti/dpm/DpmRequest;

    move-object v5, v7

    check-cast v5, Lcom/qti/dpm/DpmRequest;

    .line 546
    .local v5, "rr":Lcom/qti/dpm/DpmRequest;
    const/4 v4, 0x0

    .line 548
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 556
    :pswitch_0
    const/4 v0, 0x0

    .line 559
    .local v0, "alreadySubtracted":Z
    :try_start_0
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v6, v7, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 560
    .local v6, "s":Landroid/net/LocalSocket;
    if-nez v6, :cond_1

    .line 561
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 562
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 563
    const/4 v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v8, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :try_start_1
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v7, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :try_start_2
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 570
    const/4 v0, 0x1

    .line 572
    iget-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 573
    .local v1, "data":[B
    iget-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 574
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    .line 575
    array-length v7, v1

    const/16 v8, 0x2000

    if-le v7, v8, :cond_5

    .line 576
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcel larger than max bytes allowed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 589
    .end local v1    # "data":[B
    .end local v6    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 590
    .local v2, "ex":Ljava/io/IOException;
    const-string v7, "REQ:SNDR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    # invokes: Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$2100(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v4

    .line 594
    if-nez v4, :cond_2

    if-nez v0, :cond_3

    .line 595
    :cond_2
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 608
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_1
    if-nez v0, :cond_0

    .line 609
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 568
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 597
    .end local v6    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v3

    .line 598
    .local v3, "exc":Ljava/lang/RuntimeException;
    const-string v7, "REQ:SNDR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uncaught exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    # invokes: Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$2100(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v4

    .line 602
    if-nez v4, :cond_4

    if-nez v0, :cond_3

    .line 604
    :cond_4
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    goto :goto_1

    .line 581
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "data":[B
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    aput-byte v11, v7, v8

    .line 582
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v8, 0x2

    array-length v9, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 583
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v8, 0x3

    array-length v9, v1

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 585
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 586
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V

    .line 588
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    # invokes: Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$2100(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 613
    .end local v0    # "alreadySubtracted":Z
    .end local v1    # "data":[B
    .end local v6    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    const-string v7, "REQ:SNDR"

    const-string v8, "event_toggle_wifi ...reassociating"

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    # getter for: Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 615
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    # getter for: Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 618
    :pswitch_2
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    # invokes: Lcom/qti/dpm/DpmService;->postDpmdUpInit()V
    invoke-static {v7}, Lcom/qti/dpm/DpmService;->access$2200(Lcom/qti/dpm/DpmService;)V

    goto/16 :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method
