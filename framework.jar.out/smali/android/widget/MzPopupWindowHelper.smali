.class public Landroid/widget/MzPopupWindowHelper;
.super Ljava/lang/Object;
.source "MzPopupWindowHelper.java"


# static fields
.field public static final INPUT_METHOD_IGNORE_DISPLAY_FRAME:I = 0x4

.field public static final LAYOUT_MODE_AUTO:I = 0x1

.field public static final LAYOUT_MODE_CENTER:I = 0x2

.field public static final LAYOUT_MODE_CENTER_IN_SCREEN:I = 0x3

.field public static final LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_LEFT:I = 0x6

.field public static final LAYOUT_MODE_RIGHT:I = 0x4

.field public static final LAYOUT_MODE_RIGHT_IN_SCREEN:I = 0x5


# instance fields
.field protected mAdjustWindowPosition:Z

.field private mContext:Landroid/content/Context;

.field private mInputMethodMode:I

.field private mLayoutMode:I

.field private mMzClipToScreen:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    iput-object p1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .prologue
    const/4 v5, 0x3

    iget-boolean v1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    if-eqz p3, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0
.end method

.method public adjustWindowPositionForMz(Z)V
    .locals 0
    .param p1, "adjust"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    return-void
.end method

.method public clipToScreenWithDeviceDefaultTheme(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[IZ)Z
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "onTop"    # Z
    .param p4, "yoff"    # I
    .param p5, "screenLocation"    # [I
    .param p6, "clipToScreen"    # Z

    .prologue
    const/4 v5, 0x1

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .local v0, "displayFrameWidth":I
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    sub-int v4, v6, v7

    .local v4, "right":I
    if-le v4, v0, :cond_3

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v4, v0

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    if-eqz p3, :cond_6

    aget v6, p5, v5

    add-int/2addr v6, p4

    iget-object v7, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v7

    sub-int v2, v6, v7

    .local v2, "popupTop":I
    if-gez v2, :cond_5

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .end local v2    # "popupTop":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_6
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method public clipToScreenWithoutBackGround(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[I)Z
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "onTop"    # Z
    .param p4, "yoff"    # I
    .param p5, "screenLocation"    # [I

    .prologue
    const/4 v5, 0x1

    iget-boolean v6, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .local v0, "displayFrameWidth":I
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v6, v7

    .local v4, "right":I
    if-le v4, v0, :cond_3

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v4, v0

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    if-eqz p3, :cond_6

    aget v6, p5, v5

    add-int/2addr v6, p4

    iget-object v7, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v7

    sub-int v2, v6, v7

    .local v2, "popupTop":I
    if-gez v2, :cond_5

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .end local v2    # "popupTop":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_6
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method public meansurePopupPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Z[I)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "displayFrame"    # Landroid/graphics/Rect;
    .param p6, "onTop"    # Z
    .param p7, "drawingLocation"    # [I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/widget/MzPopupWindowHelper;->setLayoutMode(I)V

    :cond_0
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-nez v4, :cond_1

    :goto_0
    return-object p2

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_preference_list_popup_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .local v1, "padding":I
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .local v3, "screenCenterX":I
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .local v0, "anchorCenterX":I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v4, v0, -0x1

    if-gt v4, v3, :cond_5

    add-int/lit8 v4, v0, 0x1

    if-gt v3, v4, :cond_5

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .end local v0    # "anchorCenterX":I
    .end local v3    # "screenCenterX":I
    :pswitch_1
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_3
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .restart local v0    # "anchorCenterX":I
    .restart local v3    # "screenCenterX":I
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v0, -0x1

    if-le v4, v3, :cond_6

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, p5, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    aget v5, p7, v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    :cond_6
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .end local v0    # "anchorCenterX":I
    .end local v3    # "screenCenterX":I
    :pswitch_2
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    :pswitch_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    neg-int v4, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_7

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_7
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :pswitch_4
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_8

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_8
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :pswitch_5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_9

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_5
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_9
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v4, :cond_3

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_3

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_0

    :cond_3
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v4

    if-ge v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p3, v4

    if-lt v2, v4, :cond_0

    :cond_3
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setInputMethodMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    return-void
.end method

.method public setMzClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    return-void
.end method
