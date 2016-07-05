.class public Lcom/android/server/GestureManagerService;
.super Landroid/view/IGestureManager$Stub;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureManagerService$GestureObserver;,
        Lcom/android/server/GestureManagerService$BinderDeath;,
        Lcom/android/server/GestureManagerService$GestureListener;
    }
.end annotation


# static fields
.field private static final ALL_GESTURE_DISABLE:B = 0x0t

.field private static final ALL_GESTURE_ENABLE:B = 0x1t

.field private static final CONTORL_DISABLE_ALL:I = 0x0

.field private static final CONTORL_ENABLE_DRAW_C:I = 0x20

.field private static final CONTORL_ENABLE_DRAW_E:I = 0x40

.field private static final CONTORL_ENABLE_DRAW_M:I = 0x80

.field private static final CONTORL_ENABLE_DRAW_O:I = 0x100

.field private static final CONTORL_ENABLE_DRAW_S:I = 0x200

.field private static final CONTORL_ENABLE_DRAW_V:I = 0x400

.field private static final CONTORL_ENABLE_DRAW_W:I = 0x800

.field private static final CONTORL_ENABLE_DRAW_Z:I = 0x1000

.field private static final CONTORL_ENABLE_SLIDE_DOWN:I = 0x10

.field private static final CONTORL_ENABLE_SLIDE_LEFT:I = 0x2

.field private static final CONTORL_ENABLE_SLIDE_RIGHT:I = 0x4

.field private static final CONTORL_ENABLE_SLIDE_UP:I = 0x8

.field private static final CONTORL_ENABLE_TAP:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DRAW_C_ENABLE:I = 0x2

.field private static final DRAW_E_ENABLE:I = 0x4

.field private static final DRAW_M_ENABLE:I = 0x10

.field private static final DRAW_O_ENABLE:I = 0x80

.field private static final DRAW_S_ENABLE:I = 0x20

.field private static final DRAW_V_ENABLE:I = 0x1

.field private static final DRAW_W_ENABLE:I = 0x8

.field private static final DRAW_Z_ENABLE:I = 0x40

.field private static final SLIDE_DOWN_ENABLE:B = 0x4t

.field private static final SLIDE_LEFT_ENABLE:B = 0x2t

.field private static final SLIDE_RIGHT_ENABLE:B = 0x1t

.field private static final SLIDE_UP_ENABLE:B = 0x8t

.field private static final TAG:Ljava/lang/String; = "GestureManager"

.field private static final TAP_ENABLE:B = 0x1t

.field private static final TYPE_ABC:B = 0x3t

.field private static final TYPE_ALL:B = 0x1t

.field private static final TYPE_SLIDE:B = 0x4t

.field private static final TYPE_TAP:B = 0x2t

.field private static final VIBRATE_TIME_LONG:I = 0x32

.field private static final VIBRATE_TIME_SHORT:I = 0x19


