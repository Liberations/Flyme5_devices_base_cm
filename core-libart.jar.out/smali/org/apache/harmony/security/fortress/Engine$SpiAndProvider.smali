.class public final Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpiAndProvider"
.end annotation


# instance fields
.field public final provider:Ljava/security/Provider;

.field public final spi:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0
    .param p1, "spi"    # Ljava/lang/Object;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/security/Provider;
    .param p3, "x2"    # Lorg/apache/harmony/security/fortress/Engine$1;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;)V

    return-void
.end method
