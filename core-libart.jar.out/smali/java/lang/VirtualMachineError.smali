.class public abstract Ljava/lang/VirtualMachineError;
.super Ljava/lang/Error;
.source "VirtualMachineError.java"


# static fields
.field private static final serialVersionUID:J = 0x39c25654802f0e1eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
