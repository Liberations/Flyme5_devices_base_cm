.class final Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mDropDownPaddingEnd:I

.field private mDropDownPaddingStart:I

.field private mDropDownPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    iput p1, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingEnd:I

    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    iput p1, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingStart:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    iput p1, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingTop:I

    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .local v0, "buildDropDown":Z
    :goto_0
    iget v2, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingStart:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingTop:I

    iget v4, p0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->mDropDownPaddingEnd:I

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;->setDropDownListViewPadding(IIII)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    .end local v0    # "buildDropDown":Z
    :cond_0
    move v0, v1

    goto :goto_0
.end method
