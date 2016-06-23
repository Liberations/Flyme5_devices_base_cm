.class public final Ldalvik/system/profiler/BinaryHprofWriter;
.super Ljava/lang/Object;
.source "BinaryHprofWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprofWriter$1;
    }
.end annotation


# instance fields
.field private final classNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ldalvik/system/profiler/HprofData;

.field private nextClassId:I

.field private nextStackFrameId:I

.field private nextStringId:I

.field private final out:Ljava/io/DataOutputStream;

.field private final stackFrameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stringToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "data"    # Ldalvik/system/profiler/HprofData;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    .line 34
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    .line 35
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    .line 53
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    .line 54
    return-void
.end method

.method private write()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeHeader(J)V

    .line 60
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getFlags()I

    move-result v5

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getDepth()I

    move-result v6

    invoke-direct {p0, v5, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeControlSettings(II)V

    .line 62
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    .line 63
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    throw v5

    .line 66
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v5}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    move-result-object v3

    .line 67
    .local v3, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    const/4 v4, 0x0

    .line 68
    .local v4, "total":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/profiler/HprofData$Sample;

    .line 69
    .local v2, "sample":Ldalvik/system/profiler/HprofData$Sample;
    iget v5, v2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    add-int/2addr v4, v5

    .line 70
    iget-object v5, v2, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V

    goto :goto_1

    .line 72
    .end local v2    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    :cond_1
    invoke-direct {p0, v4, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeCpuSamples(ILjava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 77
    return-void
.end method

.method public static write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ldalvik/system/profiler/HprofData;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ldalvik/system/profiler/BinaryHprofWriter;

    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    invoke-direct {v0}, Ldalvik/system/profiler/BinaryHprofWriter;->write()V

    .line 49
    return-void
.end method

.method private writeControlSettings(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7fff

    .line 87
    if-le p2, v3, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth too large for binary hprof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 94
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    return-void
.end method

.method private writeCpuSamples(ILjava/util/Set;)V
    .locals 6
    .param p1, "totalSamples"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    .line 180
    .local v2, "samplesCount":I
    if-nez v2, :cond_1

    .line 190
    :cond_0
    return-void

    .line 183
    :cond_1
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v4, 0x0

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v3, v4, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 184
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 186
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/profiler/HprofData$Sample;

    .line 187
    .local v1, "sample":Ldalvik/system/profiler/HprofData$Sample;
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, v1, Ldalvik/system/profiler/HprofData$Sample;->count:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-object v4, v1, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    iget v4, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private writeHeader(J)V
    .locals 3
    .param p1, "dumpTimeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 84
    return-void
.end method

.method private writeId(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    return-void
.end method

.method private writeLoadClass(Ljava/lang/String;)I
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 211
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 214
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    .line 215
    .local v1, "id":I
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "classNameId":I
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 221
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 222
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 223
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 224
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    goto :goto_0
.end method

.method private writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V
    .locals 3
    .param p1, "hprofTag"    # Ldalvik/system/profiler/BinaryHprof$Tag;
    .param p2, "timeDeltaInMicroseconds"    # I
    .param p3, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1, p3}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 139
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    return-void
.end method

.method private writeStackFrame(Ljava/lang/StackTraceElement;)I
    .locals 8
    .param p1, "stackFrame"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 230
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 231
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 251
    :goto_0
    return v1

    .line 235
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    .line 236
    .local v1, "id":I
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeLoadClass(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "classId":I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v3

    .line 240
    .local v3, "methodNameId":I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v4

    .line 241
    .local v4, "sourceId":I
    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v6, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v6, v6, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v5, v7, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 244
    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 245
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 246
    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 247
    invoke-direct {p0, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 248
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 249
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V
    .locals 10
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v7, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v1, v7

    .line 194
    .local v1, "frames":I
    new-array v6, v1, [I

    .line 195
    .local v6, "stackFrameIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 196
    iget-object v7, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackFrame(Ljava/lang/StackTraceElement;)I

    move-result v7

    aput v7, v6, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    sget-object v7, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v8, 0x0

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0xc

    invoke-direct {p0, v7, v8, v9}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 201
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v8, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 202
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v8, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 203
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 205
    .local v5, "stackFrameId":I
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v5    # "stackFrameId":I
    :cond_1
    return-void
.end method

.method private writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 6
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "threadNameId":I
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "groupNameId":I
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "parentGroupNameId":I
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 117
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 119
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 121
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 122
    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    .line 123
    return-void
.end method

.method private writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 3
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 129
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    return-void
.end method

.method private writeString(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 156
    if-nez p1, :cond_0

    move v1, v3

    .line 174
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 160
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 164
    :cond_1
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    .line 165
    .local v1, "id":I
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 168
    .local v0, "bytes":[B
    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    array-length v5, v0

    add-int/lit8 v5, v5, 0x4

    invoke-direct {p0, v4, v3, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    .line 171
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 2
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    .line 105
    :goto_0
    return-void

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
