.class Ljava/nio/MemoryBlock$MemoryMappedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryMappedBlock"
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    .prologue
    .line 39
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/MemoryBlock$MemoryMappedBlock;->free()V

    .line 57
    return-void
.end method

.method public free()V
    .locals 6

    .prologue
    .line 43
    iget-wide v2, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-wide v2, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:J

    iget-wide v4, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->size:J

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    invoke-super {p0}, Ljava/nio/MemoryBlock;->free()V

    .line 53
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 49
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
