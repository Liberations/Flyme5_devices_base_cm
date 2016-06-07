.class Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsrmConfigData"
.end annotation


# instance fields
.field apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field eaqsrdt:I

.field mccMnc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;",
            ">;"
        }
    .end annotation
.end field

.field opMode:I

.field suidMode:I

.field tOpenTime:I

.field tSyncSocketSetupTime:I

.field tSyncSocketWriteTime:I

.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

.field version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->this$0:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->apps:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/dpm/DpmNsrmConfigParser;Lcom/qti/dpm/DpmNsrmConfigParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qti/dpm/DpmNsrmConfigParser;
    .param p2, "x1"    # Lcom/qti/dpm/DpmNsrmConfigParser$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;-><init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V

    return-void
.end method


# virtual methods
.method NsrmConfigData()V
    .locals 3

    .prologue
    const/16 v2, 0x4b0

    const/4 v1, 0x0

    .line 108
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    .line 109
    const/16 v0, 0x1e

    iput v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenTime:I

    .line 110
    iput v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    .line 111
    iput v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    .line 112
    iput v1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    .line 113
    iput v1, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    .line 114
    const/16 v0, 0x3c

    iput v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    .line 115
    return-void
.end method
