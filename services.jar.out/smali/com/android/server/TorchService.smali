.class public Lcom/android/server/TorchService;
.super Landroid/hardware/ITorchService$Stub;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TorchService$CameraUserRecord;
    }
.end annotation


# static fields
.field private static final ACTION_TURN_FLASHLIGHT_OFF:Ljava/lang/String; = "com.android.server.TorchService.ACTION_TURN_FLASHLIGHT_OFF"

.field private static final DEBUG:Z

.field private static final DISPATCH_AVAILABILITY_CHANGED:I = 0x2

.field private static final DISPATCH_ERROR:I = 0x0

.field private static final DISPATCH_STATE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mFlashDevice:Ljava/lang/String;

.field private static mUseCameraInterface:Z

.field private static mValueOff:I

.field private static mValueOn:I


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCamerasInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/TorchService$CameraUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFlashDeviceWriter:Ljava/io/FileWriter;

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/ITorchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningCamera:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTorchAppUid:I

.field private mTorchAvailable:Z

.field private mTorchCameraId:I

.field private final mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private mTorchEnabled:Z

.field private final mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const-class v0, Lcom/android/server/TorchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    .line 114
    sput v2, Lcom/android/server/TorchService;->mValueOff:I

    .line 115
    const/16 v0, 0xe6

    sput v0, Lcom/android/server/TorchService;->mValueOn:I

    .line 116
    const-string v0, "/sys/class/leds/led:torch_0/brightness"

    sput-object v0, Lcom/android/server/TorchService;->mFlashDevice:Ljava/lang/String;

    .line 117
    sput-boolean v2, Lcom/android/server/TorchService;->mUseCameraInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/hardware/ITorchService$Stub;-><init>()V

    .line 83
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 103
    new-instance v0, Lcom/android/server/TorchService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$1;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;

    .line 498
    new-instance v0, Lcom/android/server/TorchService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$3;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    .line 505
    new-instance v0, Lcom/android/server/TorchService$4;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$4;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    .line 548
    new-instance v0, Lcom/android/server/TorchService$5;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$5;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 578
    new-instance v0, Lcom/android/server/TorchService$6;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$6;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    .line 597
    new-instance v0, Lcom/android/server/TorchService$7;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$7;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 133
    iput-object p1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    .line 135
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/TorchService;->initialize()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TorchService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TorchService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/TorchService;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/TorchService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/TorchService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->setNotificationShown(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TorchService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/TorchService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    return p1
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.TorchService.ACTION_TURN_FLASHLIGHT_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "fireMe":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const v3, 0x10400cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const v3, 0x10400d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x108043c

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 524
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 525
    return-void
.end method

.method private dispatchError()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-direct {p0, v0, v0}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 521
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 7
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 528
    iget-object v5, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 529
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 530
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 531
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/hardware/ITorchCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .local v3, "l":Landroid/hardware/ITorchCallback;
    if-nez p1, :cond_1

    .line 534
    :try_start_1
    invoke-interface {v3}, Landroid/hardware/ITorchCallback;->onTorchError()V

    .line 530
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 536
    invoke-interface {v3, p2}, Landroid/hardware/ITorchCallback;->onTorchStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v6, "Unable to post progress to client listener"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 545
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "l":Landroid/hardware/ITorchCallback;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 537
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "l":Landroid/hardware/ITorchCallback;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 538
    :try_start_3
    invoke-interface {v3, p2}, Landroid/hardware/ITorchCallback;->onTorchAvailabilityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 544
    .end local v3    # "l":Landroid/hardware/ITorchCallback;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 545
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 546
    return-void
.end method

.method private dispatchStateChange(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 517
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 334
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 335
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 336
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 384
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 385
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 386
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 387
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 392
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 383
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v6, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 363
    .local v4, "outputSizes":[Landroid/util/Size;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    .line 364
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 367
    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 368
    .local v1, "chosen":Landroid/util/Size;
    move-object v0, v4

    .local v0, "arr$":[Landroid/util/Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 369
    .local v5, "s":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 370
    move-object v1, v5

    .line 368
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v5    # "s":Landroid/util/Size;
    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    .line 491
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-direct {p0}, Lcom/android/server/TorchService;->dispatchError()V

    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    .line 495
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    .line 378
    iget-object v0, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method private removeCameraUserLocked(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TorchService$CameraUserRecord;

    .line 462
    .local v0, "record":Lcom/android/server/TorchService$CameraUserRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 463
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing camera user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 466
    :cond_1
    return-void
.end method

.method private setListenForScreenOff(Z)V
    .locals 4
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 188
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/TorchService;->mReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.TorchService.ACTION_TURN_FLASHLIGHT_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TorchService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TorchService;->mReceiverRegistered:Z

    .line 201
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-nez p1, :cond_0

    .line 195
    iget-boolean v1, p0, Lcom/android/server/TorchService;->mReceiverRegistered:Z

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TorchService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iput-boolean v3, p0, Lcom/android/server/TorchService;->mReceiverRegistered:Z

    .line 199
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/TorchService;->setNotificationShown(Z)V

    goto :goto_0
.end method

.method private setNotificationShown(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 158
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 160
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 161
    const v3, 0x10400cf

    invoke-direct {p0}, Lcom/android/server/TorchService;->buildNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return-void

    .line 163
    :cond_0
    const v3, 0x10400cf

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v2    # "nm":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 342
    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "cameraId":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDevice(), cameraID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    .line 346
    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 347
    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 351
    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/TorchService;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 352
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 353
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v0, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 357
    return-void
.end method

.method private teardownTorch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 469
    invoke-direct {p0, v2}, Lcom/android/server/TorchService;->setListenForScreenOff(Z)V

    .line 470
    invoke-direct {p0, v2}, Lcom/android/server/TorchService;->dispatchStateChange(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 473
    iput-object v1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 475
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    .line 476
    iput-object v1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 477
    iput-object v1, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 478
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 481
    :cond_1
    iput-object v1, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    .line 482
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 485
    :cond_2
    iput-object v1, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 487
    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 7
    .param p1, "forceDisable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 399
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 400
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 401
    .local v2, "enabled":Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    sget-boolean v4, Lcom/android/server/TorchService;->mUseCameraInterface:Z

    if-eqz v4, :cond_5

    .line 403
    if-eqz v2, :cond_4

    .line 404
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    .line 405
    iget-boolean v4, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    if-nez v4, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/server/TorchService;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 458
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 400
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v5, "Error in updateFlashlight"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    goto :goto_1

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "enabled":Z
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v4, :cond_3

    .line 411
    invoke-direct {p0}, Lcom/android/server/TorchService;->startSession()V

    goto :goto_1

    .line 454
    .end local v2    # "enabled":Z
    :catch_1
    move-exception v1

    goto :goto_2

    .line 414
    .restart local v2    # "enabled":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v4, :cond_4

    .line 415
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 417
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 418
    iget-object v4, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 419
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 420
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 421
    iput-object v3, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 422
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/TorchService;->dispatchStateChange(Z)V

    .line 450
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_4
    :goto_3
    if-nez v2, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V

    goto :goto_1

    .line 454
    .end local v2    # "enabled":Z
    :catch_2
    move-exception v1

    goto :goto_2

    .line 429
    .restart local v2    # "enabled":Z
    :cond_5
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v4, :cond_6

    .line 431
    :try_start_6
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lcom/android/server/TorchService;->mFlashDevice:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 438
    :cond_6
    :goto_4
    :try_start_7
    iget-object v5, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;

    if-eqz v2, :cond_7

    sget v4, Lcom/android/server/TorchService;->mValueOn:I

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 440
    if-nez v2, :cond_4

    .line 441
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 442
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/TorchService;->mFlashDeviceWriter:Ljava/io/FileWriter;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 444
    :catch_3
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v5, "Error writing to flashlight sysfs"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    goto :goto_3

    .line 432
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 433
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v5, "Error creating new mFlashDeviceWriter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 438
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_9
    sget v4, Lcom/android/server/TorchService;->mValueOff:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5
.end method


# virtual methods
.method public addListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .param p1, "l"    # Landroid/hardware/ITorchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 298
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 309
    iget-object v4, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump torch service from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v4, "Current torch service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const-string v4, " Active cameras:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 318
    iget-object v4, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 319
    .local v0, "cameraId":I
    iget-object v4, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TorchService$CameraUserRecord;

    .line 320
    .local v3, "record":Lcom/android/server/TorchService$CameraUserRecord;
    iget v4, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    if-ne v0, v4, :cond_1

    const/4 v2, 0x1

    .line 321
    .local v2, "isTorch":Z
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    const-string v4, "torch"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "): pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/TorchService$CameraUserRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/TorchService$CameraUserRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v2    # "isTorch":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 321
    .restart local v2    # "isTorch":Z
    :cond_2
    const-string v4, "camera"

    goto :goto_3

    .line 324
    .end local v0    # "cameraId":I
    .end local v2    # "isTorch":Z
    .end local v3    # "record":Lcom/android/server/TorchService$CameraUserRecord;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mTorchEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mTorchAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mTorchAppUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mTorchCameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mCameraDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mOpeningCamera="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    .line 150
    sget-boolean v1, Lcom/android/server/TorchService;->mUseCameraInterface:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 4

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-boolean v1, Lcom/android/server/TorchService;->mUseCameraInterface:Z

    if-eqz v1, :cond_0

    .line 279
    iget-boolean v1, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return v1

    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/TorchService;->mFlashDevice:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isTorchOn()Z
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return v0
.end method

.method public onCameraClosed(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 249
    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed(token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    .line 252
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpened(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 205
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpened(token= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "needTorchShutdown":Z
    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2

    .line 209
    :try_start_0
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v1, v3, :cond_4

    .line 210
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Camera was opened by torch app"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    iput p2, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 222
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-eqz v0, :cond_3

    .line 226
    iget-object v1, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 230
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/server/TorchService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/TorchService$2;-><init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 239
    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/TorchService$CameraUserRecord;

    invoke-direct {v3, p1}, Lcom/android/server/TorchService$CameraUserRecord;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    :goto_1
    return-void

    .line 215
    :cond_4
    :try_start_3
    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    if-ne p2, v1, :cond_2

    .line 216
    sget-boolean v1, Lcom/android/server/TorchService;->mUseCameraInterface:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    :cond_5
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Need to kill torch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 241
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 242
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .param p1, "l"    # Landroid/hardware/ITorchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 305
    return-void
.end method

.method public declared-synchronized setTorchEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->setListenForScreenOff(Z)V

    .line 263
    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleTorch()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/TorchService;->setTorchEnabled(Z)V

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
