.class Lcom/qti/dpm/DpmService$DpmReceiver;
.super Ljava/lang/Object;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DpmReceiver"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:RCVR"


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 1

    .prologue
    .line 692
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    .line 694
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 697
    const/4 v11, 0x0

    .line 701
    .local v11, "retryCount":I
    :goto_0
    const/4 v13, 0x0

    .line 705
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_0
    const-string v17, "REQ:RCVR"

    const-string v18, "DPM creating socket"

    # invokes: Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 707
    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v14, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v8, Landroid/net/LocalSocketAddress;

    const-string v17, "dpmd"

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 709
    .local v8, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 737
    const/4 v11, 0x0

    .line 738
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 739
    const-string v17, "REQ:RCVR"

    const-string v18, "Connected to \'dpmd\' socket"

    # invokes: Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const/16 v17, 0x1

    sput-boolean v17, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendInitReq()Z
    invoke-static/range {v17 .. v17}, Lcom/qti/dpm/DpmService;->access$2500(Lcom/qti/dpm/DpmService;)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    move-object/from16 v17, v0

    # invokes: Lcom/qti/dpm/DpmService$ApnTypeToInt;->constructApnMap()V
    invoke-static/range {v17 .. v17}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->access$2600(Lcom/qti/dpm/DpmService$ApnTypeToInt;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/qti/dpm/DpmService$DpmSender;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    # invokes: Lcom/qti/dpm/DpmService;->requestFeaturesSettings()V
    invoke-static/range {v17 .. v17}, Lcom/qti/dpm/DpmService;->access$2700(Lcom/qti/dpm/DpmService;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 747
    const/4 v9, 0x0

    .line 749
    .local v9, "length":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 754
    .local v7, "is":Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/qti/dpm/DpmService;->readDPMMessage(Ljava/io/InputStream;[B)I
    invoke-static {v7, v0}, Lcom/qti/dpm/DpmService;->access$2800(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v9

    .line 756
    if-gez v9, :cond_3

    .line 773
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v17, "REQ:RCVR"

    const-string v18, "Disconnected from \'dpmd\' socket"

    # invokes: Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/16 v17, 0x0

    sput-boolean v17, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 775
    const/16 v17, 0x1

    sput-boolean v17, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 776
    const/16 v17, 0x0

    sput-boolean v17, Lcom/qti/dpm/DpmService;->isDispatched:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 779
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 783
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 784
    invoke-static {}, Lcom/qti/dpm/DpmRequest;->resetSerial()V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 788
    const/4 v6, 0x0

    .local v6, "i":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "sz":I
    :goto_4
    if-ge v6, v15, :cond_4

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qti/dpm/DpmRequest;

    .line 791
    .local v12, "rr":Lcom/qti/dpm/DpmRequest;
    invoke-virtual {v12}, Lcom/qti/dpm/DpmRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 788
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 710
    .end local v6    # "i":I
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "length":I
    .end local v12    # "rr":Lcom/qti/dpm/DpmRequest;
    .end local v14    # "s":Landroid/net/LocalSocket;
    .end local v15    # "sz":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 712
    .local v5, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v13, :cond_0

    .line 713
    :try_start_8
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 721
    :cond_0
    :goto_6
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v11, v0, :cond_2

    .line 722
    :try_start_9
    const-string v17, "REQ:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find \'dpmd\' socket after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " times, continuing to retry silently"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 730
    :cond_1
    :goto_7
    const-wide/16 v18, 0xfa0

    :try_start_a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 734
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 735
    goto/16 :goto_0

    .line 724
    :cond_2
    if-lez v11, :cond_1

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 725
    :try_start_b
    const-string v17, "REQ:RCVR"

    const-string v18, "Couldn\'t find \'dpmd\' socket; retrying after timeout"

    # invokes: Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    .line 797
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v16

    .line 798
    .local v16, "tr":Ljava/lang/Throwable;
    :goto_9
    const-string v17, "REQ:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uncaught exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 731
    .end local v16    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 732
    .local v4, "er":Ljava/lang/InterruptedException;
    :try_start_c
    const-string v17, "REQ:RCVR"

    const-string v18, "dpmd socket open retry timer was interrupted"

    # invokes: Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_8

    .line 760
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "l":Landroid/net/LocalSocketAddress;
    .restart local v9    # "length":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 761
    .local v10, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 762
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/qti/dpm/DpmService;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v0, v10}, Lcom/qti/dpm/DpmService;->access$2900(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V

    .line 765
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 767
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "p":Landroid/os/Parcel;
    :catch_3
    move-exception v5

    .line 768
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v17, "REQ:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\'dpmd\' socket closed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 797
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "length":I
    :catch_4
    move-exception v16

    move-object v13, v14

    .end local v14    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    goto :goto_9

    .line 769
    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "l":Landroid/net/LocalSocketAddress;
    .restart local v9    # "length":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v16

    .line 770
    .restart local v16    # "tr":Ljava/lang/Throwable;
    const-string v17, "REQ:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uncaught exception read length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_2

    .line 794
    .end local v16    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "i":I
    .restart local v15    # "sz":I
    :cond_4
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 795
    monitor-exit v18

    goto/16 :goto_0

    .end local v15    # "sz":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v17
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    .line 715
    .end local v6    # "i":I
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "length":I
    .end local v14    # "s":Landroid/net/LocalSocket;
    .restart local v5    # "ex":Ljava/io/IOException;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v17

    goto/16 :goto_6

    .line 780
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "l":Landroid/net/LocalSocketAddress;
    .restart local v9    # "length":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v17

    goto/16 :goto_3

    .line 710
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "length":I
    :catch_8
    move-exception v5

    move-object v13, v14

    .end local v14    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
