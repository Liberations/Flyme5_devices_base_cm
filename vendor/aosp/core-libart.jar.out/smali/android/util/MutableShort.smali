.class public final Landroid/util/MutableShort;
.super Ljava/lang/Object;
.source "MutableShort.java"


# instance fields
.field public value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-short p1, p0, Landroid/util/MutableShort;->value:S

    .line 26
    return-void
.end method
