.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3300
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator<TK;TV;>;"
    .local p1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3301
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    .line 3302
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->valueType:Ljava/lang/Class;

    .line 3303
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 3306
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3295
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3314
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator<TK;TV;>;"
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntry;

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 3310
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3311
    return-void
.end method
