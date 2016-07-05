.class public Landroid/media/CueHelper$CueTrackInfo;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CueHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CueTrackInfo"
.end annotation


# instance fields
.field public endTime:J

.field public musicFilePath:Ljava/lang/String;

.field public startTime:J

.field final synthetic this$0:Landroid/media/CueHelper;


# direct methods
.method public constructor <init>(Landroid/media/CueHelper;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-object p1, p0, Landroid/media/CueHelper$CueTrackInfo;->this$0:Landroid/media/CueHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    iput-wide v0, p0, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    return-void
.end method
