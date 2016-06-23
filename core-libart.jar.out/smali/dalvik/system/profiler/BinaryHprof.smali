.class public final Ldalvik/system/profiler/BinaryHprof;
.super Ljava/lang/Object;
.source "BinaryHprof.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprof$ControlSettings;,
        Ldalvik/system/profiler/BinaryHprof$Tag;
    }
.end annotation


# static fields
.field public static final ID_SIZE:I = 0x4

.field static MAGIC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "JAVA PROFILE "

    sput-object v0, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method public static final readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/DataInputStream;

    .prologue
    const/4 v5, 0x0

    .line 44
    const/16 v6, 0x200

    :try_start_0
    new-array v1, v6, [B

    .line 45
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 46
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 47
    .local v0, "b":B
    if-nez v0, :cond_1

    .line 48
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-direct {v4, v1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 49
    .local v4, "string":Ljava/lang/String;
    sget-object v6, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "string":Ljava/lang/String;
    :goto_1
    return-object v4

    .restart local v0    # "b":B
    .restart local v1    # "bytes":[B
    .restart local v3    # "i":I
    .restart local v4    # "string":Ljava/lang/String;
    :cond_0
    move-object v4, v5

    .line 52
    goto :goto_1

    .line 54
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    aput-byte v0, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "b":B
    :cond_2
    move-object v4, v5

    .line 56
    goto :goto_1

    .line 57
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 58
    goto :goto_1
.end method
