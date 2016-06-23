.class public final Llibcore/util/ZoneInfoDB;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfoDB$TzData;
    }
.end annotation


# static fields
.field private static final DATA:Llibcore/util/ZoneInfoDB$TzData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Llibcore/util/ZoneInfoDB$TzData;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_ROOT"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/usr/share/zoneinfo/tzdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Llibcore/util/ZoneInfoDB$TzData;-><init>([Ljava/lang/String;)V

    sput-object v0, Llibcore/util/ZoneInfoDB;->DATA:Llibcore/util/ZoneInfoDB$TzData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method public static getInstance()Llibcore/util/ZoneInfoDB$TzData;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Llibcore/util/ZoneInfoDB;->DATA:Llibcore/util/ZoneInfoDB$TzData;

    return-object v0
.end method
