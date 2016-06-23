.class public final Lorg/apache/harmony/xml/dom/CDATASectionImpl;
.super Lorg/apache/harmony/xml/dom/TextImpl;
.source "CDATASectionImpl.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    return v0
.end method

.method public needsSplitting()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 83
    .local v0, "replacement":Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v1, v0, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 85
    return-object v0
.end method

.method public split()V
    .locals 7

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 58
    .local v1, "parent":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\]\\]>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    invoke-interface {v1, v3, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    const/4 v0, 0x1

    .local v0, "p":I
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 61
    new-instance v3, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    invoke-interface {v1, v3, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->setData(Ljava/lang/String;)V

    goto :goto_0
.end method
