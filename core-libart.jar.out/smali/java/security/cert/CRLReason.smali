.class public final enum Ljava/security/cert/CRLReason;
.super Ljava/lang/Enum;
.source "CRLReason.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/CRLReason;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/security/cert/CRLReason;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/CRLReason;

.field public static final enum AA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

.field public static final enum CA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

.field public static final enum CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

.field public static final enum KEY_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

.field public static final enum REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

.field public static final enum SUPERSEDED:Ljava/security/cert/CRLReason;

.field public static final enum UNSPECIFIED:Ljava/security/cert/CRLReason;

.field public static final enum UNUSED:Ljava/security/cert/CRLReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 30
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "KEY_COMPROMISE"

    invoke-direct {v0, v1, v4}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 31
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CA_COMPROMISE"

    invoke-direct {v0, v1, v5}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 32
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "AFFILIATION_CHANGED"

    invoke-direct {v0, v1, v6}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    .line 33
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "SUPERSEDED"

    invoke-direct {v0, v1, v7}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    .line 34
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CESSATION_OF_OPERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    .line 35
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CERTIFICATE_HOLD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    .line 36
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "UNUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    .line 37
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "REMOVE_FROM_CRL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    .line 38
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "PRIVILEGE_WITHDRAWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    .line 39
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "AA_COMPROMISE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/security/cert/CRLReason;

    sget-object v1, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v5

    sget-object v1, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v6

    sget-object v1, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/CRLReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Ljava/security/cert/CRLReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public static values()[Ljava/security/cert/CRLReason;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    invoke-virtual {v0}, [Ljava/security/cert/CRLReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/CRLReason;

    return-object v0
.end method
