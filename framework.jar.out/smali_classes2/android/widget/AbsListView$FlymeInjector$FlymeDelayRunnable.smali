.class final Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDelayRunnable"
.end annotation


# instance fields
.field private view:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->view:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->view:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->startMultiChoice()Z

    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->view:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    return-void
.end method
