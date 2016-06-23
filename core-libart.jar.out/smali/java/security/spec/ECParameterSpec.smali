.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final cofactor:I

.field private final curve:Ljava/security/spec/EllipticCurve;

.field private curveName:Ljava/lang/String;

.field private final generator:Ljava/security/spec/ECPoint;

.field private final order:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "generator"    # Ljava/security/spec/ECPoint;
    .param p3, "order"    # Ljava/math/BigInteger;
    .param p4, "cofactor"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    .line 56
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    .line 57
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    .line 58
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    .line 60
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "generator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    if-gtz v0, :cond_4

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cofactor <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    return-void
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    return-object v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setCurveName(Ljava/lang/String;)V
    .locals 0
    .param p1, "curveName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    .line 121
    return-void
.end method
