.class public Ljava/lang/NumberFormatException;
.super Ljava/lang/IllegalArgumentException;
.source "NumberFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0x278976c0047315eeL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
