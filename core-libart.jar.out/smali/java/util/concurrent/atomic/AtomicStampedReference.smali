.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final pairOffset:J


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    .line 165
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "pair"

    const-class v2, Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "initialStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 46
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .param p0, "UNSAFE"    # Lsun/misc/Unsafe;
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "klazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "error":Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    throw v1
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 156
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_0

    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 2
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 121
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-ne p3, v1, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p4, v1, :cond_1

    :cond_0
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 3
    .param p1, "stampHolder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 76
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    const/4 v1, 0x0

    iget v2, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    aput v2, p1, v1

    .line 77
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public getStamp()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 137
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_1

    .line 138
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 139
    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 1
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
