.class Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;
.super Landroid/widget/ExpandableListConnector;
.source "ExpandableListViewMz.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;
.implements Lcom/meizu/widget/ListSelectFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandableListConnectorMz"
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 0
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v2

    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dividerEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v3

    .local v3, "result":Z
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    .end local v2    # "pos":Landroid/widget/ExpandableListPosition;
    .end local v3    # "result":Z
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    iget v5, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v4, v5, v6}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v3

    .local v3, "retValue":Z
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    return v3

    .end local v3    # "retValue":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    if-eqz v4, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    .local v1, "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isGroupSelectable(I)Z

    move-result v3

    .restart local v3    # "retValue":Z
    goto :goto_0

    .end local v1    # "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v3    # "retValue":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "retValue":Z
    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Lcom/meizu/widget/ListSelectFilter;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/meizu/widget/ListSelectFilter;

    .local v2, "filter":Lcom/meizu/widget/ListSelectFilter;
    invoke-interface {v2, p1}, Lcom/meizu/widget/ListSelectFilter;->isSelectable(I)Z

    move-result v1

    .end local v2    # "filter":Lcom/meizu/widget/ListSelectFilter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public topDividerEnabled()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v2

    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
