.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field final parent:Ljava/lang/ThreadGroup;

.field private final threadRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    .line 69
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 112
    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-static {v0, v2}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .locals 2
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    return-void
.end method

.method private destroyIfEmptyDaemon()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 250
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    return-void

    .line 250
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 252
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .locals 7
    .param p1, "enumeration"    # [Ljava/lang/Object;
    .param p2, "recurse"    # Z
    .param p3, "enumerationIndex"    # I
    .param p4, "enumeratingThreads"    # Z

    .prologue
    .line 338
    if-eqz p4, :cond_2

    .line 339
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 341
    :try_start_0
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    move v0, p3

    .end local p3    # "enumerationIndex":I
    .local v0, "enumerationIndex":I
    :goto_0
    if-ltz v2, :cond_1

    .line 342
    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 343
    .local v4, "thread":Ljava/lang/Thread;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 344
    array-length v5, p1

    if-lt v0, v5, :cond_0

    .line 345
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move p3, v0

    .line 373
    .end local v0    # "enumerationIndex":I
    .end local v4    # "thread":Ljava/lang/Thread;
    :goto_1
    return v0

    .line 347
    .restart local v0    # "enumerationIndex":I
    .restart local v4    # "thread":Ljava/lang/Thread;
    :cond_0
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_2
    aput-object v4, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_0

    .line 350
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move p3, v0

    .line 362
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :goto_3
    if-eqz p2, :cond_7

    .line 363
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 364
    :try_start_4
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 365
    .local v1, "group":Ljava/lang/ThreadGroup;
    array-length v5, p1

    if-lt p3, v5, :cond_5

    .line 366
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_1

    .line 350
    .end local v0    # "enumerationIndex":I
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local p3    # "enumerationIndex":I
    :catchall_0
    move-exception v5

    :goto_5
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 352
    :cond_2
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 353
    :try_start_6
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :goto_6
    if-ltz v2, :cond_4

    .line 354
    :try_start_7
    array-length v5, p1

    if-lt v0, v5, :cond_3

    .line 355
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_1

    .line 357
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :cond_3
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_8
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 353
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_6

    .line 359
    :cond_4
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_3

    .end local v2    # "i":I
    :catchall_1
    move-exception v5

    :goto_7
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v5

    .line 368
    .restart local v1    # "group":Ljava/lang/ThreadGroup;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_b
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result p3

    .line 370
    goto :goto_4

    .line 371
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_6
    monitor-exit v6

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    move v0, p3

    .line 373
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_1

    .line 371
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v5

    .line 359
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_3
    move-exception v5

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_7

    .line 350
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_4
    move-exception v5

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_5

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    .restart local v4    # "thread":Ljava/lang/Thread;
    :cond_8
    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_2
.end method

.method private indent(I)V
    .locals 3
    .param p1, "levels"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 487
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method private list(I)V
    .locals 5
    .param p1, "levels"    # I

    .prologue
    .line 468
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 469
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    add-int/lit8 p1, p1, 0x1

    .line 472
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 473
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 474
    .local v2, "thread":Ljava/lang/Thread;
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 475
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 479
    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 480
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v0, p1}, Ljava/lang/ThreadGroup;->list(I)V

    goto :goto_1

    .line 482
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    return-void
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .locals 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 517
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 518
    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 520
    .local v1, "threadGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 525
    .end local v1    # "threadGroup":Ljava/lang/ThreadGroup;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 527
    return-void

    .line 525
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private stopHelper()Z
    .locals 7

    .prologue
    .line 615
    const/4 v3, 0x0

    .line 616
    .local v3, "stopCurrent":Z
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 617
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 618
    .local v0, "current":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 619
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_0

    .line 620
    const/4 v3, 0x1

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    goto :goto_0

    .line 625
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 627
    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 628
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v5

    or-int/2addr v3, v5

    .line 629
    goto :goto_1

    .line 630
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_2
    monitor-exit v6

    .line 631
    return v3

    .line 630
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private suspendHelper()Z
    .locals 7

    .prologue
    .line 653
    const/4 v3, 0x0

    .line 654
    .local v3, "suspendCurrent":Z
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 655
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 656
    .local v0, "current":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 657
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_0

    .line 658
    const/4 v3, 0x1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_0

    .line 663
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 665
    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 666
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v5

    or-int/2addr v3, v5

    .line 667
    goto :goto_1

    .line 668
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_2
    monitor-exit v6

    .line 669
    return v3

    .line 668
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method


# virtual methods
.method public activeCount()I
    .locals 6

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "count":I
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v5

    .line 125
    :try_start_0
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 126
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 132
    :try_start_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 133
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    add-int/2addr v0, v4

    .line 134
    goto :goto_1

    .line 130
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 135
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v5

    .line 136
    return v0

    .line 135
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public activeGroupCount()I
    .locals 5

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "count":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 148
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 150
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 151
    goto :goto_0

    .line 152
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_0
    monitor-exit v4

    .line 153
    return v0

    .line 152
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final addThread(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 708
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .locals 1
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final destroy()V
    .locals 5

    .prologue
    .line 204
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 207
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group was already destroyed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 231
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 207
    :cond_0
    :try_start_3
    const-string v0, "n/a"

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group still contains threads: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v0, "n/a"

    goto :goto_1

    .line 217
    :cond_3
    :goto_2
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V

    goto :goto_2

    .line 224
    :cond_4
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 229
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    .line 230
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .locals 1
    .param p1, "threads"    # [Ljava/lang/Thread;

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .locals 2
    .param p1, "threads"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .locals 5

    .prologue
    .line 413
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 414
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 415
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 417
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 419
    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 420
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    goto :goto_1

    .line 422
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 423
    return-void
.end method

.method public final isDaemon()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .locals 1

    .prologue
    .line 455
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    .line 457
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .locals 1
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 499
    :goto_0
    if-eqz p1, :cond_1

    .line 500
    if-ne p0, p1, :cond_0

    .line 501
    const/4 v0, 0x1

    .line 505
    :goto_1
    return v0

    .line 503
    :cond_0
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final removeThread(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v2, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v2

    .line 717
    :try_start_0
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 723
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 725
    return-void

    .line 723
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final resume()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 542
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 543
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V

    goto :goto_0

    .line 545
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 547
    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 548
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->resume()V

    goto :goto_1

    .line 550
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 551
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 0
    .param p1, "isDaemon"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    .line 563
    return-void
.end method

.method public final setMaxPriority(I)V
    .locals 5
    .param p1, "newMax"    # I

    .prologue
    .line 581
    iget v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    if-gt p1, v3, :cond_4

    .line 582
    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    .line 583
    const/4 p1, 0x1

    .line 586
    :cond_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v3, :cond_1

    move v2, p1

    .line 587
    .local v2, "parentPriority":I
    :goto_0
    if-gt v2, p1, :cond_2

    .end local v2    # "parentPriority":I
    :goto_1
    iput v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 588
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 589
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 590
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    goto :goto_2

    .line 592
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 586
    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    goto :goto_0

    .restart local v2    # "parentPriority":I
    :cond_2
    move v2, p1

    .line 587
    goto :goto_1

    .line 592
    .end local v2    # "parentPriority":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 611
    :cond_0
    return-void
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 649
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 689
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 693
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 694
    :cond_2
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_0

    .line 696
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
