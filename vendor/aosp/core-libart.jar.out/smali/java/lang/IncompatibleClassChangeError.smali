.class public Ljava/lang/IncompatibleClassChangeError;
.super Ljava/lang/LinkageError;
.source "IncompatibleClassChangeError.java"


# static fields
.field private static final serialVersionUID:J = -0x4435802e0e6037c7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
