.class Ljava/util/prefs/AbstractPreferences$EventDispatcher;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatcher"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method private dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 5
    .param p1, "event"    # Ljava/util/prefs/NodeChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p2, "nodeChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 879
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EventListener;

    .line 880
    .local v3, "nodeChangeListener":Ljava/util/EventListener;
    move-object v0, v3

    check-cast v0, Ljava/util/prefs/NodeChangeListener;

    move-object v2, v0

    .line 881
    .local v2, "ncl":Ljava/util/prefs/NodeChangeListener;
    invoke-interface {v2, p1}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_0

    .line 883
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ncl":Ljava/util/prefs/NodeChangeListener;
    .end local v3    # "nodeChangeListener":Ljava/util/EventListener;
    :catchall_0
    move-exception v4

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    return-void
.end method

.method private dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 3
    .param p1, "event"    # Ljava/util/prefs/NodeChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p2, "nodeChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 870
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 871
    .local v1, "nodeChangeListener":Ljava/util/EventListener;
    check-cast v1, Ljava/util/prefs/NodeChangeListener;

    .end local v1    # "nodeChangeListener":Ljava/util/EventListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    goto :goto_0

    .line 873
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    return-void
.end method

.method private dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V
    .locals 3
    .param p1, "event"    # Ljava/util/prefs/PreferenceChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/PreferenceChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p2, "preferenceChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    .line 861
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 862
    .local v1, "preferenceChangeListener":Ljava/util/EventListener;
    check-cast v1, Ljava/util/prefs/PreferenceChangeListener;

    .end local v1    # "preferenceChangeListener":Ljava/util/EventListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    goto :goto_0

    .line 864
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    return-void
.end method

.method private getEventObject()Ljava/util/EventObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 848
    # getter for: Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 849
    :try_start_0
    # getter for: Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    # getter for: Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 852
    :cond_0
    # getter for: Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventObject;

    .line 853
    .local v0, "event":Ljava/util/EventObject;
    # getter for: Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$200()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 854
    monitor-exit v2

    return-object v0

    .line 855
    .end local v0    # "event":Ljava/util/EventObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 828
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->getEventObject()Ljava/util/EventObject;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 833
    .local v1, "event":Ljava/util/EventObject;
    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    .line 834
    .local v2, "pref":Ljava/util/prefs/AbstractPreferences;
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    if-eqz v3, :cond_1

    .line 835
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    .end local v1    # "event":Ljava/util/EventObject;
    # getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    .line 829
    .end local v2    # "pref":Ljava/util/prefs/AbstractPreferences;
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 837
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "event":Ljava/util/EventObject;
    .restart local v2    # "pref":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    if-eqz v3, :cond_2

    .line 838
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    .end local v1    # "event":Ljava/util/EventObject;
    # getter for: Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$000(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    goto :goto_0

    .line 840
    .restart local v1    # "event":Ljava/util/EventObject;
    :cond_2
    instance-of v3, v1, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v3, :cond_0

    .line 841
    check-cast v1, Ljava/util/prefs/PreferenceChangeEvent;

    .end local v1    # "event":Ljava/util/EventObject;
    # getter for: Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V

    goto :goto_0
.end method
