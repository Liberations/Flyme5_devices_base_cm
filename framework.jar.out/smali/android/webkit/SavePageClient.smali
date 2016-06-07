.class public Landroid/webkit/SavePageClient;
.super Ljava/lang/Object;
.source "SavePageClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSaveDir(Landroid/webkit/ValueCallback;Z)V
    .locals 0
    .param p2, "canSaveAsComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    return-void
.end method

.method public onSaveFinish(II)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "id"    # I

    .prologue
    return-void
.end method

.method public onSavePageStart(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onSaveProgressChange(II)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "id"    # I

    .prologue
    return-void
.end method
