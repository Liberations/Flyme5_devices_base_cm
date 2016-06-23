.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# static fields
.field private static final ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THE_ONE:Ldalvik/system/VMRuntime;


# instance fields
.field private targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ldalvik/system/VMRuntime;

    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    .line 39
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "armeabi"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "mips"

    const-string v2, "mips"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "mips64"

    const-string v2, "mips64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "x86"

    const-string v2, "x86"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "x86_64"

    const-string v2, "x86_64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "arm64-v8a"

    const-string v2, "arm64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static native getCurrentInstructionSet()Ljava/lang/String;
.end method

.method public static getInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v1, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, "instructionSet":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_0
    return-object v0
.end method

.method public static getRuntime()Ldalvik/system/VMRuntime;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method public static is64BitAbi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static is64BitInstructionSet(Ljava/lang/String;)Z
    .locals 1
    .param p0, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v0, "arm64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x86_64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mips64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native isBootClassPathOnDisk(Ljava/lang/String;)Z
.end method

.method private native nativeSetTargetHeapUtilization(F)V
.end method

.method public static native registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setTargetSdkVersionNative(I)V
.end method


# virtual methods
.method public native addressOf(Ljava/lang/Object;)J
.end method

.method public native bootClassPath()Ljava/lang/String;
.end method

.method public native classPath()Ljava/lang/String;
.end method

.method public native clearGrowthLimit()V
.end method

.method public native concurrentGC()V
.end method

.method public native disableJitCompilation()V
.end method

.method public gcSoftReferences()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public getExternalBytesAllocated()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinimumHeapSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native getTargetHeapUtilization()F
.end method

.method public declared-synchronized getTargetSdkVersion()I
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native is64Bit()Z
.end method

.method public native isCheckJniEnabled()Z
.end method

.method public native isDebuggerActive()Z
.end method

.method public native newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native preloadDexCaches()V
.end method

.method public native properties()[Ljava/lang/String;
.end method

.method public native registerNativeAllocation(I)V
.end method

.method public native registerNativeFree(I)V
.end method

.method public runFinalizationSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 201
    return-void
.end method

.method public setMinimumHeapSize(J)J
    .locals 2
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setTargetHeapUtilization(F)F
    .locals 4
    .param p1, "newTarget"    # F

    .prologue
    .line 131
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range (0,1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    .line 141
    .local v0, "oldTarget":F
    invoke-direct {p0, p1}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V

    .line 142
    monitor-exit p0

    return v0

    .line 143
    .end local v0    # "oldTarget":F
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setTargetSdkVersion(I)V
    .locals 1
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    .line 156
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    invoke-direct {p0, v0}, Ldalvik/system/VMRuntime;->setTargetSdkVersionNative(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native startJitCompilation()V
.end method

.method public trackExternalAllocation(J)Z
    .locals 1
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public trackExternalFree(J)V
    .locals 0
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public native trimHeap()V
.end method

.method public native updateProcessState(I)V
.end method

.method public native vmInstructionSet()Ljava/lang/String;
.end method

.method public native vmLibrary()Ljava/lang/String;
.end method

.method public native vmVersion()Ljava/lang/String;
.end method
