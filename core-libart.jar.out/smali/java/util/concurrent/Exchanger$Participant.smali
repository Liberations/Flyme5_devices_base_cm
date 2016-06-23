.class final Ljava/util/concurrent/Exchanger$Participant;
.super Ljava/lang/ThreadLocal;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Participant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/Exchanger$Node;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Participant;->initialValue()Ljava/util/concurrent/Exchanger$Node;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/concurrent/Exchanger$Node;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Node;-><init>()V

    return-object v0
.end method
