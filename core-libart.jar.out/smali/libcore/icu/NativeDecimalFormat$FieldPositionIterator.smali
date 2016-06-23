.class Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldPositionIterator"
.end annotation


# instance fields
.field private data:[I

.field private pos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 581
    return-void
.end method

.method synthetic constructor <init>(Llibcore/icu/NativeDecimalFormat$1;)V
    .locals 0
    .param p1, "x0"    # Llibcore/icu/NativeDecimalFormat$1;

    .prologue
    .line 576
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    return-void
.end method

.method public static forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .locals 1
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    .line 584
    if-eqz p0, :cond_0

    new-instance v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    invoke-direct {v0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setData([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 613
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    .line 614
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 615
    return-void
.end method


# virtual methods
.method public field()Ljava/text/Format$Field;
    .locals 3

    .prologue
    .line 600
    # getter for: Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;
    invoke-static {}, Llibcore/icu/NativeDecimalFormat;->access$100()[Ljava/text/Format$Field;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public fieldId()I
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v0, v0, v1

    return v0
.end method

.method public limit()I
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 592
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()I
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method
