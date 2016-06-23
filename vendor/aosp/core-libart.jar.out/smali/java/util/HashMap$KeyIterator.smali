.class final Ljava/util/HashMap$KeyIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 812
    .local p0, "this":Ljava/util/HashMap$KeyIterator;, "Ljava/util/HashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/HashMap$KeyIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/HashMap;
    .param p2, "x1"    # Ljava/util/HashMap$1;

    .prologue
    .line 812
    .local p0, "this":Ljava/util/HashMap$KeyIterator;, "Ljava/util/HashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "this":Ljava/util/HashMap$KeyIterator;, "Ljava/util/HashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$KeyIterator;->nextEntry()Ljava/util/HashMap$HashMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
