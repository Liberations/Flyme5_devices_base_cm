.class public Ljava/util/jar/JarException;
.super Ljava/util/zip/ZipException;
.source "JarException.java"


# static fields
.field private static final serialVersionUID:J = 0x635ca48583f88729L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/zip/ZipException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
