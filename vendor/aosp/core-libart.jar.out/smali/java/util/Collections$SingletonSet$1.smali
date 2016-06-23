.class Ljava/util/Collections$SingletonSet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$0:Ljava/util/Collections$SingletonSet;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonSet;)V
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Ljava/util/Collections$SingletonSet$1;, "Ljava/util/Collections$SingletonSet.1;"
    iput-object p1, p0, Ljava/util/Collections$SingletonSet$1;->this$0:Ljava/util/Collections$SingletonSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Ljava/util/Collections$SingletonSet$1;, "Ljava/util/Collections$SingletonSet.1;"
    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

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
    .line 248
    .local p0, "this":Ljava/util/Collections$SingletonSet$1;, "Ljava/util/Collections$SingletonSet.1;"
    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    .line 250
    iget-object v0, p0, Ljava/util/Collections$SingletonSet$1;->this$0:Ljava/util/Collections$SingletonSet;

    iget-object v0, v0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Ljava/util/Collections$SingletonSet$1;, "Ljava/util/Collections$SingletonSet.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
