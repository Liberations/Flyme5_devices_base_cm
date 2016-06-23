.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 770
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    .line 768
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iput v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 771
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    if-nez v2, :cond_1

    .line 772
    iget-object v1, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 773
    .local v1, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 774
    .local v0, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 775
    iget v2, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    aget-object v0, v1, v2

    goto :goto_0

    .line 777
    :cond_0
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    .line 779
    .end local v0    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ljava/util/HashMap$HashMapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    iget v4, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v3, v4, :cond_0

    .line 787
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 788
    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    if-nez v3, :cond_1

    .line 789
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 791
    :cond_1
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    .line 792
    .local v0, "entryToReturn":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v2, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 793
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 794
    .local v1, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-nez v1, :cond_2

    iget v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 795
    iget v3, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/HashMap$HashIterator;->nextIndex:I

    aget-object v1, v2, v3

    goto :goto_0

    .line 797
    :cond_2
    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->nextEntry:Ljava/util/HashMap$HashMapEntry;

    .line 798
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 802
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 804
    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iget v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 805
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 806
    :cond_1
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    iget-object v1, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->lastEntryReturned:Ljava/util/HashMap$HashMapEntry;

    .line 808
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 809
    return-void
.end method
