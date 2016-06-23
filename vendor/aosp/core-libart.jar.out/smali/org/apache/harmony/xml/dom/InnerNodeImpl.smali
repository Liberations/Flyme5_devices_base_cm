.class public abstract Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "InnerNodeImpl.java"


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/LeafNodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    .line 49
    return-void
.end method

.method private static matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshIndices(I)V
    .locals 2
    .param p1, "fromIndex"    # I

    .prologue
    .line 169
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    iput v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 58
    .local v1, "list":Lorg/apache/harmony/xml/dom/NodeListImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 59
    .local v2, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1, v2}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    goto :goto_0

    .line 62
    .end local v2    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_0
    return-object v1
.end method

.method getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 237
    .local v2, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 238
    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 239
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 242
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v2    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_2
    return-void
.end method

.method getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 249
    .local v2, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 250
    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 251
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 255
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v2    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_2
    return-void
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 205
    .local v1, "child":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 206
    const-string v3, ""

    .line 216
    :goto_0
    return-object v3

    .line 209
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 210
    .local v2, "next":Lorg/w3c/dom/Node;
    if-nez v2, :cond_2

    .line 211
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 221
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 223
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 225
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasTextContent(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Node;

    .prologue
    .line 231
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 88
    .local v0, "refChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v1, v2, :cond_1

    .line 93
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eq v1, p0, :cond_2

    .line 97
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 100
    :cond_2
    iget v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 7
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 108
    instance-of v4, p1, Lorg/w3c/dom/DocumentFragment;

    if-eqz v4, :cond_0

    .line 109
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 110
    .local v2, "toAdd":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 111
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    add-int v5, p2, v0

    invoke-virtual {p0, v4, v5}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "toAdd":Lorg/w3c/dom/NodeList;
    :cond_0
    move-object v3, p1

    .line 116
    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 117
    .local v3, "toInsert":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v5, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v4, v5, :cond_1

    .line 118
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 120
    :cond_1
    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->isParentOf(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 124
    :cond_2
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v4, :cond_3

    .line 125
    iget v1, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 126
    .local v1, "oldIndex":I
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v4, v4, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-direct {v4, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 130
    .end local v1    # "oldIndex":I
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v4, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    iput-object p0, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 132
    invoke-direct {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 134
    .end local v3    # "toInsert":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :cond_4
    return-object p1
.end method

.method public isParentOf(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 138
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 140
    .local v0, "nodeImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    if-ne v0, p0, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 148
    :goto_1
    return v1

    .line 145
    :cond_0
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final normalize()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 160
    .local v0, "next":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->normalize()V

    .line 162
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 163
    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    .end local v1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    .line 158
    :cond_0
    move-object v1, v0

    .restart local v1    # "node":Lorg/w3c/dom/Node;
    goto :goto_0

    .line 166
    .end local v0    # "next":Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 175
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 177
    .local v1, "oldChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v2, v3, :cond_0

    .line 178
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eq v2, p0, :cond_1

    .line 181
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 184
    :cond_1
    iget v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 185
    .local v0, "index":I
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 186
    iput-object v4, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 187
    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 189
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 197
    move-object v1, p2

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    iget v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 198
    .local v0, "index":I
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 199
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 200
    return-object p2
.end method
