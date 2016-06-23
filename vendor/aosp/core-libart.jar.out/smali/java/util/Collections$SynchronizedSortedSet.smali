.class Ljava/util/Collections$SynchronizedSortedSet;
.super Ljava/util/Collections$SynchronizedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78adb1384b50312eL


# instance fields
.field private final ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    .line 866
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 867
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 871
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 872
    return-void
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
    .line 912
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 914
    monitor-exit v1

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "end":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    .local p2, "end":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
