.class public Ljavax/security/auth/login/LoginException;
.super Ljava/security/GeneralSecurityException;
.source "LoginException.java"


# static fields
.field private static final serialVersionUID:J = -0x40ef790a8a202ae8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
