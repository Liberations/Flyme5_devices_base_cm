.class public final Landroid/system/StructGroupSourceReq;
.super Ljava/lang/Object;
.source "StructGroupSourceReq.java"


# instance fields
.field public final gsr_group:Ljava/net/InetAddress;

.field public final gsr_interface:I

.field public final gsr_source:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "gsr_interface"    # I
    .param p2, "gsr_group"    # Ljava/net/InetAddress;
    .param p3, "gsr_source"    # Ljava/net/InetAddress;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/system/StructGroupSourceReq;->gsr_interface:I

    .line 34
    iput-object p2, p0, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    .line 35
    iput-object p3, p0, Landroid/system/StructGroupSourceReq;->gsr_source:Ljava/net/InetAddress;

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
