.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 76
    return-void
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    .prologue
    .line 100
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    .line 101
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextDouble(D)D
    .locals 3
    .param p1, "n"    # D

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 5
    .param p1, "least"    # D
    .param p3, "bound"    # D

    .prologue
    .line 191
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public nextInt(II)I
    .locals 1
    .param p1, "least"    # I
    .param p2, "bound"    # I

    .prologue
    .line 115
    if-lt p1, p2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 117
    :cond_0
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .line 130
    const-wide/16 v8, 0x0

    cmp-long v1, p1, v8

    if-gtz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v8, "n must be positive"

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    const-wide/16 v6, 0x0

    .line 138
    .local v6, "offset":J
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v1, p1, v8

    if-ltz v1, :cond_3

    .line 139
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->next(I)I

    move-result v0

    .line 140
    .local v0, "bits":I
    const/4 v1, 0x1

    ushr-long v2, p1, v1

    .line 141
    .local v2, "half":J
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    move-wide v4, v2

    .line 142
    .local v4, "nextn":J
    :goto_1
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 143
    sub-long v8, p1, v4

    add-long/2addr v6, v8

    .line 144
    :cond_1
    move-wide p1, v4

    .line 145
    goto :goto_0

    .line 141
    .end local v4    # "nextn":J
    :cond_2
    sub-long v4, p1, v2

    goto :goto_1

    .line 146
    .end local v0    # "bits":I
    .end local v2    # "half":J
    :cond_3
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v8, v6

    return-wide v8
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "least"    # J
    .param p3, "bound"    # J

    .prologue
    .line 160
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 162
    :cond_0
    sub-long v0, p3, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 94
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 96
    :cond_0
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    .line 97
    return-void
.end method
