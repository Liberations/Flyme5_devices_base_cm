.class Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;)V
    .locals 0

    .prologue
    .line 241
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;, "Ljava/util/IdentityHashMap$IdentityHashMapEntrySet.1;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;->this$0:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;, "Ljava/util/IdentityHashMap$IdentityHashMapEntrySet.1;"
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;->get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/util/MapEntry;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TKT;TVT;>;)",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;, "Ljava/util/IdentityHashMap$IdentityHashMapEntrySet.1;"
    .local p1, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TKT;TVT;>;"
    return-object p1
.end method
