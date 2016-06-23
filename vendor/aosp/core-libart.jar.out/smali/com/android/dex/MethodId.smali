.class public final Lcom/android/dex/MethodId;
.super Ljava/lang/Object;
.source "MethodId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/MethodId;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringClassIndex:I

.field private final dex:Lcom/android/dex/Dex;

.field private final nameIndex:I

.field private final protoIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;III)V
    .locals 0
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "declaringClassIndex"    # I
    .param p3, "protoIndex"    # I
    .param p4, "nameIndex"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    .line 29
    iput p2, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    .line 30
    iput p3, p0, Lcom/android/dex/MethodId;->protoIndex:I

    .line 31
    iput p4, p0, Lcom/android/dex/MethodId;->nameIndex:I

    .line 32
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/MethodId;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dex/MethodId;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    iget v1, p1, Lcom/android/dex/MethodId;->declaringClassIndex:I

    if-eq v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    iget v1, p1, Lcom/android/dex/MethodId;->declaringClassIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    iget v1, p1, Lcom/android/dex/MethodId;->nameIndex:I

    if-eq v0, v1, :cond_1

    .line 51
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    iget v1, p1, Lcom/android/dex/MethodId;->nameIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    iget v1, p1, Lcom/android/dex/MethodId;->protoIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/android/dex/MethodId;

    invoke-virtual {p0, p1}, Lcom/android/dex/MethodId;->compareTo(Lcom/android/dex/MethodId;)I

    move-result v0

    return v0
.end method

.method public getDeclaringClassIndex()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    return v0
.end method

.method public getProtoIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dex/MethodId;->protoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dex/MethodId;->nameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/dex/MethodId;->nameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/android/dex/MethodId;->protoIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dex/ProtoId;

    invoke-virtual {v0}, Lcom/android/dex/ProtoId;->getParametersOffset()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1
    .param p1, "out"    # Lcom/android/dex/Dex$Section;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 58
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 59
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 60
    return-void
.end method
