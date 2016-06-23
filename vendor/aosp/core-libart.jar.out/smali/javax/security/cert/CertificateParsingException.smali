.class public Ljavax/security/cert/CertificateParsingException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateParsingException.java"


# static fields
.field private static final serialVersionUID:J = -0x754221431816abe5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
