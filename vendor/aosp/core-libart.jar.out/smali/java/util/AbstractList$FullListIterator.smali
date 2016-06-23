.class final Ljava/util/AbstractList$FullListIterator;
.super Ljava/util/AbstractList$SimpleListIterator;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FullListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Simple",
        "ListIterator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .locals 1
    .param p2, "start"    # I

    .prologue
    .line 89
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iput-object p1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    invoke-direct {p0, p1}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    .line 90
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 91
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_1

    .line 100
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    .line 106
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    if-eq v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    .line 112
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_0

    .line 125
    :try_start_0
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "result":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    .line 127
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object v1

    .line 129
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 133
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Ljava/util/AbstractList$FullListIterator;, "Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
