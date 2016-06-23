.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# instance fields
.field private attribute:Ljava/text/Format$Field;

.field private beginIndex:I

.field private endIndex:I

.field private field:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 0
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 59
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 68
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 71
    check-cast v0, Ljava/text/FieldPosition;

    .line 72
    .local v0, "pos":Ljava/text/FieldPosition;
    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v0, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 106
    .local v0, "attributeHash":I
    :goto_0
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    add-int/2addr v1, v2

    return v1

    .line 105
    .end local v0    # "attributeHash":I
    :cond_0
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v1}, Ljava/text/Format$Field;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setBeginIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 113
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 114
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 120
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
