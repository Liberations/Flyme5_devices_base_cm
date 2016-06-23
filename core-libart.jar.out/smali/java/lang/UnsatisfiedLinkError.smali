.class public Ljava/lang/UnsatisfiedLinkError;
.super Ljava/lang/LinkageError;
.source "UnsatisfiedLinkError.java"


# static fields
.field private static final serialVersionUID:J = -0x37c7936202f0ef44L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
