.class final Ljava/util/LinkedList$LinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field pos:I


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .locals 1
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, "object":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TET;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    .line 69
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 70
    if-ltz p2, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    if-gt p2, v0, :cond_1

    .line 74
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 75
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_0

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_0
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    .line 77
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 76
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_1
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    if-lt v0, p2, :cond_2

    .line 81
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 80
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_1

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, "object":Ljava/lang/Object;, "TET;"
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    if-ne v2, v3, :cond_0

    .line 91
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 92
    .local v1, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 93
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 94
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 95
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 97
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 98
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 99
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    .line 100
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    .line 104
    return-void

    .line 102
    .end local v0    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

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
    .line 111
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v2, v2, Ljava/util/LinkedList;->modCount:I

    if-ne v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 117
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    .line 118
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 119
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 120
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 124
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 135
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 136
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 137
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    return v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 149
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    if-ne v2, v3, :cond_2

    .line 150
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 152
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 153
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 154
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 155
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    if-ne v2, v3, :cond_0

    .line 156
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 158
    :cond_0
    iput-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 160
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 161
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    .line 162
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    .line 169
    return-void

    .line 164
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 167
    :cond_2
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, "object":Ljava/lang/Object;, "TET;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iput-object p1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 181
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
