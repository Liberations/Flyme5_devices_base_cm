.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final multiplier:J = 0x5deece66dL

.field private static volatile seedBase:J = 0x0L

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/util/Random;->seedBase:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Ljava/util/Random;->seedBase:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 71
    sget-wide v0, Ljava/util/Random;->seedBase:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Ljava/util/Random;->seedBase:J

    .line 72
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 83
    return-void
.end method


# virtual methods
.method protected declared-synchronized next(I)I
    .locals 4
    .param p1, "bits"    # I

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/Random;->seed:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 98
    iget-wide v0, p0, Ljava/util/Random;->seed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    .line 112
    const/4 v3, 0x0

    .local v3, "rand":I
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v2, 0x0

    .line 113
    .local v2, "loop":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 114
    if-nez v2, :cond_0

    .line 115
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 116
    const/4 v2, 0x3

    .line 120
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    int-to-byte v4, v3

    aput-byte v4, p1, v0

    .line 121
    shr-int/lit8 v3, v3, 0x8

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 118
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 123
    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .prologue
    const/16 v2, 0x1b

    .line 130
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 138
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b800000    # 1.6777216E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 12

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v8, :cond_0

    .line 151
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 152
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-wide v8

    .line 157
    :cond_0
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v10

    .line 158
    .local v4, "v1":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v10

    .line 159
    .local v6, "v2":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    .line 160
    .local v2, "s":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v2, v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_0

    .line 163
    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    .line 164
    .local v0, "multiplier":D
    mul-double v8, v6, v0

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 165
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    mul-double v8, v4, v0

    goto :goto_0

    .line 150
    .end local v0    # "multiplier":D
    .end local v2    # "s":D
    .end local v4    # "v1":D
    .end local v6    # "v2":D
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 7
    .param p1, "n"    # I

    .prologue
    const/16 v6, 0x1f

    .line 181
    if-gtz p1, :cond_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n <= 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_0
    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_1

    .line 185
    int-to-long v2, p1

    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v1, v2

    .line 192
    :goto_0
    return v1

    .line 189
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v0

    .line 190
    .local v0, "bits":I
    rem-int v1, v0, p1

    .line 191
    .local v1, "val":I
    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_1

    goto :goto_0
.end method

.method public nextLong()J
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 199
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 207
    monitor-enter p0

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
