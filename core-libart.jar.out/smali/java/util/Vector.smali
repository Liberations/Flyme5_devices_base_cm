.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xa

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Vector;-><init>(II)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 79
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "capacityIncrement"    # I

    .prologue
    .line 93
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 94
    if-gez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    .line 99
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method private static arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;
    .locals 1
    .param p0, "index"    # I
    .param p1, "size"    # I

    .prologue
    .line 907
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private grow(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v3, 0x0

    .line 446
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 451
    return-void
.end method

.method private growBy(I)V
    .locals 5
    .param p1, "required"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "adding":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_1

    .line 474
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_0

    .line 475
    move v0, p1

    .line 477
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    .line 478
    add-int/2addr v0, v0

    goto :goto_0

    .line 481
    :cond_1
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    div-int v2, p1, v2

    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    mul-int v0, v2, v3

    .line 482
    if-ge v0, p1, :cond_2

    .line 483
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    add-int/2addr v0, v2

    .line 486
    :cond_2
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 487
    .local v1, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 489
    return-void
.end method

.method private growByOne()V
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "adding":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_1

    .line 459
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 466
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 469
    return-void

    .line 463
    .end local v1    # "newData":[Ljava/lang/Object;, "[TE;"
    :cond_1
    iget v0, p0, Ljava/util/Vector;->capacityIncrement:I

    goto :goto_0
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 141
    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    .line 155
    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1

    .line 156
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    if-ltz p1, :cond_4

    :try_start_0
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v5, :cond_4

    .line 178
    invoke-interface {p2}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 179
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 180
    const/4 v5, 0x0

    .line 197
    :goto_0
    monitor-exit p0

    return v5

    .line 182
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 183
    .local v3, "required":I
    if-lez v3, :cond_1

    .line 184
    invoke-direct {p0, v3}, Ljava/util/Vector;->growBy(I)V

    .line 186
    :cond_1
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v5, p1

    .line 187
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 188
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v7, p1, v4

    invoke-static {v5, p1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    move v2, p1

    .line 192
    .end local p1    # "location":I
    .local v2, "location":I
    :goto_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "location":I
    .restart local p1    # "location":I
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, p1

    .end local p1    # "location":I
    .restart local v2    # "location":I
    goto :goto_1

    .line 195
    :cond_3
    :try_start_4
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/util/Vector;->elementCount:I

    .line 196
    iget v5, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Vector;->modCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    const/4 v5, 0x1

    move p1, v2

    .end local v2    # "location":I
    .restart local p1    # "location":I
    goto :goto_0

    .line 199
    .end local v0    # "count":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .end local v3    # "required":I
    .end local v4    # "size":I
    :cond_4
    :try_start_5
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v5}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v5

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit p0

    throw v5

    .end local p1    # "location":I
    .restart local v0    # "count":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .restart local v2    # "location":I
    .restart local v3    # "required":I
    .restart local v4    # "size":I
    :catchall_1
    move-exception v5

    move p1, v2

    .end local v2    # "location":I
    .restart local p1    # "location":I
    goto :goto_2
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    .line 224
    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1

    .line 225
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 247
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 248
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 261
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 262
    .local v1, "vector":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-object v1

    .line 264
    .end local v1    # "vector":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .locals 4
    .param p1, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 310
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_0

    .line 326
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 328
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 3
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 369
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 370
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int v0, v1, v2

    .line 373
    .local v0, "next":I
    if-le p1, v0, :cond_2

    .end local p1    # "minimumCapacity":I
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v0    # "next":I
    :cond_0
    monitor-exit p0

    return-void

    .line 370
    .restart local p1    # "minimumCapacity":I
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v0    # "next":I
    :cond_2
    move p1, v0

    .line 373
    goto :goto_1

    .line 369
    .end local v0    # "next":I
    .end local p1    # "minimumCapacity":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 390
    monitor-enter p0

    if-ne p0, p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 393
    :cond_1
    :try_start_0
    instance-of v9, p1, Ljava/util/List;

    if-eqz v9, :cond_6

    .line 394
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 395
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Ljava/util/Vector;->elementCount:I

    if-eq v9, v10, :cond_2

    move v7, v8

    .line 396
    goto :goto_0

    .line 399
    :cond_2
    const/4 v3, 0x0

    .line 400
    .local v3, "index":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move v4, v3

    .line 401
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 402
    iget-object v9, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-object v1, v9, v4

    .local v1, "e1":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 403
    .local v2, "e2":Ljava/lang/Object;
    if-nez v1, :cond_4

    if-nez v2, :cond_5

    :cond_3
    move v4, v3

    .line 406
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 403
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    :cond_5
    move v7, v8

    .line 404
    goto :goto_0

    .end local v1    # "e1":Ljava/lang/Object;
    .end local v2    # "e2":Ljava/lang/Object;
    .end local v3    # "index":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    move v7, v8

    .line 409
    goto :goto_0

    .line 390
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 427
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    .prologue
    .line 500
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    const/4 v1, 0x1

    .line 501
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v2, :cond_1

    .line 502
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_1

    .line 505
    :cond_1
    monitor-exit p0

    return v1

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 523
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "location"    # I

    .prologue
    .line 544
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 545
    move v0, p2

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    .line 546
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 557
    :goto_1
    monitor-exit p0

    return v1

    .line 545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    .line 552
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    move v1, v0

    .line 553
    goto :goto_1

    .line 551
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 557
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    if-ltz p2, :cond_2

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v1, :cond_2

    .line 578
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 579
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    .line 581
    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p2

    .line 582
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 583
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 587
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 588
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 590
    .end local v0    # "count":I
    :cond_2
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 603
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 640
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "location"    # I

    .prologue
    .line 661
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v1, :cond_4

    .line 662
    if-eqz p1, :cond_1

    .line 663
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 664
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 675
    :goto_1
    monitor-exit p0

    return v1

    .line 663
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 669
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 670
    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    .line 671
    goto :goto_1

    .line 669
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 675
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 677
    .end local v0    # "i":I
    :cond_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v2, :cond_1

    .line 695
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 696
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    .line 697
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v2, p1

    .line 698
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 699
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 703
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-object v0

    .line 706
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    .end local v1    # "size":I
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v2}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 725
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllElements()V
    .locals 3

    .prologue
    .line 751
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    .line 752
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 755
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    monitor-exit p0

    return-void

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v1, 0x0

    .line 774
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 778
    :goto_0
    monitor-exit p0

    return v1

    .line 777
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    const/4 v1, 0x1

    goto :goto_0

    .line 774
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 4
    .param p1, "location"    # I

    .prologue
    .line 795
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    if-ltz p1, :cond_1

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_1

    .line 796
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 797
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p1

    .line 798
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 799
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    :cond_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 803
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    monitor-exit p0

    return-void

    .line 805
    .end local v0    # "size":I
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeRange(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 824
    if-ltz p1, :cond_2

    if-gt p1, p2, :cond_2

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v1, :cond_2

    .line 825
    if-ne p1, p2, :cond_0

    .line 842
    :goto_0
    return-void

    .line 828
    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq p2, v1, :cond_1

    .line 829
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v2, p2, p1

    sub-int v0, v1, v2

    .line 832
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 833
    iput v0, p0, Ljava/util/Vector;->elementCount:I

    .line 838
    .end local v0    # "newCount":I
    :goto_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    goto :goto_0

    .line 835
    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, p1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 836
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    goto :goto_1

    .line 840
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_0

    .line 875
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 876
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    monitor-exit p0

    return-object v0

    .line 879
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_0

    .line 896
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    .line 898
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 921
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 930
    :goto_0
    monitor-exit p0

    return-void

    .line 924
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 925
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, p1, :cond_1

    .line 926
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 928
    :cond_1
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    .line 929
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 941
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 961
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 972
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 973
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit p0

    return-object v0

    .line 972
    .end local v0    # "result":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 994
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 995
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 996
    .local v1, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 998
    .end local v1    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1000
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :cond_1
    monitor-exit p0

    return-object p1

    .line 994
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1013
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    if-nez v3, :cond_0

    .line 1014
    const-string v3, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1016
    :cond_0
    :try_start_1
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v3, -0x1

    .line 1017
    .local v2, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    mul-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1018
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1020
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_1

    .line 1021
    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :goto_2
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1023
    :cond_1
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1013
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1027
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p0, :cond_3

    .line 1028
    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    :goto_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1030
    :cond_3
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized trimToSize()V
    .locals 2

    .prologue
    .line 1044
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq v0, v1, :cond_0

    .line 1045
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-direct {p0, v0}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    :cond_0
    monitor-exit p0

    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
