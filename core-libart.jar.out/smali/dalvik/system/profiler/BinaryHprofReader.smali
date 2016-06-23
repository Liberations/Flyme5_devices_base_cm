.class public final Ldalvik/system/profiler/BinaryHprofReader;
.super Ljava/lang/Object;
.source "BinaryHprofReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprofReader$1;
    }
.end annotation


# static fields
.field private static final TRACE:Z


# instance fields
.field private final hprofData:Ldalvik/system/profiler/HprofData;

.field private final idToClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackFrame:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final idToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

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

.field private strict:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    .line 61
    new-instance v0, Ldalvik/system/profiler/HprofData;

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldalvik/system/profiler/HprofData;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    .line 76
    return-void
.end method

.method private checkRead()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data access before read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method private parseControlSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 239
    .local v1, "flags":I
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 244
    .local v0, "depth":S
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v1}, Ldalvik/system/profiler/HprofData;->setFlags(I)V

    .line 245
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->setDepth(I)V

    .line 246
    return-void
.end method

.method private parseCpuSamples(I)V
    .locals 13
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 430
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 431
    .local v8, "totalSamples":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 436
    .local v4, "samplesCount":I
    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 437
    .local v2, "expectedLength":I
    if-eq p1, v2, :cond_0

    .line 438
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected CPU samples record of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " based on number of samples but header "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "specified a length of  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 443
    :cond_0
    const/4 v7, 0x0

    .line 444
    .local v7, "total":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 445
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 446
    .local v0, "count":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 451
    .local v6, "stackTraceId":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldalvik/system/profiler/HprofData$StackTrace;

    .line 452
    .local v5, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    if-nez v5, :cond_1

    .line 453
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown stack trace id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 455
    :cond_1
    if-nez v0, :cond_2

    .line 456
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Zero sample count for stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 459
    :cond_2
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 460
    .local v1, "countCell":[I
    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_3

    .line 461
    aget v9, v1, v12

    if-eqz v9, :cond_4

    .line 462
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting sample count of stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found it was already initialized to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 470
    :cond_3
    aget v9, v1, v12

    add-int/2addr v0, v9

    .line 472
    :cond_4
    aput v0, v1, v12

    .line 473
    add-int/2addr v7, v0

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 475
    .end local v0    # "count":I
    .end local v1    # "countCell":[I
    .end local v5    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    .end local v6    # "stackTraceId":I
    :cond_5
    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_6

    if-eq v8, v7, :cond_6

    .line 476
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected a total of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " samples but saw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 479
    :cond_6
    return-void
.end method

.method private parseEndThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 348
    .local v1, "threadId":I
    invoke-static {v1}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    .line 349
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    .line 350
    return-void
.end method

.method private parseHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseVersion()V

    .line 121
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseIdSize()V

    .line 122
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseTime()V

    .line 123
    return-void
.end method

.method private parseIdSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 141
    .local v0, "idSize":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported identifier size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    return-void
.end method

.method private parseLoadClass()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 277
    .local v0, "classId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v2

    .line 280
    .local v2, "classObjectId":I
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 281
    .local v4, "stackTraceSerialNumber":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "className":Ljava/lang/String;
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, "old":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 290
    new-instance v5, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate class id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_0
    return-void
.end method

.method private parseRecord()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 165
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 166
    .local v4, "tagOrEOF":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 167
    const/4 v6, 0x0

    .line 222
    :goto_0
    return v6

    .line 169
    :cond_0
    int-to-byte v3, v4

    .line 170
    .local v3, "tag":B
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 171
    .local v5, "timeDeltaInMicroseconds":I
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 172
    .local v2, "recordLength":I
    invoke-static {v3}, Ldalvik/system/profiler/BinaryHprof$Tag;->get(B)Ldalvik/system/profiler/BinaryHprof$Tag;

    move-result-object v1

    .line 176
    .local v1, "hprofTag":Ldalvik/system/profiler/BinaryHprof$Tag;
    if-nez v1, :cond_1

    .line 177
    int-to-long v8, v2

    invoke-direct {p0, v1, v8, v9}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v1, v2}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 182
    new-instance v6, Ldalvik/system/profiler/MalformedHprofException;

    invoke-direct {v6, v0}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_2
    sget-object v7, Ldalvik/system/profiler/BinaryHprofReader$1;->$SwitchMap$dalvik$system$profiler$BinaryHprof$Tag:[I

    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 221
    int-to-long v8, v2

    invoke-direct {p0, v1, v8, v9}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseControlSettings()V

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStringInUtf8(I)V

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStartThread()V

    goto :goto_0

    .line 197
    :pswitch_3
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseEndThread()V

    goto :goto_0

    .line 201
    :pswitch_4
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseLoadClass()V

    goto :goto_0

    .line 204
    :pswitch_5
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackFrame()V

    goto :goto_0

    .line 207
    :pswitch_6
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackTrace(I)V

    goto :goto_0

    .line 211
    :pswitch_7
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseCpuSamples(I)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private parseRecords()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :cond_0
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    return-void
.end method

.method private parseStackFrame()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v7

    .line 354
    .local v7, "stackFrameId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "methodName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "methodSignature":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "file":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readClass()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "className":Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 367
    .local v2, "line":I
    new-instance v6, Ljava/lang/StackTraceElement;

    invoke-direct {v6, v0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    .local v6, "stackFrame":Ljava/lang/StackTraceElement;
    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 369
    .local v5, "old":Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_0

    .line 370
    new-instance v8, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate stack frame id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 372
    :cond_0
    return-void
.end method

.method private parseStackTrace(I)V
    .locals 14
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 375
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 376
    .local v9, "stackTraceId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 377
    .local v10, "threadId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 383
    .local v2, "frames":I
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v1, v11, 0xc

    .line 384
    .local v1, "expectedLength":I
    if-eq p1, v1, :cond_0

    .line 385
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected stack trace record of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " based on number of frames but header "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "specified a length of  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 390
    :cond_0
    new-array v7, v2, [Ljava/lang/StackTraceElement;

    .line 391
    .local v7, "stackFrames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 392
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v6

    .line 393
    .local v6, "stackFrameId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 398
    .local v5, "stackFrame":Ljava/lang/StackTraceElement;
    if-nez v5, :cond_1

    .line 399
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown stack frame id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 401
    :cond_1
    aput-object v5, v7, v3

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v5    # "stackFrame":Ljava/lang/StackTraceElement;
    .end local v6    # "stackFrameId":I
    :cond_2
    new-instance v8, Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {v8, v9, v10, v7}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    .line 406
    .local v8, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget-boolean v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    if-eqz v11, :cond_4

    .line 407
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    new-array v12, v13, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    .line 422
    :cond_3
    :goto_1
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldalvik/system/profiler/HprofData$StackTrace;

    .line 423
    .local v4, "old":Ldalvik/system/profiler/HprofData$StackTrace;
    if-eqz v4, :cond_5

    .line 424
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate stack trace id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 416
    .end local v4    # "old":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_4
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 417
    .local v0, "countCell":[I
    if-nez v0, :cond_3

    .line 418
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    new-array v12, v13, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    goto :goto_1

    .line 427
    .end local v0    # "countCell":[I
    .restart local v4    # "old":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_5
    return-void
.end method

.method private parseStartThread()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 321
    .local v5, "threadId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v2

    .line 325
    .local v2, "objectId":I
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 326
    .local v4, "stackTraceSerialNumber":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "threadName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "groupName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "parentGroupName":Ljava/lang/String;
    invoke-static {v2, v5, v6, v1, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    .line 340
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v7, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    .line 341
    return-void
.end method

.method private parseStringInUtf8(I)V
    .locals 7
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 250
    .local v3, "stringId":I
    add-int/lit8 v4, p1, -0x4

    new-array v0, v4, [B

    .line 251
    .local v0, "bytes":[B
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-static {v4, v0}, Ldalvik/system/profiler/BinaryHprofReader;->readFully(Ljava/io/InputStream;[B)V

    .line 252
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 256
    .local v2, "string":Ljava/lang/String;
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "old":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 258
    new-instance v4, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate string id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :cond_0
    return-void
.end method

.method private parseTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 151
    .local v0, "time":J
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v2, v0, v1}, Ldalvik/system/profiler/HprofData;->setStartMillis(J)V

    .line 152
    return-void
.end method

.method private parseVersion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    const-string v2, "Could not find HPROF version"

    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private readClass()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v0

    .line 312
    .local v0, "id":I
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 314
    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown class id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_0
    return-object v1
.end method

.method private static readFully(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "offset":I
    array-length v0, p1

    .line 265
    .local v0, "byteCount":I
    :goto_0
    if-lez v0, :cond_1

    .line 266
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 267
    .local v1, "bytesRead":I
    if-gez v1, :cond_0

    .line 268
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 270
    :cond_0
    add-int/2addr v2, v1

    .line 271
    sub-int/2addr v0, v1

    .line 272
    goto :goto_0

    .line 273
    .end local v1    # "bytesRead":I
    :cond_1
    return-void
.end method

.method private readId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    move-result v0

    .line 300
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 301
    const/4 v1, 0x0

    .line 307
    :cond_0
    return-object v1

    .line 303
    :cond_1
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 305
    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown string id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V
    .locals 6
    .param p1, "hprofTag"    # Ldalvik/system/profiler/BinaryHprof$Tag;
    .param p2, "recordLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    .line 231
    .local v0, "skipped":J
    cmp-long v2, v0, p2

    if-eqz v2, :cond_0

    .line 232
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes but only skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/profiler/HprofData;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    .line 105
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    return-object v0
.end method

.method public getStrict()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    .line 100
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseHeader()V

    .line 113
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecords()V

    .line 114
    return-void
.end method

.method public setStrict(Z)V
    .locals 2
    .param p1, "strict"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set strict after read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-boolean p1, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    .line 87
    return-void
.end method
