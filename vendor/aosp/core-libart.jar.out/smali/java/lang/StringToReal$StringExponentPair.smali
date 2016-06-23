.class final Ljava/lang/StringToReal$StringExponentPair;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringToReal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringExponentPair"
.end annotation


# instance fields
.field e:J

.field infinity:Z

.field negative:Z

.field s:Ljava/lang/String;

.field zero:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/StringToReal$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/StringToReal$1;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/StringToReal$StringExponentPair;-><init>()V

    return-void
.end method


# virtual methods
.method public specialValue()F
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-eqz v0, :cond_1

    .line 38
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 40
    :goto_0
    return v0

    .line 38
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 40
    :cond_1
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
