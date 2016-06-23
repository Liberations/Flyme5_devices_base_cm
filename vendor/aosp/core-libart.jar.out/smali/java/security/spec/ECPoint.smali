.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final affineX:Ljava/math/BigInteger;

.field private final affineY:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    .line 39
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "affineX"    # Ljava/math/BigInteger;
    .param p2, "affineY"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    .line 52
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "affineX == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p2, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    .line 56
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "affineY == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    instance-of v3, p1, Ljava/security/spec/ECPoint;

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 94
    check-cast v0, Ljava/security/spec/ECPoint;

    .line 96
    .local v0, "otherPoint":Ljava/security/spec/ECPoint;
    iget-object v3, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 99
    .end local v0    # "otherPoint":Ljava/security/spec/ECPoint;
    :cond_3
    sget-object v3, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-eq p1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method
