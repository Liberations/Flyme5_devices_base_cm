.class final Ljava/lang/CaseMapper$1;
.super Ljava/lang/ThreadLocal;
.source "CaseMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/CaseMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Llibcore/icu/Transliterator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/lang/CaseMapper$1;->initialValue()Llibcore/icu/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Llibcore/icu/Transliterator;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Llibcore/icu/Transliterator;

    const-string v1, "el-Upper"

    invoke-direct {v0, v1}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
