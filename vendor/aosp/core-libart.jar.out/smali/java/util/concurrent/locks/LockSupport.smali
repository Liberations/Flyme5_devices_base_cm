.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final parkBlockerOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    .line 100
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 102
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 257
    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static park()V
    .locals 4

    .prologue
    .line 286
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 287
    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .locals 6
    .param p0, "blocker"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 156
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 157
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 158
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public static parkNanos(J)V
    .locals 2
    .param p0, "nanos"    # J

    .prologue
    .line 319
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 320
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 321
    :cond_0
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .locals 5
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    .prologue
    .line 194
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 196
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 197
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 198
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 200
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static parkUntil(J)V
    .locals 2
    .param p0, "deadline"    # J

    .prologue
    .line 354
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 355
    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .locals 3
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 237
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 238
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 239
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    .line 123
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void
.end method
