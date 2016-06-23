.class Ljava/util/IdentityHashMap$IdentityHashMapEntry;
.super Ljava/util/MapEntry;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p2, "theKey":Ljava/lang/Object;, "TK;"
    .local p3, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, p3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 104
    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_3
    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Ljava/util/MapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
