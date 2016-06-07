.class public Lcom/android/internal/policy/impl/MzMotionGesture;
.super Ljava/lang/Object;
.source "MzMotionGesture.java"


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1


# instance fields
.field private final BACK_GESTRUE_VALID_DISTANCE:I

.field private DEVICE_HEIGHT:I

.field private DEVICE_WIDTH:I

.field private final GESTURE_BACK_TRIGGER_DISTANCE:I

.field private final GESTURE_VALID_BOTTOM_OFFSET:I

.field private GESTURE_VALID_DOWN_POS:I

.field private RECENT_INVALID_OFFSET_TO_EDGE:I

.field private RECENT_LEFT_POS_MAX:I

.field private RECENT_LEFT_POS_MIN:I

.field private RECENT_PANEL_VALID_WIDE:I

.field private RECENT_RIGHT_POS_MAX:I

.field private RECENT_RIGHT_POS_MIN:I

.field private final RECENT_VALID_DISTANCE:I

.field private SLIDE_UP_IN_BACK_GUESTURE_MODE:I

.field private SLIDE_UP_IN_RECENT_PANEL_MODE:I

.field private final TAG:Ljava/lang/String;

.field private isBackGestureShow:Z

.field private mBackGestureDownPos:F

.field private mBackGestureStateSwtichStartPos:F

.field private mBackGestureValid:Z

.field private mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

.field public mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mMeizuEnableFullScreenDrag:I

.field private mRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

.field private mRecentPanelDownPos:F

.field private mRecentPanelDownTime:J

.field private mRecentPanelMoveTime:J

.field private mRecentPanelValid:I

.field mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

.field private preventTouchKey:Z

.field pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private slideMode:I

.field private win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "mzPw"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1e

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MzMotionGesture"

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->TAG:Ljava/lang/String;

    const/16 v0, 0x46

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_BOTTOM_OFFSET:I

    const/16 v0, 0x6c2

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    iput v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_VALID_DISTANCE:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_PANEL_VALID_WIDE:I

    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    iput-wide v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    iput-wide v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    iput v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_BACK_TRIGGER_DISTANCE:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->win:Landroid/view/WindowManagerPolicy$WindowState;

    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->BACK_GESTRUE_VALID_DISTANCE:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->registerEnableFullScreenDragSettingObserver()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->registerUserSwitchedBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MzMotionGesture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzMotionGesture;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V

    return-void
.end method

.method private checkSlideMode(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, "rot":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isBackGestureKeyValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isInBackGuestureModeArea(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    return v1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isInRecentPanelModeArea(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    goto :goto_0
.end method

.method private interceptActionMoveForBackGuesture(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .local v1, "rot":I
    if-ne v1, v4, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    .end local v1    # "rot":I
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setPreventBackGestureKey(Z)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "pos":F
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .restart local v1    # "rot":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_7

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    .end local v0    # "pos":F
    .end local v1    # "rot":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    .restart local v0    # "pos":F
    .restart local v1    # "rot":I
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    :cond_9
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_a

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto/16 :goto_1

    :cond_c
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private interceptActionMoveForRecentPanel(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, -0x1

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, "rot":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "rot":I
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v6, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    :cond_1
    return-void

    .restart local v0    # "rot":I
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    :cond_3
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_5

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    :cond_5
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    :cond_7
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private interceptActionUpForBackGuesture(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->getWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v4}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_0
.end method

.method private isInBackGuestureModeArea(Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isInRecentPanelModeArea(Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_8

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isLandScape()Z
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onEnableFullScreenDragSettingChanged()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_full_screen_drag"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    return-void
.end method

.method private registerEnableFullScreenDragSettingObserver()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "enable_full_screen_drag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/MzMotionGesture$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/MzMotionGesture$2;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerUserSwitchedBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/MzMotionGesture$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzMotionGesture$3;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateGestureBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MzMotionGesture$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture$1;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRecentPanel(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method


# virtual methods
.method public SetWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "windowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->win:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public cancelGlobalGestures()V
    .locals 8

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v7, -0x1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public configureGestureEffectStartArea()V
    .locals 8

    .prologue
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .local v3, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    .local v5, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .local v2, "height":I
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "deviceHeight":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "deviceWidth":I
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_HEIGHT:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_WIDTH:I

    add-int/lit8 v6, v0, -0x46

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->recent_invalid_offset_to_edge:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v4, v6, 0x3

    .local v4, "tmp":I
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    sub-int v6, v1, v6

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    return-void
.end method

.method public getWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->win:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    .local v0, "result":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0x2

    :cond_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->checkSlideMode(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setTouchValid(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isBackGestureKeyValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    :cond_4
    :goto_3
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isTaskPanelOrStatusBarEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-eq v1, v3, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isGlobalSystemUIShow()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->cancelGlobalGestures()V

    :cond_8
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_4
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_4

    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v2, :cond_c

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionMoveForBackGuesture(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    :cond_c
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionMoveForRecentPanel(Landroid/view/MotionEvent;)V

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    if-eqz v1, :cond_d

    and-int/lit8 v0, v0, -0x2

    :cond_d
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_f

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionUpForBackGuesture(Landroid/view/MotionEvent;)V

    and-int/lit8 v0, v0, -0x2

    :cond_e
    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setTouchValid(Z)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    iput v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setBackGestureKeyValid(Z)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    :cond_f
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v3, :cond_e

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v4, :cond_10

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectSlideUpHomeKey(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    and-int/lit8 v0, v0, -0x2

    goto :goto_5

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isGlobalSystemUIShow()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "show":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_WIDTH:I

    if-ne v5, v6, :cond_3

    move v2, v3

    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e0

    if-ne v3, v4, :cond_2

    const-string v3, "MzGlobalActions"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recentPanel"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recentPanelLand"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return v2

    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_HEIGHT:I

    if-ne v5, v6, :cond_5

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method public isTaskPanelOrStatusBarEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
