.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$ReverseLinkIterator;,
        Ljava/util/LinkedList$LinkIterator;,
        Ljava/util/LinkedList$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient size:I

.field transient voidLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 245
    new-instance v0, Ljava/util/LinkedList$Link;

    invoke-direct {v0, v1, v1, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 246
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 247
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 261
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 262
    return-void
.end method

.method private addFirstImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 418
    .local v1, "oldFirst":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 419
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 420
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 421
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 422
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 423
    const/4 v2, 0x1

    return v2
.end method

.method private addLastImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 315
    .local v1, "oldLast":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 316
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 317
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 318
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 319
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 320
    const/4 v2, 0x1

    return v2
.end method

.method private getFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 535
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    .line 536
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 538
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private peekFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 908
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v4, 0x0

    .line 979
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 980
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Ljava/util/LinkedList;->size:I

    .line 981
    new-instance v3, Ljava/util/LinkedList$Link;

    invoke-direct {v3, v4, v4, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 982
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 983
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 984
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 985
    .local v2, "nextLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 986
    move-object v1, v2

    .line 987
    goto :goto_0

    .line 988
    .end local v2    # "nextLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 989
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v3, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 990
    return-void
.end method

.method private removeFirstImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 681
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_0

    .line 682
    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 683
    .local v1, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 684
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 685
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 686
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 687
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 689
    .end local v1    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeFirstOccurrenceImpl(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 829
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    .line 830
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method private removeLastImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 705
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_0

    .line 706
    iget-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 707
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 708
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 709
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 710
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 711
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 713
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 836
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_1

    if-nez v0, :cond_0

    .line 837
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 838
    const/4 v1, 0x1

    .line 841
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :goto_1
    return v1

    .line 836
    .restart local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 841
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 969
    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 970
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 971
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 974
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_2

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v4, :cond_2

    .line 280
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 281
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_0

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 283
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 287
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 290
    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 291
    .local v3, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-direct {v2, p2, v3, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 292
    .local v2, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 293
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 294
    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 295
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 299
    return-void

    .line 297
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v3    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-ltz p1, :cond_0

    iget v8, p0, Ljava/util/LinkedList;->size:I

    if-le p1, v8, :cond_1

    .line 344
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 346
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 347
    .local v0, "adding":I
    if-nez v0, :cond_2

    .line 348
    const/4 v8, 0x0

    .line 373
    :goto_0
    return v8

    .line 350
    :cond_2
    if-ne p2, p0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 353
    .local v2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_1
    iget-object v7, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 354
    .local v7, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v8, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v8, v8, 0x2

    if-ge p1, v8, :cond_4

    .line 355
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_5

    .line 356
    iget-object v7, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .end local v3    # "i":I
    .end local v7    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_3
    move-object v2, p2

    .line 350
    goto :goto_1

    .line 359
    .restart local v2    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .restart local v7    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_4
    iget v3, p0, Ljava/util/LinkedList;->size:I

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, p1, :cond_5

    .line 360
    iget-object v7, v7, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 359
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 363
    :cond_5
    iget-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 364
    .local v6, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 365
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v5, Ljava/util/LinkedList$Link;

    const/4 v8, 0x0

    invoke-direct {v5, v1, v7, v8}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 366
    .local v5, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v5, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 367
    move-object v7, v5

    .line 368
    goto :goto_4

    .line 369
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v5    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_6
    iput-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 370
    iput-object v7, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 371
    iget v8, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v8, v0

    iput v8, p0, Ljava/util/LinkedList;->size:I

    .line 372
    iget v8, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/LinkedList;->modCount:I

    .line 373
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 387
    .local v0, "adding":I
    if-nez v0, :cond_0

    .line 388
    const/4 v6, 0x0

    .line 403
    :goto_0
    return v6

    .line 390
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    .local v2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_1
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 394
    .local v5, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/LinkedList$Link;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 396
    .local v4, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 397
    move-object v5, v4

    .line 398
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v5    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_1
    move-object v2, p1

    .line 390
    goto :goto_1

    .line 399
    .restart local v2    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v6, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 400
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 401
    iget v6, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/util/LinkedList;->size:I

    .line 402
    iget v6, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/LinkedList;->modCount:I

    .line 403
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 444
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-lez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 446
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 447
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 448
    iget v0, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList;->modCount:I

    .line 450
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 463
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 464
    .local v1, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/LinkedList;->size:I

    .line 465
    new-instance v2, Ljava/util/LinkedList$Link;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 466
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 467
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 468
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-object v1

    .line 470
    .end local v1    # "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x1

    .line 485
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 486
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    .line 487
    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 488
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    :goto_1
    return v1

    .line 491
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 494
    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 495
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 501
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_2

    iget v2, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v2, :cond_2

    .line 507
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 508
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_0

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 510
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 514
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 517
    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 519
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 550
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    .line 551
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 553
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 558
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 559
    .local v1, "pos":I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 560
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    .line 561
    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 562
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 577
    :goto_1
    return v2

    .line 565
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 574
    add-int/lit8 v1, v1, 0x1

    .line 569
    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 570
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    .line 571
    goto :goto_1

    .line 577
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 591
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v1, p0, Ljava/util/LinkedList;->size:I

    .line 592
    .local v1, "pos":I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 593
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    .line 594
    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 595
    add-int/lit8 v1, v1, -0x1

    .line 596
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 610
    :goto_1
    return v2

    .line 599
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 602
    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    .line 603
    add-int/lit8 v1, v1, -0x1

    .line 604
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    .line 605
    goto :goto_1

    .line 610
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 764
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    .line 805
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_2

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v4, :cond_2

    .line 642
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 643
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_0

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 645
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 649
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 648
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 652
    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 653
    .local v3, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 654
    .local v2, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 655
    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 656
    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 657
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 658
    iget-object v4, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v4

    .line 660
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v3    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 665
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 814
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 824
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 825
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_2

    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v3, :cond_2

    .line 863
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 864
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v3, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_0

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 866
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 870
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 869
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 873
    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 874
    .local v2, "result":Ljava/lang/Object;, "TE;"
    iput-object p2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 875
    return-object v2

    .line 877
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 887
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 923
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 924
    .local v1, "index":I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 925
    .local v0, "contents":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 926
    .local v3, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_0

    .line 927
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 928
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 930
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 952
    .local v1, "index":I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    array-length v5, p1

    if-le v4, v5, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 954
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 956
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 957
    .local v3, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_1

    .line 958
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, p1, v1

    .line 959
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 961
    :cond_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 962
    const/4 v4, 0x0

    aput-object v4, p1, v1

    .line 964
    :cond_2
    return-object p1
.end method
