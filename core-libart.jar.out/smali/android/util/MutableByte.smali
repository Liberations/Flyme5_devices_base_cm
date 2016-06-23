.class public final Landroid/util/MutableByte;
.super Ljava/lang/Object;
.source "MutableByte.java"


# instance fields
.field public value:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-byte p1, p0, Landroid/util/MutableByte;->value:B

    .line 26
    return-void
.end method
