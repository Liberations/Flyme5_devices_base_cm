.class Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CowIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final from:I

.field private index:I

.field private final snapshot:[Ljava/lang/Object;

.field private final to:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .param p1, "snapshot"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 698
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    .line 699
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->snapshot:[Ljava/lang/Object;

    .line 700
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->from:I

    .line 701
    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->to:I

    .line 702
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    .line 703
    return-void
.end method

.method static synthetic access$002(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;
    .param p1, "x1"    # I

    .prologue
    .line 692
    iput p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 710
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->to:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 714
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->from:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->to:I

    if-ge v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 722
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 727
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->from:I

    if-le v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 735
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 740
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 744
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
