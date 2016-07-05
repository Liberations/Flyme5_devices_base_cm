.class public Lcom/android/server/MzInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "MzInputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/view/MzIInputMethodManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final MSG_MZ_FINISH_INPUT:I = 0x1392

.field static final MSG_MZ_VIS_CHANGED:I = 0x1388

.field private static final TRANSACTION_mzIsShown:I = 0x65

.field private static final TRANSACTION_mzSetFlags:I = 0x66


# instance fields
.field private mLastInputShown:Z

.field private mMeizuFlags:I

.field private mMeizuLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->initParams()V

    return-void
.end method

.method private finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/MzInputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->setFlymeImeSwitcherNotification()V

    return-void
.end method

.method private selectMzInputAsDefaultIMELocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string v2, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string v2, "com.cootek.smartinputv5/com.cootek.smartinput5.TouchPalIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string v2, "com.iflytek.inputmethod/.FlyIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0
.end method

.method private setInputShownLocked()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1388

    iget-boolean v3, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iget-object v4, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodCalledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x1392

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .local v0, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v1, -0x7

    .local v1, "sequence":I
    :goto_1
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v1    # "sequence":I
    :goto_2
    move v2, v3

    goto :goto_0

    .restart local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    const/16 v1, -0x9

    goto :goto_1

    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    invoke-direct {p0, v2}, Lcom/android/server/MzInputMethodManagerService;->finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x1392 -> :sswitch_1
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    return v0
.end method

.method public mzIsShown()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mzSetFlags(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .local v0, "old":I
    iget v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    and-int v3, p1, p2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    monitor-exit v2

    return v0

    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->onServiceDisconnected(Landroid/content/ComponentName;)V

    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    const-string v3, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->mzIsShown()Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .end local v2    # "_result":Z
    :pswitch_1
    const-string v3, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->mzSetFlags(II)I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->selectMzInputAsDefaultIMELocked()V

    return-void
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    return v0
.end method
