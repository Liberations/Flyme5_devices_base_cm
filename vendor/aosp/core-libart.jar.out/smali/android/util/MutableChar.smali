.class public final Landroid/util/MutableChar;
.super Ljava/lang/Object;
.source "MutableChar.java"


# instance fields
.field public value:C


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-char p1, p0, Landroid/util/MutableChar;->value:C

    .line 26
    return-void
.end method
