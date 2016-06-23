.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DECIMAL128:Ljava/math/MathContext;

.field public static final DECIMAL32:Ljava/math/MathContext;

.field public static final DECIMAL64:Ljava/math/MathContext;

.field public static final UNLIMITED:Ljava/math/MathContext;

.field private static final serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field private final precision:I

.field private final roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x22

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 44
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    .line 51
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x10

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 57
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "precision"    # I

    .prologue
    .line 83
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILjava/math/RoundingMode;)V
    .locals 0
    .param p1, "precision"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Ljava/math/MathContext;->precision:I

    .line 103
    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 104
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v6, "precision="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, "precisionLength":I
    const-string v6, "roundingMode="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 123
    .local v3, "roundingModeLength":I
    const-string v6, "precision="

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x20

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .local v5, "spaceIndex":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 124
    .end local v5    # "spaceIndex":I
    :cond_0
    const-string v6, "Missing precision"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 126
    .restart local v5    # "spaceIndex":I
    :cond_1
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "precisionString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/math/MathContext;->precision:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    add-int/lit8 v4, v5, 0x1

    .line 134
    .local v4, "roundingModeStart":I
    const-string v6, "roundingMode="

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v6, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    const-string v6, "Missing rounding mode"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 129
    .end local v4    # "roundingModeStart":I
    :catch_0
    move-exception v0

    .line 130
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "Bad precision"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 137
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v4    # "roundingModeStart":I
    :cond_2
    add-int/2addr v4, v3

    .line 138
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    move-result-object v6

    iput-object v6, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 140
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    .line 141
    return-void
.end method

.method private checkValid()V
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Ljava/math/MathContext;->precision:I

    if-gez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    return-void
.end method

.method private invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 244
    :try_start_0
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 200
    instance-of v0, p1, Ljava/math/MathContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v0

    iget v1, p0, Ljava/math/MathContext;->precision:I

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/math/MathContext;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrecision()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Ljava/math/MathContext;->precision:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Ljava/math/MathContext;->precision:I

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " roundingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
