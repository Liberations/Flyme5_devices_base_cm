.class public final Landroid/system/StructLinger;
.super Ljava/lang/Object;
.source "StructLinger.java"


# instance fields
.field public final l_linger:I

.field public final l_onoff:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "l_onoff"    # I
    .param p2, "l_linger"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/system/StructLinger;->l_onoff:I

    .line 36
    iput p2, p0, Landroid/system/StructLinger;->l_linger:I

    .line 37
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/system/StructLinger;->l_onoff:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
