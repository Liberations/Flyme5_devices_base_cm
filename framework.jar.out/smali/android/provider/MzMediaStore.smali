.class public final Landroid/provider/MzMediaStore;
.super Ljava/lang/Object;
.source "MzMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzMediaStore$Audio;,
        Landroid/provider/MzMediaStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final EXTERNAL_DISK_PATH:Ljava/lang/String; = "/data/system/scsi"

.field private static final TAG:Ljava/lang/String; = "MzMediaStore"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/provider/MzMediaStore;->getLanguageCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLanguageCountry()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "zh-CN"

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "tw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "zh-TW"

    goto :goto_0
.end method
