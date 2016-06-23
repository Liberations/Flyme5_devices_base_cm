.class Ldalvik/system/profiler/DalvikThreadSampler;
.super Ljava/lang/Object;
.source "DalvikThreadSampler.java"

# interfaces
.implements Ldalvik/system/profiler/ThreadSampler;


# instance fields
.field private depth:I

.field private mutableStackTraceElements:[[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    iget v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Ldalvik/system/VMStack;->fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I

    move-result v0

    .line 41
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 44
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    iget v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    aget-object v2, v2, v0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_1
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public setDepth(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 32
    iput p1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    .line 33
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    .line 34
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    new-array v2, v0, [Ljava/lang/StackTraceElement;

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
