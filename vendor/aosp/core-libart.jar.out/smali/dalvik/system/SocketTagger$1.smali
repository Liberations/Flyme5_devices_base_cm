.class final Ldalvik/system/SocketTagger$1;
.super Ldalvik/system/SocketTagger;
.source "SocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    return-void
.end method


# virtual methods
.method public tag(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "socketDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public untag(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "socketDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method
