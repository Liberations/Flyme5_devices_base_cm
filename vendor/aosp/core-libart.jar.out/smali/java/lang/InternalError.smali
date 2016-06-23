.class public Ljava/lang/InternalError;
.super Ljava/lang/VirtualMachineError;
.source "InternalError.java"


# static fields
.field private static final serialVersionUID:J = -0x7dc4ccb23ff53dfdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
