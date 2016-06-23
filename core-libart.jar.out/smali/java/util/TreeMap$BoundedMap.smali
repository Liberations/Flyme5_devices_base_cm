.class final Ljava/util/TreeMap$BoundedMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$BoundedMap$BoundedKeySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient ascending:Z

.field private transient entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedEntrySet;"
        }
    .end annotation
.end field

.field private final transient from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient fromBound:Ljava/util/TreeMap$Bound;

.field private transient keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedKeySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;

.field private final transient to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient toBound:Ljava/util/TreeMap$Bound;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 3
    .param p2, "ascending"    # Z
    .param p4, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p6, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p3, "from":Ljava/lang/Object;, "TK;"
    .local p5, "to":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1108
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_0

    .line 1109
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_2

    .line 1113
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1118
    :cond_1
    :goto_0
    iput-boolean p2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    .line 1119
    iput-object p3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1120
    iput-object p4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1121
    iput-object p5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1122
    iput-object p6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1123
    return-void

    .line 1114
    :cond_2
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_1

    .line 1115
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p5, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/TreeMap$Bound;
    .param p3, "x3"    # Ljava/util/TreeMap$Bound;

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Z

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/TreeMap$BoundedMap;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    return v0
.end method

.method static synthetic access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;
    .locals 1
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1192
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private endpoint(Z)Ljava/util/TreeMap$Node;
    .locals 4
    .param p1, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v0, 0x0

    .line 1244
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-ne v1, p1, :cond_1

    .line 1245
    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1256
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1247
    :pswitch_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_0

    .line 1258
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    .line 1273
    :goto_1
    return-object v1

    .line 1247
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1250
    :pswitch_1
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1251
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    .line 1253
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1254
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    .line 1260
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_1
    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1271
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1262
    :pswitch_3
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_2

    .line 1273
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    goto :goto_1

    .line 1262
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_2

    .line 1265
    :pswitch_4
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1266
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_2

    .line 1268
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_5
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1269
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_2

    .line 1245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;
    .locals 5
    .param p2, "relation"    # Ljava/util/TreeMap$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-boolean v3, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    invoke-virtual {p2, v3}, Ljava/util/TreeMap$Relation;->forOrder(Z)Ljava/util/TreeMap$Relation;

    move-result-object p2

    .line 1298
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1299
    .local v1, "fromBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1301
    .local v2, "toBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_2

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_0

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_2

    .line 1302
    :cond_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1303
    .local v0, "comparison":I
    if-gtz v0, :cond_1

    .line 1304
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1305
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_6

    .line 1306
    sget-object p2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    .line 1311
    :cond_1
    :goto_0
    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    .line 1314
    .end local v0    # "comparison":I
    :cond_2
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_5

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_3

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_5

    .line 1315
    :cond_3
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1316
    .restart local v0    # "comparison":I
    if-ltz v0, :cond_4

    .line 1317
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1318
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_7

    .line 1319
    sget-object p2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    .line 1324
    :cond_4
    :goto_1
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    .line 1327
    .end local v0    # "comparison":I
    :cond_5
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v3

    return-object v3

    .line 1307
    .restart local v0    # "comparison":I
    :cond_6
    if-gez v0, :cond_1

    .line 1308
    sget-object p2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    goto :goto_0

    .line 1320
    :cond_7
    if-lez v0, :cond_4

    .line 1321
    sget-object p2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    goto :goto_1
.end method

.method private isInBounds(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1157
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method private isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 3
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 1165
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_1

    .line 1166
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    .line 1185
    :cond_0
    :goto_0
    return v0

    .line 1169
    :cond_1
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_2

    .line 1170
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1175
    :cond_2
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_4

    .line 1176
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 1185
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1179
    :cond_4
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_3

    .line 1180
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_0
.end method

.method private outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;

    .prologue
    .line 1471
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/TreeMap$Bound;->leftCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/util/TreeMap$Bound;->rightCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;
    .locals 11
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p4, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1433
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v0, :cond_0

    .line 1434
    move-object v9, p1

    .line 1435
    .local v9, "fromTmp":Ljava/lang/Object;, "TK;"
    move-object v7, p2

    .line 1436
    .local v7, "fromBoundTmp":Ljava/util/TreeMap$Bound;
    move-object p1, p3

    .line 1437
    move-object p2, p4

    .line 1438
    move-object p3, v9

    .line 1439
    move-object p4, v7

    .line 1447
    .end local v7    # "fromBoundTmp":Ljava/util/TreeMap$Bound;
    .end local v9    # "fromTmp":Ljava/lang/Object;, "TK;"
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_3

    .line 1448
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1449
    iget-object p2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1457
    :cond_1
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_5

    .line 1458
    iget-object p3, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1459
    iget-object p4, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1467
    :cond_2
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 1451
    :cond_3
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_4

    sget-object v8, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1452
    .local v8, "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v8, v0}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1453
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v8, v0}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1451
    .end local v8    # "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_4
    iget-object v8, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    goto :goto_0

    .line 1461
    :cond_5
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_6

    sget-object v10, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1462
    .local v10, "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_1
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1463
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1461
    .end local v10    # "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_6
    iget-object v10, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1354
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1367
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1368
    .local v0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v1, :cond_0

    .line 1371
    .end local v0    # "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1138
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1397
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1383
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    .line 1384
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1213
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1214
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1216
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1340
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1345
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, p1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1416
    .local v0, "toBound":Ljava/util/TreeMap$Bound;
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v1, v2, p1, v0}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    .line 1415
    .end local v0    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1358
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1362
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1363
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v0, 0x1

    .line 1130
    invoke-direct {p0, v0}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1234
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1236
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1336
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1392
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    .line 1393
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1205
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1206
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 1208
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1225
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 1228
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1145
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1126
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->count(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1406
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    if-eqz p4, :cond_1

    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1407
    .local v1, "toBound":Ljava/util/TreeMap$Bound;
    :goto_1
    invoke-direct {p0, p1, v0, p3, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v2

    return-object v2

    .line 1405
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v1    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    .line 1406
    .restart local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_1
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1425
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    .line 1424
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1644
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    goto :goto_0
.end method
