.class Ljava/nio/MemoryBlock$UnmanagedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmanagedBlock"
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    .prologue
    .line 91
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock$1;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Ljava/nio/MemoryBlock$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJ)V

    return-void
.end method
