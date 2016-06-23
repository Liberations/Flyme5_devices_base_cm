.class public final Ldalvik/system/profiler/HprofData;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/HprofData$1;,
        Ldalvik/system/profiler/HprofData$Sample;,
        Ldalvik/system/profiler/HprofData$StackTrace;,
        Ldalvik/system/profiler/HprofData$ThreadEvent;,
        Ldalvik/system/profiler/HprofData$ThreadEventType;
    }
.end annotation


# instance fields
.field private depth:I

.field private flags:I

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private startMillis:J

.field private final threadHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final threadIdToThreadEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackTraces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    .line 279
    return-void
.end method


# virtual methods
.method public addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V
    .locals 4
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "countCell"    # [I

    .prologue
    .line 385
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    iget v2, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 389
    .local v0, "old":[I
    if-eqz v0, :cond_1

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackTrace already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_1
    return-void
.end method

.method public addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 4
    .param p1, "event"    # Ldalvik/system/profiler/HprofData$ThreadEvent;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "event == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadIdToThreadEvent:Ljava/util/Map;

    iget v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    .line 353
    .local v0, "old":Ldalvik/system/profiler/HprofData$ThreadEvent;
    sget-object v1, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v2}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 374
    :cond_1
    iget-object v1, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void

    .line 355
    :pswitch_0
    if-eqz v0, :cond_1

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadEvent already registered for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :pswitch_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    sget-object v2, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    if-ne v1, v2, :cond_1

    .line 369
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate ThreadEvent.end for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Ldalvik/system/profiler/HprofData;->depth:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Ldalvik/system/profiler/HprofData;->flags:I

    return v0
.end method

.method public getSamples()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 335
    .local v5, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    iget-object v7, p0, Ldalvik/system/profiler/HprofData;->stackTraces:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldalvik/system/profiler/HprofData$StackTrace;

    .line 337
    .local v6, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 338
    .local v1, "countCell":[I
    const/4 v7, 0x0

    aget v0, v1, v7

    .line 339
    .local v0, "count":I
    new-instance v4, Ldalvik/system/profiler/HprofData$Sample;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v0, v7}, Ldalvik/system/profiler/HprofData$Sample;-><init>(Ldalvik/system/profiler/HprofData$StackTrace;ILdalvik/system/profiler/HprofData$1;)V

    .line 340
    .local v4, "sample":Ldalvik/system/profiler/HprofData$Sample;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v0    # "count":I
    .end local v1    # "countCell":[I
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldalvik/system/profiler/HprofData$StackTrace;[I>;"
    .end local v4    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    .end local v6    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_0
    return-object v5
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    return-wide v0
.end method

.method public getThreadHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/profiler/HprofData$ThreadEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Ldalvik/system/profiler/HprofData;->threadHistory:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDepth(I)V
    .locals 0
    .param p1, "depth"    # I

    .prologue
    .line 320
    iput p1, p0, Ldalvik/system/profiler/HprofData;->depth:I

    .line 321
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 306
    iput p1, p0, Ldalvik/system/profiler/HprofData;->flags:I

    .line 307
    return-void
.end method

.method public setStartMillis(J)V
    .locals 1
    .param p1, "startMillis"    # J

    .prologue
    .line 292
    iput-wide p1, p0, Ldalvik/system/profiler/HprofData;->startMillis:J

    .line 293
    return-void
.end method
