.class Ljava/util/Collections$CheckedListIterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2922
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2923
    iput-object p1, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    .line 2924
    iput-object p2, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    .line 2925
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2960
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 2961
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2928
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 2940
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2932
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 2948
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2944
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 2952
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2936
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 2937
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 2956
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 2957
    return-void
.end method