# instance fields
.field mABCControl:[B

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGestureAllDisable:I

.field private mGestureControlPath:Ljava/lang/String;

.field private mGestureDataPath:Ljava/lang/String;

.field private mGestureGlobalSwitch:I

.field mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

.field mHandler:Landroid/os/Handler;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GestureManagerService$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSlideControl:[B

.field mTapControl:[B

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/IGestureManager$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    new-instance v0, Lcom/android/server/GestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureManagerService$1;-><init>(Lcom/android/server/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/server/GestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/GestureManagerService$2;-><init>(Lcom/android/server/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->gesture_data_path_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->gesture_control_path_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/GestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/GestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return p1
.end method

.method static synthetic access$276(Lcom/android/server/GestureManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/GestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/GestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/GestureManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/GestureManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->notifyListeners(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/GestureManagerService;[BI)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureManagerService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/GestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    return-void
.end method

.method private disableAllGesture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, "mDisableAllGesture":[B
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    invoke-direct {p0, v0}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    return-void
.end method

.method private enableAllGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, "mEnableAllGesture":[B
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    return-void
.end method

.method private findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;
    .locals 3
    .param p1, "callback"    # Landroid/view/IGestureCallback;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GestureManagerService$GestureListener;

    .local v1, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    iget-object v2, v1, Lcom/android/server/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    if-ne p1, v2, :cond_0

    .end local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :goto_1
    return-object v1

    .restart local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initGestureControl()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_double_click"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "enable":I
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v6, v1, v6

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    if-ne v0, v2, :cond_d

    move v1, v2

    :goto_0
    aput-byte v1, v4, v3

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    const-string v1, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_TAP initGestureControl , write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    invoke-direct {p0, v5, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aget-byte v1, v1, v3

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aput-byte v7, v1, v6

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aput-byte v3, v1, v3

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_left_right"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_up"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_down"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_3
    const-string v1, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_SLIDE initGestureControl , write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    invoke-direct {p0, v5, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGestureAllDisable is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    const/4 v4, 0x3

    aput-byte v4, v1, v6

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aput-byte v3, v1, v3

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_c"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_4
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_e"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_m"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_o"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_7
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_s"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_8
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_v"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_9
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_w"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_a
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_z"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    :cond_b
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_ABC initGestureControl , write: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    invoke-direct {p0, v4, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mGestureAllDisable is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_quick_wakeup_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGestureControl , mGestureGlobalSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    if-nez v1, :cond_e

    :cond_c
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    :goto_1
    return-void

    :cond_d
    move v1, v3

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    goto :goto_1
.end method

.method private notifyListeners(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    check-cast v2, Lcom/android/server/GestureManagerService$GestureListener;

    .restart local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/android/server/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    invoke-interface {v3, p1}, Landroid/view/IGestureCallback;->onGestureTrigger(I)V

    const-string v3, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListeners "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private readFrom(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    new-array v0, v7, [B

    .local v0, "buffer":[B
    const/4 v2, 0x0

    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "ret":I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "GestureManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFrom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gesture type is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return v7

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    .restart local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v7, "GestureManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    move v7, v5

    goto :goto_1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "GestureManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_6
    throw v7

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private toString([BI)Ljava/lang/String;
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    new-array v1, p2, [B

    .local v1, "forLog":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    aget-byte v5, p1, v2

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "null"

    .local v3, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeByteToControl([B)V
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "GestureManager"

    const-string v4, "writeByteToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "GestureManager"

    const-string v4, "writeByteToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_3
    :goto_1
    throw v3

    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public pauseAllGesture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/view/IGestureCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;

    move-result-object v1

    .local v1, "find":Lcom/android/server/GestureManagerService$GestureListener;
    if-eqz v1, :cond_0

    const-string v4, "GestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add duplicate listeners: tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/server/GestureManagerService$GestureListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/GestureManagerService$GestureListener;-><init>(Lcom/android/server/GestureManagerService;Landroid/view/IGestureCallback;Ljava/lang/String;)V

    .local v2, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    new-instance v0, Lcom/android/server/GestureManagerService$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, p0, p2, v4, v2}, Lcom/android/server/GestureManagerService$BinderDeath;-><init>(Lcom/android/server/GestureManagerService;Ljava/lang/String;ILcom/android/server/GestureManagerService$GestureListener;)V

    .local v0, "binderDeath":Lcom/android/server/GestureManagerService$BinderDeath;
    invoke-interface {p1}, Landroid/view/IGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "ret":Z
    const-string v4, "GestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add listeners: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mListeners.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    .end local v0    # "binderDeath":Lcom/android/server/GestureManagerService$BinderDeath;
    .end local v1    # "find":Lcom/android/server/GestureManagerService$GestureListener;
    .end local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeCallback(Landroid/view/IGestureCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/view/IGestureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;

    move-result-object v0

    .local v0, "find":Lcom/android/server/GestureManagerService$GestureListener;
    if-nez v0, :cond_0

    const-string v1, "GestureManager"

    const-string v2, "can\'t find the listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object tried to remove listeners: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mListeners.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    .end local v0    # "find":Lcom/android/server/GestureManagerService$GestureListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeAllGesture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->initGestureControl()V

    new-instance v0, Lcom/android/server/GestureManagerService$GestureObserver;

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureManagerService$GestureObserver;-><init>(Lcom/android/server/GestureManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_left_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_down"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_c"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_e"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_m"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_o"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_s"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_v"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_w"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_z"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_double_click"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "GestureManager"

    const-string v1, "system startWatching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public triggerGesture()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "type":I
    sget-object v2, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/GestureManagerService;->readFrom(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_2
    move v1, v0

    .local v1, "type_l":I
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/GestureManagerService$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/GestureManagerService$3;-><init>(Lcom/android/server/GestureManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
