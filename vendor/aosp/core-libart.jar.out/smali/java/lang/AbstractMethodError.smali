.class public Ljava/lang/AbstractMethodError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "AbstractMethodError.java"


# static fields
.field private static final serialVersionUID:J = -0x16f593ecb5225d5eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
