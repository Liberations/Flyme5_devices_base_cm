.class Ljava/util/EnumMap$EnumMapValueCollection;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TVT;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 242
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    .line 243
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 248
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 252
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 258
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapValueCollection$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapValueCollection$1;-><init>(Ljava/util/EnumMap$EnumMapValueCollection;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    const/4 v1, 0x1

    .line 268
    if-nez p1, :cond_1

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget v2, v2, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_3

    .line 270
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :goto_1
    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget v2, v2, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_3

    .line 277
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 284
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap$EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
