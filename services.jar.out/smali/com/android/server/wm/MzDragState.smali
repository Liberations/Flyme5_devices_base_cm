.class public Lcom/android/server/wm/MzDragState;
.super Lcom/android/server/wm/DragState;
.source "MzDragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MzDragState$DragAnimator;
    }
.end annotation


# static fields
.field static final ANIM_BACK:I = 0x0

.field static final ANIM_DISMISS:I = 0x1

.field static final ANIM_IDLE:I = -0x1

.field static final ANIM_NFC:I = 0x2


# instance fields
.field mAnimType:I

.field mCurrentSurfaceX:F

.field mCurrentSurfaceY:F

.field mDragAnimation:Ljava/lang/Runnable;

.field mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

.field mDragObjectAnimator:Landroid/animation/AnimatorSet;

.field mDragStateResetRunnable:Ljava/lang/Runnable;

.field mIsDragAnimating:Z

.field mNfcShareReceiver:Landroid/content/BroadcastReceiver;

.field mReachStatusBarNfc:Z

.field mRecoverAnimNfc:Z

.field mStartAnimation:Ljava/lang/Runnable;

.field mUnRegisterReceiversRunnable:Ljava/lang/Runnable;

.field mUpdateCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mReachStatusBarNfc:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mRecoverAnimNfc:Z

    iput v0, p0, Lcom/android/server/wm/MzDragState;->mUpdateCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    new-instance v0, Lcom/android/server/wm/MzDragState$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$1;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mStartAnimation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/MzDragState$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$2;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/MzDragState$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$3;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/MzDragState$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$4;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mDragAnimation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/MzDragState$5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$5;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mUnRegisterReceiversRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/MzDragState$6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$6;-><init>(Lcom/android/server/wm/MzDragState;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mDragStateResetRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mMzOnTouching:Z

    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mMzOnTouching:Z

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    return-void
.end method

.method endDragLw()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget v0, p0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragStateResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragStateResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected mzBroadcastDragCanceledLw()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x64

    iget-boolean v6, p0, Lcom/android/server/wm/MzDragState;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .local v8, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .local v10, "ws":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-cancel window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "ws":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v11, p0, Lcom/android/server/wm/MzDragState;->mDragInProgress:Z

    iput-boolean v11, p0, Lcom/android/server/wm/MzDragState;->mMzOnTouching:Z

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    return-void
.end method

.method public mzCancelDragLw()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->mzBroadcastDragCanceledLw()V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragStateResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public mzEndDragLwAnimation()V
    .locals 6

    .prologue
    iget-boolean v1, p0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MzDragState;->endDragLw()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/wm/MzDragState$DragAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$DragAnimator;-><init>(Lcom/android/server/wm/MzDragState;)V

    .local v0, "dragAnimator":Lcom/android/server/wm/MzDragState$DragAnimator;
    # invokes: Lcom/android/server/wm/MzDragState$DragAnimator;->createAnimation()Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/server/wm/MzDragState$DragAnimator;->access$000(Lcom/android/server/wm/MzDragState$DragAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/MzDragState;->mDragAnimation:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public mzIsDragAnimation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    return v0
.end method

.method public mzRegisterReceivers()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "meizu.intent.action.MEIZU_NFC_SHARE_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "meizu.intent.action.MEIZU_NFC_SHARE_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "meizu.intent.action.MEIZU_DRAG_DROP_ANIM_TYPE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "delFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected mzSendDragStartedLw()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MzDragState;->mUpdateCount:I

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic mzSetInitXAndY(FF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->mzSetInitXAndY(FF)V

    return-void
.end method

.method public bridge synthetic mzSetWidthAndHeight(FF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->mzSetWidthAndHeight(FF)V

    return-void
.end method

.method public mzUnRegisterReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/server/wm/MzDragState;->mNfcShareReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/server/wm/MzDragState;->mDragDropAnimTypeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method notifyDropLw(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget v1, p0, Lcom/android/server/wm/MzDragState;->mThumbOffsetX:F

    sub-float v1, p1, v1

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    iget v1, p0, Lcom/android/server/wm/MzDragState;->mThumbOffsetY:F

    sub-float v1, p2, v1

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    iput p1, p0, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    iput p2, p0, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v0

    .local v0, "flag":Z
    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MzDragState;->mMzOnTouching:Z

    :cond_0
    return v0
.end method

.method notifyMoveLw(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iput p1, p0, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    iput p2, p0, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/server/wm/DragState;->reset()V

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mMzInitHeight:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mMzInitWidth:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    iput-boolean v2, p0, Lcom/android/server/wm/MzDragState;->mMzStatusBarNfcEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    iput-boolean v2, p0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MzDragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    iput v1, p0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    iput-boolean v2, p0, Lcom/android/server/wm/MzDragState;->mMzStatusBarNfcEnabled:Z

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mUnRegisterReceiversRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mUnRegisterReceiversRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState;->mDragStateResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
