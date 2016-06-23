.class final Ljava/util/Hashtable$KeyEnumeration;
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
    name = "KeyEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Enumeration",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 781
    .local p0, "this":Ljava/util/Hashtable$KeyEnumeration;, "Ljava/util/Hashtable<TK;TV;>.KeyEnumeration;"
    iput-object p1, p0, Ljava/util/Hashtable$KeyEnumeration;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .prologue
    .line 781
    .local p0, "this":Ljava/util/Hashtable$KeyEnumeration;, "Ljava/util/Hashtable<TK;TV;>.KeyEnumeration;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 783
    .local p0, "this":Ljava/util/Hashtable$KeyEnumeration;, "Ljava/util/Hashtable<TK;TV;>.KeyEnumeration;"
    invoke-virtual {p0}, Ljava/util/Hashtable$KeyEnumeration;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Ljava/util/Hashtable$KeyEnumeration;, "Ljava/util/Hashtable<TK;TV;>.KeyEnumeration;"
    invoke-virtual {p0}, Ljava/util/Hashtable$KeyEnumeration;->nextEntryNotFailFast()Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
