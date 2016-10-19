.class Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
.super Ljava/lang/Object;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmNsrmVendorTriggerInfo"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field id:I

.field state:Z

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method private constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qti/dpm/DpmService;
    .param p2, "x1"    # Lcom/qti/dpm/DpmService$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    return-void
.end method
