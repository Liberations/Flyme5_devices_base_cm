.class public final Landroid/util/MutableLong;
.super Ljava/lang/Object;
.source "MutableLong.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Landroid/util/MutableLong;->value:J

    .line 26
    return-void
.end method
