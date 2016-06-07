.class public Landroid/content/res/flymetheme/drawable/CalendarDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "CalendarDrawable.java"


# static fields
.field public static CALENDAR_0:Ljava/lang/String;

.field public static CALENDAR_1:Ljava/lang/String;

.field public static CALENDAR_2:Ljava/lang/String;

.field public static CALENDAR_3:Ljava/lang/String;

.field public static CALENDAR_4:Ljava/lang/String;

.field public static CALENDAR_5:Ljava/lang/String;

.field public static CALENDAR_6:Ljava/lang/String;

.field public static CALENDAR_7:Ljava/lang/String;

.field public static CALENDAR_8:Ljava/lang/String;

.field public static CALENDAR_9:Ljava/lang/String;

.field public static CALENDAR_BG:Ljava/lang/String;

.field public static CALENDAR_DEF:Ljava/lang/String;

.field public static CALENDAR_MASK:Ljava/lang/String;

.field private static DEBUG:Ljava/lang/Boolean;

.field private static LOG_TAG:Ljava/lang/String;

.field private static UPDATE_MESSAGE:I


# instance fields
.field availableHeight:I

.field availableWidth:I

.field centerX:I

.field centerY:I

.field mCalendar0:Landroid/graphics/drawable/Drawable;

.field mCalendar1:Landroid/graphics/drawable/Drawable;

.field mCalendar2:Landroid/graphics/drawable/Drawable;

.field mCalendar3:Landroid/graphics/drawable/Drawable;

.field mCalendar4:Landroid/graphics/drawable/Drawable;

.field mCalendar5:Landroid/graphics/drawable/Drawable;

.field mCalendar6:Landroid/graphics/drawable/Drawable;

.field mCalendar7:Landroid/graphics/drawable/Drawable;

.field mCalendar8:Landroid/graphics/drawable/Drawable;

.field mCalendar9:Landroid/graphics/drawable/Drawable;

.field mCalendarBg:Landroid/graphics/drawable/Drawable;

.field mCalendarDef:Landroid/graphics/drawable/Drawable;

.field mCalendarMask:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDrawDefIcon:Z

.field private final mHandler:Landroid/os/Handler;

.field mHeigh:I

.field mTempHeigh:I

.field mTempWidth:I

.field private mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTime:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "CalendarDrawable"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    const-string v0, "flyme_icon/com.android.calendar/calendar_bg"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/calendar_mask"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_0"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_1"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_2"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_3"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_4"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_5"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_6"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_7"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_8"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    const-string v0, "flyme_icon/com.android.calendar/ic_launcher_calendar_9"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    const-string v0, "com.android.calendar"

    sput-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    const/16 v0, 0x3e9

    sput v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x78

    const/4 v4, 0x0

    const/16 v3, 0xf0

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mUpdateTime:I

    new-instance v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/res/flymetheme/drawable/CalendarDrawable$1;-><init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHandler:Landroid/os/Handler;

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    iput v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iput v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTempWidth:I

    iput v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTempHeigh:I

    iput-boolean v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    new-instance v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;

    invoke-direct {v1, p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;-><init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;)V

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarMask:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iput-boolean v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->update()V

    return-void

    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "flyme icon res is null, draw the def one!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    sget v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    sget v5, Lcom/flyme/internal/R$drawable;->calendar_mask:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    move-object v3, p2

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    return-object v3

    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {p2, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p2

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_6
    throw v5
.end method

.method private addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x0

    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {p0 .. p0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42ce0000    # 103.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x43700000    # 240.0f

    div-float v16, v17, v18

    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v14, 0x0

    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_1
    return-object v13

    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v16    # "y":F
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v7, v8}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v14, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v6

    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p1

    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    :cond_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v14, 0x0

    goto :goto_1

    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v13, p1

    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    :cond_4
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v14, 0x0

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v14, 0x0

    :cond_6
    throw v17
.end method

.method private addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v20, 0x0

    .local v20, "result":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .local v16, "l":J
    move-wide/from16 v0, v16

    long-to-int v12, v0

    .end local v16    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43700000    # 240.0f

    div-float v22, v5, v6

    .local v22, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .local v21, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v5, v21

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    move-object/from16 v20, v21

    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .end local v22    # "tanslateY":F
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-object v20

    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    goto :goto_0

    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v14

    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, p1

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    goto :goto_1

    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v20, p1

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v20

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    goto :goto_1

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eq v15, v6, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    :cond_3
    throw v5

    .restart local v2    # "sl":Landroid/text/StaticLayout;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "tanslateY":F
    :cond_4
    move-object/from16 v20, v21

    .end local v21    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "date"    # C
    .param p3, "h"    # I
    .param p4, "w"    # I

    .prologue
    const/high16 v6, 0x43700000    # 240.0f

    const/4 v0, 0x0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, p4

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p3

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    sget v5, Lcom/flyme/internal/R$array;->calendar_week_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "w":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, " getDayOfWeek: "

    invoke-static {v5, v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method private getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "date"    # C

    .prologue
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .local v0, "dr":I
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :pswitch_1
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_1:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_2:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_3:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_4:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_5:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_6:I

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_7:I

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_8:I

    goto :goto_0

    :pswitch_a
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_9:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .local v2, "scaled":Z
    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .end local v1    # "scale":F
    :cond_1
    iget-boolean v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mDrawDefIcon:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v8, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarDef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

    iget v7, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHeigh:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
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

    iput p3, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    iput p4, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    iget v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerX:I

    iget v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->centerY:I

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
    sget v1, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->UPDATE_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
