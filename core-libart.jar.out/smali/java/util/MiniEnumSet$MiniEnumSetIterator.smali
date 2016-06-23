.class Ljava/util/MiniEnumSet$MiniEnumSetIterator;
.super Ljava/lang/Object;
.source "MiniEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/MiniEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniEnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentBits:J

.field private last:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mask:J

.field final synthetic this$0:Ljava/util/MiniEnumSet;


# direct methods
.method private constructor <init>(Ljava/util/MiniEnumSet;)V
    .locals 4

    .prologue
    .line 45
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iput-object p1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    # getter for: Ljava/util/MiniEnumSet;->bits:J
    invoke-static {v0}, Ljava/util/MiniEnumSet;->access$000(Ljava/util/MiniEnumSet;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    .line 56
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/MiniEnumSet;
    .param p2, "x1"    # Ljava/util/MiniEnumSet$1;

    .prologue
    .line 45
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-direct {p0, p1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 64
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Enum;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 72
    :cond_0
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 73
    .local v0, "ordinal":I
    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    # getter for: Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;
    invoke-static {v1}, Ljava/util/MiniEnumSet;->access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    .line 75
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    iget-wide v4, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    .line 76
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    iget-wide v4, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    neg-long v4, v4

    and-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    .line 78
    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-virtual {p0}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/util/MiniEnumSet;->remove(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    .line 88
    return-void
.end method
