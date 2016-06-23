.class public Ljava/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Ljava/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

.field public static final FRACTION:Ljava/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final INTEGER:Ljava/text/NumberFormat$Field;

.field public static final PERCENT:Ljava/text/NumberFormat$Field;

.field public static final PERMILLE:Ljava/text/NumberFormat$Field;

.field public static final SIGN:Ljava/text/NumberFormat$Field;

.field private static final serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 769
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    .line 774
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    .line 779
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    .line 784
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    .line 789
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    .line 794
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    .line 799
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 804
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 809
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    .line 814
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    .line 819
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 827
    return-void
.end method
