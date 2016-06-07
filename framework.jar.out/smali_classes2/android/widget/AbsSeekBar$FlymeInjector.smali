.class final Landroid/widget/AbsSeekBar$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isColorTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzDrawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private static getIntFromFloat(F)I
    .locals 1
    .param p0, "num"    # F

    .prologue
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static getPosByProgress(Landroid/widget/AbsSeekBar;I)I
    .locals 6
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    .local v0, "available":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v3

    .local v3, "x":I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .local v1, "prog":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    goto :goto_0
.end method

.method static initFlymeExtraFields(Landroid/widget/AbsSeekBar;)V
    .locals 3
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldScaledTouchSlop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldScaledTouchSlop()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchSlopSquare:I

    iput v2, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownY:F

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    return-void
.end method

.method static invalidateThumb(Landroid/widget/AbsSeekBar;)V
    .locals 7
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldThumbOffset()I

    move-result v4

    sub-int v0, v3, v4

    .local v0, "delta":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "thumbBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static mzDrawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .local v3, "thumbWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .local v4, "width":I
    const/4 v0, 0x0

    .local v0, "delta":I
    if-le v4, v3, :cond_0

    sub-int v5, v4, v3

    div-int/lit8 v0, v5, 0x2

    :cond_0
    int-to-float v5, v0

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v0    # "delta":I
    .end local v3    # "thumbWidth":I
    .end local v4    # "width":I
    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .local v1, "height":I
    const/4 v0, 0x0

    .restart local v0    # "delta":I
    if-le v1, v2, :cond_3

    sub-int v5, v1, v2

    div-int/lit8 v0, v5, 0x2

    :cond_3
    int-to-float v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method static mzInitTouchDownStates(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeInvokeMethodAttemptClaimDrag()V

    :cond_1
    return-void
.end method

.method static mzInitTouchDownStates2(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 3
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownY:F

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->flymeInvokeMethodTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method static mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 14
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v13, v10, :cond_7

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_4

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    if-nez v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    .local v8, "width":I
    int-to-float v10, v8

    sub-float/2addr v10, v9

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v11

    int-to-float v11, v11

    sub-float v6, v10, v11

    .local v6, "rtlX":F
    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v11

    int-to-float v11, v11

    sub-float v5, v10, v11

    .local v5, "rtlDragTouchDownX":F
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_1

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .end local v5    # "rtlDragTouchDownX":F
    .end local v6    # "rtlX":F
    .end local v8    # "width":I
    :cond_0
    :goto_0
    return-void

    .restart local v5    # "rtlDragTouchDownX":F
    .restart local v6    # "rtlX":F
    .restart local v8    # "width":I
    :cond_1
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .end local v5    # "rtlDragTouchDownX":F
    .end local v6    # "rtlX":F
    .end local v8    # "width":I
    :cond_2
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_3

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_3

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v11}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_3
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v10}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-static {p0, v11}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldKeyProgressIncrement()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    :cond_4
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_6

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v11

    sub-int v0, v10, v11

    .local v0, "available":I
    if-eqz v0, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    sub-float v1, v9, v10

    .local v1, "deltaX":F
    int-to-float v10, v0

    div-float v7, v1, v10

    .local v7, "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_5

    neg-float v7, v7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .local v3, "max":I
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    int-to-float v11, v3

    mul-float/2addr v11, v7

    invoke-static {v11}, Landroid/widget/AbsSeekBar$FlymeInjector;->getIntFromFloat(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v3    # "max":I
    .end local v7    # "scale":F
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->flymeInvokeMethodTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-ne v10, v11, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_a

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .restart local v1    # "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, "deltaY":F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchSlopSquare:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    if-nez v10, :cond_8

    iput v9, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    iput-boolean v13, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    :cond_8
    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->flymeGetFieldPaddingRight()I

    move-result v11

    sub-int v0, v10, v11

    .restart local v0    # "available":I
    if-eqz v0, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeDragTouchDownX:F

    sub-float v10, v9, v10

    int-to-float v11, v0

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_9

    neg-float v7, v7

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .restart local v3    # "max":I
    iget v10, p0, Landroid/widget/AbsSeekBar;->mFlymeTouchDownProgress:I

    int-to-float v11, v3

    mul-float/2addr v11, v7

    invoke-static {v11}, Landroid/widget/AbsSeekBar$FlymeInjector;->getIntFromFloat(F)I

    move-result v11

    add-int v4, v10, v11

    .local v4, "progress":I
    invoke-virtual {p0, v4, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "max":I
    .end local v4    # "progress":I
    .end local v7    # "scale":F
    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->flymeInvokeMethodTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method static mzSetInDragoning(Landroid/widget/AbsSeekBar;)V
    .locals 1
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mFlymeInDragoning:Z

    return-void
.end method

.method static setThumbWidth(Landroid/widget/AbsSeekBar;)V
    .locals 1
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mFlymeHalfThumbWidth:I

    :cond_0
    return-void
.end method
