.class public final Landroid/system/StructStatVfs;
.super Ljava/lang/Object;
.source "StructStatVfs.java"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_favail:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_flag:J

.field public final f_frsize:J

.field public final f_fsid:J

.field public final f_namemax:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 3
    .param p1, "f_bsize"    # J
    .param p3, "f_frsize"    # J
    .param p5, "f_blocks"    # J
    .param p7, "f_bfree"    # J
    .param p9, "f_bavail"    # J
    .param p11, "f_files"    # J
    .param p13, "f_ffree"    # J
    .param p15, "f_favail"    # J
    .param p17, "f_fsid"    # J
    .param p19, "f_flag"    # J
    .param p21, "f_namemax"    # J

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Landroid/system/StructStatVfs;->f_bsize:J

    .line 65
    iput-wide p3, p0, Landroid/system/StructStatVfs;->f_frsize:J

    .line 66
    iput-wide p5, p0, Landroid/system/StructStatVfs;->f_blocks:J

    .line 67
    iput-wide p7, p0, Landroid/system/StructStatVfs;->f_bfree:J

    .line 68
    iput-wide p9, p0, Landroid/system/StructStatVfs;->f_bavail:J

    .line 69
    iput-wide p11, p0, Landroid/system/StructStatVfs;->f_files:J

    .line 70
    move-wide/from16 v0, p13

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_ffree:J

    .line 71
    move-wide/from16 v0, p15

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_favail:J

    .line 72
    move-wide/from16 v0, p17

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_fsid:J

    .line 73
    move-wide/from16 v0, p19

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_flag:J

    .line 74
    move-wide/from16 v0, p21

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_namemax:J

    .line 75
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
