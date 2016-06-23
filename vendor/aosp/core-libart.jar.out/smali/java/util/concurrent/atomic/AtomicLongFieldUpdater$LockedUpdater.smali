.class Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockedUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final cclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final offset:J

.field private final tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 343
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 345
    .local v4, "modifiers":I
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 346
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    .line 347
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 366
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 367
    .local v3, "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_0

    .line 368
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must be long type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 362
    .end local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 370
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 371
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must be volatile type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v0, p1, :cond_2

    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    .line 375
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    .line 376
    sget-object v5, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    iput-wide v6, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    .line 377
    return-void

    .line 373
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureProtectedAccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private fullCheck(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 382
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->ensureProtectedAccess(Ljava/lang/Object;)V

    .line 384
    :cond_1
    return-void
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;JJ)Z
    .locals 8
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 388
    :cond_1
    monitor-enter p0

    .line 389
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 390
    .local v6, "v":J
    cmp-long v0, v6, p2

    if-eqz v0, :cond_2

    .line 391
    const/4 v0, 0x0

    monitor-exit p0

    .line 393
    :goto_0
    return v0

    .line 392
    :cond_2
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 393
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 394
    .end local v6    # "v":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 414
    :cond_1
    monitor-enter p0

    .line 415
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lazySet(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->set(Ljava/lang/Object;J)V

    .line 410
    return-void
.end method

.method public set(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 403
    :cond_1
    monitor-enter p0

    .line 404
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 405
    monitor-exit p0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .locals 2
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method
