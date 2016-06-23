.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$ParkState;
    }
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private final interruptActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field localValues:Ljava/lang/ThreadLocal$Values;

.field private final lock:Ljava/lang/Object;

.field volatile name:Ljava/lang/String;

.field private volatile nativePeer:J

.field private parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput v0, Ljava/lang/Thread;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 199
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 215
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 233
    if-nez p2, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 277
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 297
    if-nez p3, :cond_0

    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 2
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 347
    if-nez p3, :cond_0

    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 318
    if-nez p2, :cond_0

    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 323
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 361
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 362
    :try_start_0
    sget v0, Ljava/lang/Thread;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/lang/Thread;->count:I

    int-to-long v2, v0

    iput-wide v2, p0, Ljava/lang/Thread;->id:J

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-nez p2, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 371
    :goto_0
    if-nez p1, :cond_1

    .line 372
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "group == null"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 368
    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_0

    .line 375
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 379
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 380
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 383
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 384
    return-void
.end method

.method public static activeCount()I
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private checkNotStarted()V
    .locals 2

    .prologue
    .line 848
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    return-void
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 404
    .local v0, "currentThread":Ljava/lang/Thread;
    if-nez p1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Group already destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 414
    const-class v2, Ljava/lang/Thread;

    monitor-enter v2

    .line 415
    :try_start_0
    sget v1, Ljava/lang/Thread;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/lang/Thread;->count:I

    int-to-long v4, v1

    iput-wide v4, p0, Ljava/lang/Thread;->id:J

    .line 416
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    if-nez p3, :cond_3

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 424
    :goto_0
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 425
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 427
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 429
    iget-object v1, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 432
    iget-object v1, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    if-eqz v1, :cond_2

    .line 433
    new-instance v1, Ljava/lang/ThreadLocal$Values;

    iget-object v2, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    invoke-direct {v1, v2}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    iput-object v1, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    .line 437
    :cond_2
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 438
    return-void

    .line 416
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 421
    :cond_3
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static native currentThread()Ljava/lang/Thread;
.end method

.method public static dumpStack()V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 491
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 2
    .param p0, "threads"    # [Ljava/lang/Thread;

    .prologue
    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 505
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 517
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    .line 520
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 522
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 547
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static native interrupted()Z
.end method

.method private static native nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native nativeGetStatus(Z)I
.end method

.method private native nativeHoldsLock(Ljava/lang/Object;)Z
.end method

.method private native nativeInterrupt()V
.end method

.method private native nativeSetName(Ljava/lang/String;)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 861
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 862
    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 985
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 986
    return-void
.end method

.method public static sleep(JI)V
    .locals 18
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1003
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-gez v9, :cond_0

    .line 1004
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "millis < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1006
    :cond_0
    if-gez p2, :cond_1

    .line 1007
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nanos < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1009
    :cond_1
    const v9, 0xf423f

    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 1010
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nanos > 999999: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1015
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-nez v9, :cond_3

    if-nez p2, :cond_3

    .line 1017
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1018
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 1023
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 1024
    .local v12, "start":J
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 1026
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 1029
    .local v8, "lock":Ljava/lang/Object;
    monitor-enter v8

    .line 1031
    :goto_0
    :try_start_0
    move-wide/from16 v0, p0

    move/from16 v2, p2

    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 1033
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1034
    .local v10, "now":J
    sub-long v6, v10, v12

    .line 1036
    .local v6, "elapsed":J
    cmp-long v9, v6, v4

    if-ltz v9, :cond_5

    .line 1045
    monitor-exit v8

    .line 1046
    .end local v4    # "duration":J
    .end local v6    # "elapsed":J
    .end local v8    # "lock":Ljava/lang/Object;
    .end local v10    # "now":J
    .end local v12    # "start":J
    :cond_4
    return-void

    .line 1040
    .restart local v4    # "duration":J
    .restart local v6    # "elapsed":J
    .restart local v8    # "lock":Ljava/lang/Object;
    .restart local v10    # "now":J
    .restart local v12    # "start":J
    :cond_5
    sub-long/2addr v4, v6

    .line 1041
    move-wide v12, v10

    .line 1042
    const-wide/32 v14, 0xf4240

    div-long p0, v4, v14

    .line 1043
    const-wide/32 v14, 0xf4240

    rem-long v14, v4, v14

    long-to-int v0, v14

    move/from16 p2, v0

    .line 1044
    goto :goto_0

    .line 1045
    .end local v6    # "elapsed":J
    .end local v10    # "now":J
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static native sleep(Ljava/lang/Object;JI)V
.end method

.method public static native yield()V
.end method


