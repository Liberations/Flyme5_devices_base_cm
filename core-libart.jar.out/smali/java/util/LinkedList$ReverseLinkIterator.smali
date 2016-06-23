.class Ljava/util/LinkedList$ReverseLinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseLinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private expectedModCount:I

.field private link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    .local p2, "linkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TET;>;"
    iput-object p1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    .line 199
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    .line 200
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    .line 202
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    if-ne v0, v1, :cond_1

    .line 210
    invoke-virtual {p0}, Ljava/util/LinkedList$ReverseLinkIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    .line 213
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 217
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 222
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    if-ne v2, v3, :cond_1

    .line 223
    iget-boolean v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 225
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 226
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 227
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 228
    iput-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 229
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    .line 230
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    .line 231
    iget v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    .line 233
    return-void

    .line 235
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 237
    :cond_1
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method
