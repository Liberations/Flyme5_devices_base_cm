.class public final enum Lcom/qti/dpm/DpmService$FeatureType;
.super Ljava/lang/Enum;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/dpm/DpmService$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/dpm/DpmService$FeatureType;

.field public static final enum CONNTRACK:Lcom/qti/dpm/DpmService$FeatureType;

.field public static final enum FD:Lcom/qti/dpm/DpmService$FeatureType;

.field public static final enum NSRM:Lcom/qti/dpm/DpmService$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/qti/dpm/DpmService$FeatureType;

    const-string v1, "FD"

    invoke-direct {v0, v1, v2}, Lcom/qti/dpm/DpmService$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qti/dpm/DpmService$FeatureType;->FD:Lcom/qti/dpm/DpmService$FeatureType;

    .line 204
    new-instance v0, Lcom/qti/dpm/DpmService$FeatureType;

    const-string v1, "CONNTRACK"

    invoke-direct {v0, v1, v3}, Lcom/qti/dpm/DpmService$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qti/dpm/DpmService$FeatureType;->CONNTRACK:Lcom/qti/dpm/DpmService$FeatureType;

    .line 205
    new-instance v0, Lcom/qti/dpm/DpmService$FeatureType;

    const-string v1, "NSRM"

    invoke-direct {v0, v1, v4}, Lcom/qti/dpm/DpmService$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/dpm/DpmService$FeatureType;

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->FD:Lcom/qti/dpm/DpmService$FeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->CONNTRACK:Lcom/qti/dpm/DpmService$FeatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/dpm/DpmService$FeatureType;->$VALUES:[Lcom/qti/dpm/DpmService$FeatureType;

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
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/dpm/DpmService$FeatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    const-class v0, Lcom/qti/dpm/DpmService$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/dpm/DpmService$FeatureType;

    return-object v0
.end method

.method public static values()[Lcom/qti/dpm/DpmService$FeatureType;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->$VALUES:[Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v0}, [Lcom/qti/dpm/DpmService$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/dpm/DpmService$FeatureType;

    return-object v0
.end method
