.class Ljava/security/KeyStore$Builder$TmpLSParameter;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TmpLSParameter"
.end annotation


# instance fields
.field private final protPar:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0
    .param p1, "protPar"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object p1, p0, Ljava/security/KeyStore$Builder$TmpLSParameter;->protPar:Ljava/security/KeyStore$ProtectionParameter;

    .line 1029
    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Ljava/security/KeyStore$Builder$TmpLSParameter;->protPar:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
