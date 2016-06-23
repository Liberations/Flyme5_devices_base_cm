.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field changed:Z

.field observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 41
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearChanged()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 66
    return-void
.end method

.method public countObservers()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z

    return v0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 126
    const/4 v5, 0x0

    .line 127
    .local v5, "size":I
    const/4 v1, 0x0

    .line 128
    .local v1, "arrays":[Ljava/util/Observer;
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    .line 131
    iget-object v6, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 132
    new-array v1, v5, [Ljava/util/Observer;

    .line 133
    iget-object v6, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v1, :cond_1

    .line 137
    move-object v0, v1

    .local v0, "arr$":[Ljava/util/Observer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 138
    .local v4, "observer":Ljava/util/Observer;
    invoke-interface {v4, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "arr$":[Ljava/util/Observer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "observer":Ljava/util/Observer;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 141
    :cond_1
    return-void
.end method

.method protected setChanged()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 149
    return-void
.end method
