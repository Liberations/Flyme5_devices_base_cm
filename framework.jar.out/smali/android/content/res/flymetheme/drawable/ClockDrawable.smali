.class public Landroid/content/res/flymetheme/drawable/ClockDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ClockDrawable.java"


# static fields
.field private static CLOCK_BG:Ljava/lang/String;

.field private static CLOCK_DEF:Ljava/lang/String;

.field private static CLOCK_HOUR:Ljava/lang/String;

.field private static CLOCK_MASK:Ljava/lang/String;

.field private static CLOCK_MINUTE:Ljava/lang/String;

.field private static CLOCK_SECOND:Ljava/lang/String;

.field private static DEBUG:Ljava/lang/Boolean;

.field private static LOG_TAG:Ljava/lang/String;

.field private static UPDATE_MESSAGE:I


# instance fields
.field availableHeight:I

.field availableWidth:I

.field centerX:I

.field centerY:I

.field mClockBg:Landroid/graphics/drawable/Drawable;

.field mClockDef:Landroid/graphics/drawable/Drawable;

.field mClockHour:Landroid/graphics/drawable/Drawable;

.field mClockMask:Landroid/graphics/drawable/Drawable;

.field mClockMinute:Landroid/graphics/drawable/Drawable;

.field mClockSecond:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDrawDefIcon:Z

.field private final mHandler:Landroid/os/Handler;

.field mHeigh:I

.field mTempHeigh:I

.field mTempWidth:I

.field private mUpdateTime:I

.field mWidth:I

.field final timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ClockDrawable"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->DEBUG:Ljava/lang/Boolean;

    const-string v0, "flyme_icon/com.android.alarmclock/clock_bg"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_BG:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.alarmclock/clock_hour"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_HOUR:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.alarmclock/clock_minute"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MINUTE:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.alarmclock/clock_second"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_SECOND:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.alarmclock/clock_mask"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MASK:Ljava/lang/String;

    const-string v0, "com.android.alarmclock"

    sput-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_DEF:Ljava/lang/String;

    const/16 v0, 0x3e9

    sput v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x78

    const/4 v3, 0x0

    const/16 v2, 0xf0

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mUpdateTime:I

    new-instance v0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;-><init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->timer:Ljava/util/Timer;

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    iput v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    iput v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    iput v2, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    iput-boolean v3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_HOUR:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MINUTE:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_SECOND:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_BG:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_MASK:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->CLOCK_DEF:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "flyme icon res is null, draw the def one!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    invoke-virtual {p0}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->update()V

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    :cond_2
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->timer:Ljava/util/Timer;

    new-instance v1, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;

    invoke-direct {v1, p0}, Landroid/content/res/flymetheme/drawable/ClockDrawable$2;-><init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mUpdateTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    sget v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "cal":Ljava/util/Calendar;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "minute":I
    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .local v8, "second":I
    int-to-float v10, v2

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    int-to-float v11, v4

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v11, v12

    add-float v3, v10, v11

    .local v3, "hourRotate":F
    int-to-float v10, v4

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v5, v10, v11

    .local v5, "minuteRotate":F
    int-to-float v10, v8

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v9, v10, v11

    .local v9, "secondRotate":F
    const/4 v7, 0x0

    .local v7, "scaled":Z
    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    if-lt v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    if-ge v10, v11, :cond_1

    :cond_0
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .local v6, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .end local v6    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mDrawDefIcon:Z

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockDef:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockHour:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMinute:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockSecond:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mTempHeigh:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mClockMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iput p3, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    iput p4, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    iget v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerX:I

    iget v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->centerY:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    sget v1, Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
