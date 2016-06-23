.class Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject$SecureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TSST;>;"
    }
.end annotation


# instance fields
.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    .line 724
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 727
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 739
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v0, v0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    # invokes: Ljavax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Ljavax/security/auth/Subject;->access$100(Ljavax/security/auth/Subject;)V

    .line 740
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 741
    return-void
.end method
