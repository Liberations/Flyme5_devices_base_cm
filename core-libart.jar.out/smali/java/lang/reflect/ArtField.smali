.class public final Ljava/lang/reflect/ArtField;
.super Ljava/lang/Object;
.source "ArtField.java"


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fieldDexIndex:I

.field private offset:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ljava/lang/reflect/ArtField;->accessFlags:I

    return v0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method getDexFieldIndex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    iget v2, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 70
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isProxy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 73
    :cond_0
    const-string v2, "throws"

    .line 77
    :goto_0
    return-object v2

    .line 75
    :cond_1
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 76
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromFieldIndex(I)I

    move-result v1

    .line 77
    .local v1, "nameIndex":I
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ljava/lang/reflect/ArtField;->offset:I

    return v0
.end method

.method getType()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget v2, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 87
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isProxy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 90
    :cond_0
    const-class v2, [[Ljava/lang/Class;

    .line 94
    :goto_0
    return-object v2

    .line 92
    :cond_1
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 93
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->typeIndexFromFieldIndex(I)I

    move-result v1

    .line 94
    .local v1, "typeIndex":I
    iget-object v2, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method
