.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field isValid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 60
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    return v0
.end method
