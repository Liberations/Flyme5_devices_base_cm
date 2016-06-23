.class public Ljavax/crypto/NoSuchPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f7626dcc02d596aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
