.class public Ljava/util/FormatFlagsConversionMismatchException;
.super Ljava/util/IllegalFormatException;
.source "FormatFlagsConversionMismatchException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x123c11eL


# instance fields
.field private final c:C

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "c"    # C

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "f == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    .line 50
    iput-char p2, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    .line 51
    return-void
.end method


# virtual methods
.method public getConversion()C
    .locals 1

    .prologue
    .line 68
    iget-char v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    return v0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
