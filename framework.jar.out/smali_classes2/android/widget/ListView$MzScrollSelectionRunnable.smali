.class final Landroid/widget/ListView$MzScrollSelectionRunnable;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MzScrollSelectionRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x1

.field private static final SCROLL_SPEED:I = 0xa


# instance fields
.field private mStart:Z

.field private mUpSelect:Z

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mUpSelect:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mStart:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mStart:Z

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v14, -0x1

    const/4 v1, 0x0

    const/16 v13, 0xa

    .local v13, "speed":I
    const/4 v10, 0x0

    .local v10, "atEdge":Z
    const/4 v11, 0x0

    .local v11, "atEnd":Z
    iget-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mUpSelect:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v13, v13}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    move-result v10

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->mzFindCandidateScrollSelection(Z)I

    move-result v12

    .local v12, "candidatePosition":I
    if-ne v12, v14, :cond_0

    const/4 v11, 0x1

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    if-eq v0, v12, :cond_1

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mLastUpSelectPosition:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/ListView;->mzUpSelect(II)V

    :cond_1
    if-eqz v10, :cond_2

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_2

    const/4 v11, 0x1

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->mzCorrectTooLow(I)V

    :cond_2
    :goto_0
    if-nez v11, :cond_3

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    .end local v12    # "candidatePosition":I
    :cond_4
    mul-int/lit8 v13, v13, -0x1

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_9

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    :cond_5
    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    neg-int v2, v13

    iget-object v3, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->flymeGetFieldScrollY()I

    move-result v4

    iget-object v3, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v8, v3, Landroid/widget/ListView;->mOverscrollDistance:I

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ListView;->flymeInvokeMethodOverScrollBy(IIIIIIIIZ)Z

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->flymeGetFieldScrollY()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->flymeSetFieldScrollY(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->mzFindCandidateScrollSelection(Z)I

    move-result v12

    .restart local v12    # "candidatePosition":I
    if-ne v12, v14, :cond_7

    const/4 v11, 0x1

    :cond_7
    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    if-eq v0, v12, :cond_8

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mLastDownSelectPosition:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/ListView;->mzDownSelect(II)V

    :cond_8
    if-eqz v10, :cond_2

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mItemCount:I

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->mzCorrectTooHigh(I)V

    goto :goto_0

    .end local v12    # "candidatePosition":I
    :cond_9
    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, v13, v13}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    move-result v10

    goto :goto_1
.end method

.method public startScrollSelecte(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mUpSelect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->mStart:Z

    iget-object v0, p0, Landroid/widget/ListView$MzScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
