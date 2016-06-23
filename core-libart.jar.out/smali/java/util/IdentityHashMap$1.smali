.class Ljava/util/IdentityHashMap$1;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    .prologue
    .line 611
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 624
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 625
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 614
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    new-instance v1, Ljava/util/IdentityHashMap$1$1;

    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$1$1;-><init>(Ljava/util/IdentityHashMap$1;)V

    iget-object v2, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 629
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const/4 v0, 0x1

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Ljava/util/IdentityHashMap$1;, "Ljava/util/IdentityHashMap.1;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    return v0
.end method
