.class public Landroid/content/res/flymetheme/FlymeThemeService;
.super Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;
.source "FlymeThemeService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FlymeThemeService"


# instance fields
.field private final CHANGE_WALLPAPER_MESSAGE:I

.field private final DEBUG:Z

.field private final WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

.field private final WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

.field private mChangeWallpaperIntent:Ljava/lang/String;

.field private mChangeWallpaperTime:J

.field private mChangeWallpaperType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFontIntervalTime:I

.field private mFontPackageName:Ljava/lang/String;

.field private mFontWakeUpCount:I

.field private mFontWakeUpIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private mThemeIntervalTime:I

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeWakeUpCount:I

.field private mThemeWakeUpIntent:Landroid/content/Intent;

.field private mTrialFontStartTime:J

.field private mTrialThemeStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    const/16 v0, 0x3e9

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->CHANGE_WALLPAPER_MESSAGE:I

    const/16 v0, 0x3eb

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeService$1;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/FlymeThemeService$1;-><init>(Landroid/content/res/flymetheme/FlymeThemeService;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return v0
.end method

.method static synthetic access$1000(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    return-wide v0
.end method

.method static synthetic access$110(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 2
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return v0
.end method

.method static synthetic access$1100(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return v0
.end method

.method static synthetic access$1110(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 2
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return v0
.end method

.method static synthetic access$1200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    return v0
.end method

.method static synthetic access$200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    return-object v0
.end method

.method private checkSystemApp()Z
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "mClient":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSystemApp------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelChangeWallpaper()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymeThemeService"

    const-string v1, "cancelChangeWallpaper------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public cancelFontWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymeThemeService"

    const-string v1, "cancelFontWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    goto :goto_0
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymeThemeService"

    const-string v1, "canceWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    goto :goto_0
.end method

.method public createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "sendTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3ea

    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymeThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createChangeWallpaper------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-wide p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public isTrialFontAvailable()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymeThemeService"

    const-string v1, "isTrialFontAvailable------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startFontWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "fontPackageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3eb

    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    goto :goto_0
.end method

.method public startWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3e9

    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    const-string v0, "FlymeThemeService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
