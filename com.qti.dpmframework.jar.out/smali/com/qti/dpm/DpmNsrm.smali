.class public final Lcom/qti/dpm/DpmNsrm;
.super Ljava/lang/Object;
.source "DpmNsrm.java"


# static fields
.field private static final MAX_FILE_PATH_LENGTH:I = 0x400

.field private static final MAX_NSRM_FILE_SIZE:J = 0xc800L

.field public static final NSRM_FEATURE_ENABLED:I = 0x1

.field public static final NSRM_FEATURE_OFF:I = 0x1

.field public static final NSRM_FEATURE_SYNC_CONNECT_DNS:I = 0x2

.field public static final NSRM_FEATURE_SYNC_CONNECT_DNS_WRITE:I = 0x3

.field public static final POLICY_TYPE_NSRM:I = 0x1

.field private static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM"

.field private static isNsrmConfigUpdateBusy:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDpm:Lcom/qti/dpm/DpmService;

.field private mNSRMFeatureEnabled:I

.field private mNSRMFeatureRequestedState:I

.field mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

.field private nsrmConfigHasBeenInit:Z

.field private nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/qti/dpm/DpmService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    .line 25
    iput-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 32
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 33
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    .line 42
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    .line 45
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-direct {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;-><init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 46
    new-instance v0, Lcom/qti/dpm/DpmNsrmConfigParser;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    .line 47
    return-void
.end method

.method private setPolicyConfigUpdateBusy(IZ)V
    .locals 3
    .param p1, "policyType"    # I
    .param p2, "tryLater"    # Z

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 169
    :pswitch_0
    monitor-enter p0

    .line 170
    :try_start_0
    sput-boolean p2, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNsrmConfigUpdateBusy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNsrmConfig(Ljava/lang/String;)I
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    const/4 v0, -0x1

    .line 144
    .local v0, "retVal":I
    sget-boolean v1, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    if-nez v1, :cond_3

    .line 145
    const-string v1, "DPM:NSRM"

    const-string v2, "Updating NSRM Config"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    if-nez v1, :cond_0

    .line 147
    const-string v1, "DPM:NSRM"

    const-string v2, "nsrmConfigParser object is null"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, -0x1

    .line 163
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 151
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-virtual {v1, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService;->nsrmConfigRefresh()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    const/4 v0, -0x1

    .line 154
    invoke-direct {p0, v3, v4}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    :cond_1
    :goto_1
    move v1, v0

    .line 163
    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    goto :goto_1

    .line 160
    :cond_3
    const-string v1, "DPM:NSRM"

    const-string v2, "Previous request in process try later..."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, -0x2

    goto :goto_0
.end method


# virtual methods
.method public getNSRMEnabled()I
    .locals 2

    .prologue
    .line 116
    const-string v0, "DPM:NSRM"

    const-string v1, "getNSRMEnabled()"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v0, v1}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x4

    monitor-exit p0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    monitor-exit p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPolicyVersion(I)I
    .locals 3
    .param p1, "policyType"    # I

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 74
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PolicyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v0, v1}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, -0x4

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getInt()I

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleFeatureStatusNotification(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, "featureId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "featureStatus":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iput v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 186
    iput v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 187
    monitor-exit p0

    .line 191
    :goto_0
    return-void

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 189
    :cond_0
    const-string v2, "DPM:NSRM"

    const-string v3, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x3

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "featureId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "featureStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, "error":I
    const-string v4, "DPM:NSRM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFeatureStatusSetResponse(): feature id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " feature status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-ne v1, v7, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iput v2, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 206
    iput v2, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget v3, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 209
    .local v3, "state":I
    iget-object v4, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const/4 v5, 0x1

    invoke-virtual {v4, v7, v5, v3}, Lcom/qti/dpm/DpmService;->sendPrefChangedBroadcast(III)V

    .line 213
    .end local v3    # "state":I
    :goto_0
    return-void

    .line 207
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 211
    :cond_0
    const-string v4, "DPM:NSRM"

    const-string v5, "handleFeatureStatusSetResponse(): unknown feature id."

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleNsrmRefreshResponse(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 217
    const-string v2, "DPM:NSRM"

    const-string v3, "handleNsrmrefreshResponse called"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .local v0, "policy":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .local v1, "result":I
    if-ne v0, v4, :cond_0

    .line 223
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 225
    :cond_0
    return-void
.end method

.method public nsrmPostInit()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 52
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrmConfigParser;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    .line 54
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService;->nsrmConfigRefresh()Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->recoverNSRMEventStates()V

    .line 62
    :cond_1
    return-void
.end method

.method public setNSRMEnabled(I)I
    .locals 4
    .param p1, "nsrmSetType"    # I

    .prologue
    const/16 v0, 0x3e8

    .line 126
    const-string v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNSRMEnabled() nsrmSetType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v2, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1, v2}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const/4 v0, -0x4

    monitor-exit p0

    .line 137
    :goto_0
    return v0

    .line 131
    :cond_0
    iget v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    if-ne v1, p1, :cond_1

    .line 132
    monitor-exit p0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 136
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    invoke-virtual {v1, v2, v3}, Lcom/qti/dpm/DpmService;->requestFeatureSettingsChange(II)Z

    .line 137
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updatePolicy(ILjava/lang/String;)I
    .locals 6
    .param p1, "policyType"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    .line 82
    const-string v2, "DPM:NSRM"

    const-string v3, "Path length too long"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v2, -0x7

    .line 111
    :goto_0
    return v2

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 88
    .local v1, "uid":I
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const-string v2, "/system/etc/dpm/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const-string v2, "/data/dpm/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 90
    const-string v2, "DPM:NSRM"

    const-string v3, "This path is not allowed to access"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, -0x6

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "file":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 110
    const-string v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PolicyType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v2, -0x3

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v3, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v2, v3}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    const/4 v2, -0x4

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xc800

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 103
    const-string v2, "DPM:NSRM"

    const-string v3, "File size not supported"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v2, -0x5

    goto :goto_0

    .line 107
    :cond_4
    invoke-direct {p0, p2}, Lcom/qti/dpm/DpmNsrm;->updateNsrmConfig(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
