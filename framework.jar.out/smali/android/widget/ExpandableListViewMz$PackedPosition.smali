.class public Landroid/widget/ExpandableListViewMz$PackedPosition;
.super Ljava/lang/Object;
.source "ExpandableListViewMz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackedPosition"
.end annotation


# instance fields
.field public childPosition:I

.field public groupPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    iput p2, p0, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    return-void
.end method