# virtual methods
.method public final checkAccess()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 559
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 580
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 581
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 2

    .prologue
    .line 591
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    .line 655
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v2

    .line 656
    :try_start_0
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 657
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 656
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 659
    :cond_0
    monitor-exit v2

    .line 660
    return-void

    .line 659
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isAlive()Z
    .locals 4

    .prologue
    .line 687
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDaemon()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native isInterrupted()Z
.end method

.method public final join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    return-void
.end method

.method public final join(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    .line 745
    return-void
.end method

.method public final join(JI)V
    .locals 21
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 763
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-ltz v14, :cond_0

    if-ltz p3, :cond_0

    const v14, 0xf4240

    move/from16 v0, p3

    if-lt v0, v14, :cond_1

    .line 764
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bad timeout: millis="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",nanos="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 768
    :cond_1
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    cmp-long v14, p1, v14

    if-ltz v14, :cond_2

    const/4 v5, 0x1

    .line 769
    .local v5, "overflow":Z
    :goto_0
    move/from16 v0, p3

    int-to-long v14, v0

    or-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    const/4 v4, 0x1

    .line 770
    .local v4, "forever":Z
    :goto_1
    or-int v14, v4, v5

    if-eqz v14, :cond_4

    .line 771
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->join()V

    .line 799
    :goto_2
    return-void

    .line 768
    .end local v4    # "forever":Z
    .end local v5    # "overflow":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 769
    .restart local v5    # "overflow":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 775
    .restart local v4    # "forever":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v15

    .line 776
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_5

    .line 777
    monitor-exit v15

    goto :goto_2

    .line 798
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 781
    :cond_5
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, p1

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v16, v18

    .line 784
    .local v10, "nanosToWait":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 786
    .local v12, "start":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_7

    .line 798
    :cond_6
    monitor-exit v15

    goto :goto_2

    .line 790
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v6, v16, v12

    .line 791
    .local v6, "nanosElapsed":J
    sub-long v8, v10, v6

    .line 792
    .local v8, "nanosRemaining":J
    const-wide/16 v16, 0x0

    cmp-long v14, v8, v16

    if-lez v14, :cond_6

    .line 795
    const-wide/32 v16, 0xf4240

    div-long p1, v8, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, p1

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 p3, v0

    .line 797
    goto :goto_3
.end method

.method public parkFor(J)V
    .locals 9
    .param p1, "nanos"    # J

    .prologue
    const/4 v8, 0x3

    .line 1208
    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1209
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_0

    .line 1236
    new-instance v1, Ljava/lang/AssertionError;

    const-string v5, "Attempt to repark"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1239
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1211
    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1239
    :cond_0
    :goto_0
    monitor-exit v4

    .line 1240
    return-void

    .line 1215
    :pswitch_1
    const-wide/32 v6, 0xf4240

    div-long v2, p1, v6

    .line 1216
    .local v2, "millis":J
    const-wide/32 v6, 0xf4240

    rem-long/2addr p1, v6

    .line 1218
    const/4 v1, 0x3

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    :try_start_2
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    long-to-int v5, p1

    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1229
    :try_start_3
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    .line 1230
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1229
    :try_start_5
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    .line 1230
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_0

    .line 1229
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v8, :cond_1

    .line 1230
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    :cond_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parkUntil(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 1264
    iget-object v3, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1279
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, p1, v4

    .line 1281
    .local v0, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 1282
    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/Thread;->parkState:I

    .line 1286
    :goto_0
    monitor-exit v3

    .line 1287
    return-void

    .line 1284
    :cond_0
    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_0

    .line 1286
    .end local v0    # "delayMillis":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final popInterruptAction$(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    .prologue
    .line 894
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v2

    .line 895
    :try_start_0
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 896
    .local v0, "removed":Ljava/lang/Runnable;
    if-eq p1, v0, :cond_0

    .line 897
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    .end local v0    # "removed":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "removed":Ljava/lang/Runnable;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    return-void
.end method

.method public final pushInterruptAction$(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    .prologue
    .line 876
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 883
    :cond_0
    return-void

    .line 878
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 820
    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 829
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 830
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 4
    .param p1, "isDaemon"    # Z

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    .line 842
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 843
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 845
    :cond_0
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    monitor-enter p0

    .line 915
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 917
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V

    .line 920
    :cond_1
    monitor-exit p0

    .line 921
    return-void

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setPriority(I)V
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 938
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_1
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 943
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 948
    :cond_2
    monitor-enter p0

    .line 949
    :try_start_0
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 951
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V

    .line 954
    :cond_3
    monitor-exit p0

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 969
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 970
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 1059
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 1063
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v0, v1, v2}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    monitor-exit p0

    return-void

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 1079
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpark()V
    .locals 2

    .prologue
    .line 1162
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_0
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v0, :pswitch_data_0

    .line 1178
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 1179
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1183
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 1184
    return-void

    .line 1174
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_0

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
