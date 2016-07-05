.class final Landroid/widget/AbsListView$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flymeCheckInRegion(Landroid/widget/AbsListView;II)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    goto :goto_0
.end method

.method static flymeContentFits(Landroid/widget/AbsListView;)Z
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static flymeOnOverScrolled(Landroid/widget/AbsListView;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "flag":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .end local v0    # "flag":Z
    :cond_1
    return-void
.end method

.method static flymeOnSizeChanged(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    return-void
.end method

.method static flymeOnTouchDown(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .local v0, "motionPosition":I
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    if-gez v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_2
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$MzCheckForLittleTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static flymeOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v1, v2}, Landroid/widget/AbsListView$FlymeInjector;->flymeCheckInRegion(Landroid/widget/AbsListView;II)V

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    :cond_3
    return-void

    .end local v0    # "action":I
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    goto :goto_0
.end method

.method static flymeOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method

.method static flymeStopPositionScroller(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    return-void
.end method

.method static flymeTrackMotionScroll(Landroid/widget/AbsListView;I)V
    .locals 11
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "incrementalDeltaY"    # I

    .prologue
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v9, :cond_1

    if-eqz p1, :cond_1

    if-gez p1, :cond_2

    move v7, v8

    .local v7, "up":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "child":Landroid/view/View;
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .local v6, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v9, v10

    .local v0, "bottom":I
    const/4 v2, 0x0

    .local v2, "findNewFocus":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .local v3, "focusedChild":Landroid/view/View;
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_1
    if-ne v2, v8, :cond_1

    if-eqz v7, :cond_5

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "findNewFocus":Z
    .end local v3    # "focusedChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "top":I
    .end local v7    # "up":Z
    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "findNewFocus":Z
    .restart local v3    # "focusedChild":Landroid/view/View;
    .restart local v5    # "size":I
    .restart local v6    # "top":I
    .restart local v7    # "up":Z
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    const/4 v2, 0x1

    goto :goto_1

    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method static getEdgeYGlowBottom(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "edgeY"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method static getEdgeYGlowTop(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "edgeY"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method static getFlymeChoiceMode(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    goto :goto_0
.end method

.method static initFlymeExtraFields(Landroid/widget/AbsListView;)V
    .locals 7
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetX:I

    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetY:I

    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackground:I

    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_filter:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_delete:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFlymeCanNfcShare:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsFlymeFlingToScroll:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeEnablePressStateOnCheck:Z

    iput-object v6, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    iput-object v6, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_check_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setDelayTopOverScrollEnabled(Z)V

    new-instance v1, Landroid/widget/AbsListView$DelayUpdate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$DelayUpdate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDelayUpdate:Ljava/lang/Runnable;

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mCenterContent:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeHasActionDrop:Z

    return-void
.end method

.method private static mzConfirmDragView(Landroid/widget/AbsListView;)V
    .locals 14
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v7, 0x0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .local v2, "dragAndDrapId":J
    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lt v10, v11, :cond_2

    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_2

    const/4 v5, 0x1

    .local v5, "isDragViewOnScreen":Z
    :goto_1
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_3

    if-eqz v5, :cond_3

    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    iget-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    invoke-static {p0, v10, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .end local v5    # "isDragViewOnScreen":Z
    :cond_2
    move v5, v7

    goto :goto_1

    .restart local v5    # "isDragViewOnScreen":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v1, :cond_0

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v6, v10, v4

    .local v6, "position":I
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .local v8, "searchId":J
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    iput v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    invoke-static {p0, v0, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static mzOnLayout(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    iget-wide v0, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeHasActionDrop:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method static mzOnLayout2(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {p0}, Landroid/widget/AbsListView$FlymeInjector;->mzConfirmDragView(Landroid/widget/AbsListView;)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    :cond_1
    return-void
.end method

.method static mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    move v0, v3

    .local v0, "alpha":I
    :goto_0
    instance-of v2, p1, Lcom/meizu/widget/ListDragShadowItem;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/meizu/widget/ListDragShadowItem;

    invoke-interface {v2}, Lcom/meizu/widget/ListDragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .end local v0    # "alpha":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    .restart local v0    # "alpha":I
    :cond_3
    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_2
.end method

.method static setFlymeChoiceMode(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 p1, 0x3

    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    goto :goto_0
.end method
