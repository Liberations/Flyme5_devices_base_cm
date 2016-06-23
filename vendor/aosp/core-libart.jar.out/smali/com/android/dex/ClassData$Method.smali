.class public Lcom/android/dex/ClassData$Method;
.super Ljava/lang/Object;
.source "ClassData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final codeOffset:I

.field private final methodIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "methodIndex"    # I
    .param p2, "accessFlags"    # I
    .param p3, "codeOffset"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/dex/ClassData$Method;->methodIndex:I

    .line 88
    iput p2, p0, Lcom/android/dex/ClassData$Method;->accessFlags:I

    .line 89
    iput p3, p0, Lcom/android/dex/ClassData$Method;->codeOffset:I

    .line 90
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/dex/ClassData$Method;->accessFlags:I

    return v0
.end method

.method public getCodeOffset()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/dex/ClassData$Method;->codeOffset:I

    return v0
.end method

.method public getMethodIndex()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/dex/ClassData$Method;->methodIndex:I

    return v0
.end method
