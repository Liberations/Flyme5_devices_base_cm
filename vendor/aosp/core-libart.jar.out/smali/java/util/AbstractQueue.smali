.class public abstract Ljava/util/AbstractQueue;
.super Ljava/util/AbstractCollection;
.source "AbstractQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    .line 153
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "c == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    if-ne p1, p0, :cond_1

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "c == this"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    const/4 v2, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 105
    return-object v0

    .line 107
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 86
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
