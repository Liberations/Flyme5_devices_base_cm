.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "Attributes2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private declared:[Z

.field private specified:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 48
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 49
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    .line 247
    .local v0, "length":I
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v4, v4

    if-le v0, v4, :cond_0

    .line 248
    new-array v1, v0, [Z

    .line 249
    .local v1, "newFlags":[Z
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 250
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 252
    new-array v1, v0, [Z

    .line 253
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 254
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 257
    .end local v1    # "newFlags":[Z
    :cond_0
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v5, v0, -0x1

    aput-boolean v2, v4, v5

    .line 258
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v5, v0, -0x1

    const-string v6, "CDATA"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    aput-boolean v2, v4, v5

    .line 259
    return-void

    :cond_1
    move v2, v3

    .line 258
    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 84
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 132
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public removeAttribute(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 267
    .local v0, "origMax":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    .line 268
    if-eq p1, v0, :cond_0

    .line 269
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 271
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 274
    :cond_0
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v4, 0x1

    .line 198
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 200
    .local v2, "length":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 201
    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 202
    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 204
    instance-of v3, p1, Lorg/xml/sax/ext/Attributes2;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Lorg/xml/sax/ext/Attributes2;

    .line 206
    .local v0, "a2":Lorg/xml/sax/ext/Attributes2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 207
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v4

    aput-boolean v4, v3, v1

    .line 208
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v4

    aput-boolean v4, v3, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "a2":Lorg/xml/sax/ext/Attributes2;
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 212
    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string v3, "CDATA"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_2
    aput-boolean v3, v5, v1

    .line 213
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean v4, v3, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 216
    :cond_2
    return-void
.end method

.method public setDeclared(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 290
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aput-boolean p2, v0, p1

    .line 294
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 309
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean p2, v0, p1

    .line 313
    return-void
.end method
