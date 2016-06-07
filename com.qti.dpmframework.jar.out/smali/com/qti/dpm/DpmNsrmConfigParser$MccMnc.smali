.class Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MccMnc"
.end annotation


# instance fields
.field private portNtoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

.field private valueStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->portNtoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->portNtoMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->valueStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->valueStr:Ljava/lang/String;

    return-object p1
.end method
