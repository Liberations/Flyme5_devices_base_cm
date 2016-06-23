.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final base:I

.field private static final serialVersionUID:J = -0x200931f59d1d4008L

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    .line 21
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    .line 26
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 27
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/Error;

    const-string v2, "data type scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 51
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "array"    # [J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 63
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 40
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 33
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JJJ)Z
    .locals 9
    .param p1, "offset"    # J
    .param p3, "expect"    # J
    .param p5, "update"    # J

    .prologue
    .line 141
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)J
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 85
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addAndGet(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 227
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 228
    .local v4, "current":J
    add-long v6, v4, p2

    .local v6, "next":J
    move-object v1, p0

    .line 229
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    return-wide v6
.end method

.method public final compareAndSet(IJJ)Z
    .locals 8
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 137
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 214
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "delta"    # J

    .prologue
    .line 189
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 191
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .line 192
    .local v4, "current":J
    add-long v6, v4, p2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    return-wide v4
.end method

.method public final getAndDecrement(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 178
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 168
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .locals 8
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 120
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    .local v4, "current":J
    move-object v1, p0

    move-wide v6, p2

    .line 121
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-wide v4
.end method

.method public final incrementAndGet(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 204
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final lazySet(IJ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 106
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 107
    return-void
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final set(IJ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "newValue"    # J

    .prologue
    .line 95
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 239
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 240
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 241
    const-string v3, "[]"

    .line 248
    :goto_0
    return-object v3

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "i":I
    :goto_1
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    if-ne v1, v2, :cond_1

    .line 248
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 249
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final weakCompareAndSet(IJJ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # J
    .param p4, "update"    # J

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
