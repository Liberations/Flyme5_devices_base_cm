.class public Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"


# static fields
.field private static final DBG:Z = false

.field public static final DPM_NSRM_BLUETOOTH_STATE_EVT:I = 0x5

.field public static final DPM_NSRM_EMERGENCY_ALERT_STATE_EVT:I = 0xb

.field public static final DPM_NSRM_GPS_STATE_EVT:I = 0x2

.field public static final DPM_NSRM_HDMI_STATE_EVT:I = 0x8

.field public static final DPM_NSRM_HEADSET_STATE_EVT:I = 0x4

.field public static final DPM_NSRM_MICROPHONE_MUTE_STATE_EVT:I = 0x7

.field public static final DPM_NSRM_MUSIC_ACTIVE_STATE_EVT:I = 0x6

.field public static final DPM_NSRM_SCREEN_STATE_EVT:I = 0x1

.field public static final DPM_NSRM_SPEAKER_STATE_EVT:I = 0xa

.field public static final DPM_NSRM_USB_STATE_EVT:I = 0x3

.field public static final DPM_NSRM_VENDOR_TRIGGER_STATE_EVT:I = 0xc

.field public static final DPM_NSRM_WLAN_P2P_STATE_EVT:I = 0xd

.field public static final DPM_NSRM_WLAN_STATE_EVT:I = 0x9

.field public static final DPM_NSRM_WWAN_DATA_CONN_STATE_EVT:I = 0x0

.field private static final INTENT_FILTER_PRIORITY_HIGH:I = 0x3e7

.field public static final Nsrm_EVENT_STATE_OFF:Z = false

.field public static final Nsrm_EVENT_STATE_ON:Z = true

.field private static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM"

.field public static final TIMERPERIOD:I = 0x1388

.field public static final TIMERTIME:I = 0x1f4


# instance fields
.field private NsrmPollTimer:Ljava/util/Timer;

.field private bluetoothConnected:Z

.field private bluetoothConnected_shadow:Z

.field private gpsOn:Z

.field private gpsOn_shadow:Z

.field private hdmiConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDpm:Lcom/qti/dpm/DpmService;

.field private mFilter1:Landroid/content/IntentFilter;

.field private mFilter2:Landroid/content/IntentFilter;

.field private mFilter3:Landroid/content/IntentFilter;

.field mGpsListener:Landroid/location/GpsStatus$Listener;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocManager:Landroid/location/LocationManager;

.field private microphoneMuted:Z

.field private microphoneMuted_shadow:Z

.field private musicActive:Z

.field private musicActive_shadow:Z

.field private speakerOn:Z

.field private speakerOn_shadow:Z

.field private usbConnected:Z

.field private usbConnected_shadow:Z

.field private wifip2pOn:Z

.field private wiredHeadsetOn:Z

.field private wiredHeadsetOn_shadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    .line 97
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 275
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    .line 277
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->initialize()V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->pollBackgroundEvents()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return v0
.end method

.method static synthetic access$902(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return p1
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    .line 282
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    .line 296
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 297
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    .line 301
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 302
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 303
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 304
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 305
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 306
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 307
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 308
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    .line 309
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    .line 310
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    .line 311
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    .line 312
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    .line 313
    return-void
.end method

.method private pollBackgroundEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 335
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    :cond_0
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 377
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 378
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 380
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    if-eq v1, v2, :cond_1

    .line 382
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    invoke-direct {p0, v6, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 384
    :cond_1
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    if-eq v1, v2, :cond_2

    .line 386
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    invoke-direct {p0, v5, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 389
    :cond_2
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    if-eq v1, v2, :cond_3

    .line 390
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    invoke-direct {p0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 393
    :cond_3
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 394
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 395
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 396
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 397
    return-void

    .line 353
    :cond_4
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    goto :goto_0
.end method

.method private sendNsrmState(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 317
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 318
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 319
    const-string v1, "DPM:NSRM"

    const-string v2, "sendNsrmState: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const-string v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNsrmState: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v1, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    goto :goto_0

    .line 324
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected recoverNSRMEventStates()V
    .locals 2

    .prologue
    .line 400
    const-string v0, "DPM:NSRM"

    const-string v1, "Recover NSRM Event States"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 403
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 404
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 405
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 406
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 409
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 410
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 411
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 412
    return-void
.end method
