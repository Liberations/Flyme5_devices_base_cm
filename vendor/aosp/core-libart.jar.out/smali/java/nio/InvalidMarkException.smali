.class public Ljava/nio/InvalidMarkException;
.super Ljava/lang/IllegalStateException;
.source "InvalidMarkException.java"


# static fields
.field private static final serialVersionUID:J = 0x1791addf9e2df0b6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
