.class public final enum Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
.super Ljava/lang/Enum;
.source "PKIFailureInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field private static maxValue:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 57
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "BAD_ALG"

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 62
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 67
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "BAD_DATA_FORMAT"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 72
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "TIME_NOT_AVAILABLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 77
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "UNACCEPTED_POLICY"

    const/4 v2, 0x4

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 82
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "UNACCEPTED_EXTENSION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 87
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "ADD_INFO_NOT_AVAILABLE"

    const/4 v2, 0x6

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 92
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    const-string v1, "SYSTEM_FAILURE"

    const/4 v2, 0x7

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    .line 101
    return-void
.end method

.method public static getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 6
    .param p0, "value"    # I

    .prologue
    .line 128
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 129
    .local v2, "info":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    iget v4, v2, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    if-ne p0, v4, :cond_0

    .line 130
    return-object v2

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "info":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    :cond_1
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Unknown PKIFailureInfo value"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getMaxValue()I
    .locals 6

    .prologue
    .line 114
    sget v4, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    if-nez v4, :cond_1

    .line 115
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, "cur":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    iget v4, v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    sget v5, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    if-le v4, v5, :cond_0

    .line 117
    iget v4, v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    sput v4, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "cur":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    :cond_1
    sget v4, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    invoke-virtual {v0}, [Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    return v0
.end method
