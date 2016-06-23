.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final base:I

.field private static final serialVersionUID:J = 0x27b857513300bd8bL

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    .line 22
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    .line 27
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 28
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/Error;

    const-string v2, "data type scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->shift:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 52
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "array"    # [I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 64
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 41
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->shift:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 34
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 35
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

    .line 37
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JII)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "expect"    # I
    .param p4, "update"    # I

    .prologue
    .line 142
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)I
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 86
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final addAndGet(II)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 228
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 229
    .local v0, "current":I
    add-int v1, v0, p2

    .line 230
    .local v1, "next":I
    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    return v1
.end method

.method public final compareAndSet(III)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 215
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    move-result v0

    return v0
.end method

.method public final get(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    return v0
.end method

.method public final getAndAdd(II)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I

    .prologue
    .line 190
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 192
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 193
    .local v0, "current":I
    add-int v1, v0, p2

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    return v0
.end method

.method public final getAndDecrement(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndIncrement(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndSet(II)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 121
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 122
    .local v0, "current":I
    invoke-direct {p0, v2, v3, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    return v0
.end method

.method public final incrementAndGet(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    move-result v0

    return v0
.end method

.method public final lazySet(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 108
    return-void
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final set(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 96
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 241
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 242
    const-string v3, "[]"

    .line 249
    :goto_0
    return-object v3

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "i":I
    :goto_1
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    if-ne v1, v2, :cond_1

    .line 249
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 250
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final weakCompareAndSet(III)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
