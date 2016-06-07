.class Lcom/android/server/pm/ExternalSystemPackageManager$ExternalSystemPackageInfo;
.super Ljava/lang/Object;
.source "ExternalSystemPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ExternalSystemPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSystemPackageInfo"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ExternalSystemPackageManager$ExternalSystemPackageInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, p2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/pm/ExternalSystemPackageManager$ExternalSystemPackageInfo;->mSignatures:[Landroid/content/pm/Signature;

    return-void
.end method
