.class public Landroid/view/animation/ValueArrayInterpolator;
.super Ljava/lang/Object;
.source "ValueArrayInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ValueArrayInterpolator"


# instance fields
.field private DEBUG:Z

.field private mValueCount:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iput v1, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    iput-boolean v1, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    iget-boolean v0, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ValueArrayInterpolator"

    const-string v1, "ValueArrayInterpolator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iput v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    iput-boolean v4, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    iget-boolean v3, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ValueArrayInterpolator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueArrayInterpolator(...); context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/flyme/internal/R$styleable;->ValueArrayInterpolator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/flyme/internal/R$styleable;->ValueArrayInterpolator_android_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "sa":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v2

    iput v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .end local v1    # "i":I
    :cond_2
    iget-boolean v3, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v4, "ValueArrayInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueArrayInterpolator(...); mValues="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v3, :cond_4

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iput v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    iput-boolean v4, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object v3, Lcom/flyme/internal/R$styleable;->ValueArrayInterpolator:[I

    invoke-virtual {p2, p3, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    sget v3, Lcom/flyme/internal/R$styleable;->ValueArrayInterpolator_android_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "sa":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "i":I
    .end local v2    # "sa":[Ljava/lang/CharSequence;
    :cond_0
    sget-object v3, Lcom/flyme/internal/R$styleable;->ValueArrayInterpolator:[I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "sa":[Ljava/lang/CharSequence;
    :cond_1
    array-length v3, v2

    iput v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .end local v1    # "i":I
    :cond_2
    iget-boolean v3, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v4, "ValueArrayInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueArrayInterpolator(...); mValues="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v3, :cond_4

    const-string v3, "null"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    goto :goto_2
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "arg0"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .local v2, "ret":F
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v4, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ValueArrayInterpolator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInterpolation("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    if-gtz v4, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v2, v4, v7

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v2, v4, v7

    goto :goto_0

    :cond_4
    cmpl-float v4, p1, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iget v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v4, v5

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v3, v6, v4

    .local v3, "segment":F
    div-float v4, p1, v3

    float-to-int v1, v4

    .local v1, "index":I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float v0, p1, v4

    .local v0, "extra":F
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v3

    add-float v2, v4, v5

    goto :goto_0
.end method

.method public setValueArray([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iget-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v0, v0

    iput v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    goto :goto_0
.end method
