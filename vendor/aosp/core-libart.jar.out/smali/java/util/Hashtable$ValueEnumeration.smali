.class final Ljava/util/Hashtable$ValueEnumeration;
.super Ljava/util/Hashtable$HashIterator;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Enumeration",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 787
    .local p0, "this":Ljava/util/Hashtable$ValueEnumeration;, "Ljava/util/Hashtable<TK;TV;>.ValueEnumeration;"
    iput-object p1, p0, Ljava/util/Hashtable$ValueEnumeration;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .prologue
    .line 787
    .local p0, "this":Ljava/util/Hashtable$ValueEnumeration;, "Ljava/util/Hashtable<TK;TV;>.ValueEnumeration;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 789
    .local p0, "this":Ljava/util/Hashtable$ValueEnumeration;, "Ljava/util/Hashtable<TK;TV;>.ValueEnumeration;"
    invoke-virtual {p0}, Ljava/util/Hashtable$ValueEnumeration;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "this":Ljava/util/Hashtable$ValueEnumeration;, "Ljava/util/Hashtable<TK;TV;>.ValueEnumeration;"
    invoke-virtual {p0}, Ljava/util/Hashtable$ValueEnumeration;->nextEntryNotFailFast()Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
