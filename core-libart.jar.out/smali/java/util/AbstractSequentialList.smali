.class public abstract Ljava/util/AbstractSequentialList;
.super Ljava/util/AbstractList;
.source "AbstractSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 43
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, "colIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    .line 45
    .local v2, "next":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 72
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "result":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v2

    .line 75
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 83
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "result":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 88
    return-object v1
.end method
