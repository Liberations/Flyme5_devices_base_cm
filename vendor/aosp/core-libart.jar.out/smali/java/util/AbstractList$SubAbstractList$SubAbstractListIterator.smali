.class final Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList$SubAbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListIterator"
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
.field private end:I

.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private start:I

.field private final subList:Ljava/util/AbstractList$SubAbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V
    .locals 1
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "list":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList$SubAbstractList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    .line 180
    iput-object p2, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    .line 181
    iput p3, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    .line 182
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 183
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    .line 188
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 189
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 192
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

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
    .line 196
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

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
            "()TE;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 207
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int/2addr v0, v1

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
    .line 211
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 218
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    .line 219
    .local v0, "previous":I
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

    .line 220
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int v1, v0, v1

    .line 222
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 226
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 227
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    .line 228
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 229
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;, "Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 233
    return-void
.end method
