.class final Landroid/view/WindowManager$LayoutParams$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFrom(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)I
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "changes"    # I

    .prologue
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p2, v0

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    const/high16 v0, 0x1000000

    or-int/2addr p2, v0

    :cond_1
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    :cond_2
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p2, v1}, Landroid/view/MeizuLayoutParams;->copyFrom(ILandroid/view/MeizuLayoutParams;)I

    move-result v0

    or-int/2addr p2, v0

    return p2
.end method

.method static initFlymeExtraFields(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    return-void
.end method

.method static readFromParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->readInParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static toString(Landroid/view/WindowManager$LayoutParams;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v0, " meizuFlags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->toString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static writeToParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
