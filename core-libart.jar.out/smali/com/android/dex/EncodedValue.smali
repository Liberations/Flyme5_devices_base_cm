.class public final Lcom/android/dex/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 30
    return-void
.end method


# virtual methods
.method public asByteInput()Lcom/android/dex/util/ByteInput;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/dex/util/ByteArrayByteInput;

    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    invoke-direct {v0, v1}, Lcom/android/dex/util/ByteArrayByteInput;-><init>([B)V

    return-object v0
.end method

.method public compareTo(Lcom/android/dex/EncodedValue;)I
    .locals 4
    .param p1, "other"    # Lcom/android/dex/EncodedValue;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 47
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    .line 51
    :goto_1
    return v2

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    array-length v2, v2

    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/dex/EncodedValue;->compareTo(Lcom/android/dex/EncodedValue;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1
    .param p1, "out"    # Lcom/android/dex/Dex$Section;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 42
    return-void
.end method
