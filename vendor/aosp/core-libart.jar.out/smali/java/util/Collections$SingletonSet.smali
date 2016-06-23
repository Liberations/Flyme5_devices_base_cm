.class final Ljava/util/Collections$SingletonSet;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c52419829c0b1bfL


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 228
    iput-object p1, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    .line 229
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 232
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    new-instance v0, Ljava/util/Collections$SingletonSet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet$1;-><init>(Ljava/util/Collections$SingletonSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
