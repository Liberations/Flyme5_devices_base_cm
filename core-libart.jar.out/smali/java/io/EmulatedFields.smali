.class Ljava/io/EmulatedFields;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/EmulatedFields$ObjectSlot;
    }
.end annotation


# instance fields
.field private declaredFields:[Ljava/io/ObjectStreamField;

.field private slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;


# direct methods
.method public constructor <init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;
    .param p2, "declared"    # [Ljava/io/ObjectStreamField;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Ljava/io/EmulatedFields;->buildSlots([Ljava/io/ObjectStreamField;)V

    .line 82
    iput-object p2, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    .line 83
    return-void
.end method

.method private buildSlots([Ljava/io/ObjectStreamField;)V
    .locals 3
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .prologue
    .line 94
    array-length v2, p1

    new-array v2, v2, [Ljava/io/EmulatedFields$ObjectSlot;

    iput-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 96
    new-instance v1, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v1}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 97
    .local v1, "s":Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aput-object v1, v2, v0

    .line 98
    aget-object v2, p1, v0

    iput-object v2, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "s":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_0
    return-void
.end method

.method private findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 187
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_1
    return-object v0
.end method

.method private findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    .prologue
    .local p2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 145
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 146
    .local v2, "isPrimitive":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 147
    iget-object v5, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aget-object v3, v5, v1

    .line 148
    .local v3, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    if-eqz v2, :cond_2

    .line 152
    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 182
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_0
    :goto_2
    return-object v3

    .line 145
    .end local v1    # "i":I
    .end local v2    # "isPrimitive":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    .restart local v1    # "i":I
    .restart local v2    # "isPrimitive":Z
    .restart local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_2
    if-eqz p2, :cond_0

    .line 161
    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_4
    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_8

    .line 169
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 170
    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v1

    .line 171
    .local v0, "field":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 172
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne p2, v5, :cond_7

    .line 174
    :cond_5
    new-instance v3, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v3}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 175
    .restart local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iput-object v0, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 176
    iput-boolean v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    goto :goto_2

    .line 172
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_6
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 169
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 182
    .end local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 119
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return v1
.end method

.method public get(Ljava/lang/String;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 210
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    .restart local p2    # "defaultValue":B
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 230
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    .restart local p2    # "defaultValue":C
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 250
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":D
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 270
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 290
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 309
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 310
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 330
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    iget-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 349
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 350
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    .restart local p2    # "defaultValue":S
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 370
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 387
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 389
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 404
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 405
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 406
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 407
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 422
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 423
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 424
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 425
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 441
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 442
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 443
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 459
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 461
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 476
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 477
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 479
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 496
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 498
    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 499
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iput-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 500
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 501
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 516
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 517
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 518
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 519
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 534
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 535
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 536
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 537
    return-void
.end method

.method public slots()[Ljava/io/EmulatedFields$ObjectSlot;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    return-object v0
.end method
