.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lorg/w3c/dom/NodeList;

.field static final NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;


# instance fields
.field document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    .line 51
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 72
    return-void
.end method

.method private static createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 628
    :goto_1
    return-object v3

    :sswitch_0
    move-object v1, p0

    .line 614
    check-cast v1, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    .line 615
    .local v1, "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    :sswitch_1
    move-object v2, p0

    .line 623
    check-cast v2, Lorg/w3c/dom/Element;

    .line 624
    .local v2, "element":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "p":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 483
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 484
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 487
    .end local v0    # "p":Lorg/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 482
    .restart local v0    # "p":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 4

    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 473
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v0, p0

    .line 470
    :goto_0
    return-object v0

    .line 454
    :pswitch_1
    check-cast p0, Lorg/w3c/dom/Document;

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    goto :goto_0

    .line 460
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :pswitch_3
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    goto :goto_0

    .line 470
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getParentBaseUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 371
    .local v0, "parentNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z
    .locals 6
    .param p1, "a"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "b"    # Lorg/w3c/dom/NamedNodeMap;

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v3

    .line 682
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 683
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 684
    .local v0, "aNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 687
    .local v1, "bNode":Lorg/w3c/dom/Node;
    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 684
    .end local v1    # "bNode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    .line 691
    .end local v0    # "aNode":Lorg/w3c/dom/Node;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v1

    .line 382
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0
.end method

.method static setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V
    .locals 9
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 278
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 279
    .local v4, "prefixSeparator":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 280
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "localName":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 283
    :cond_0
    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 285
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 286
    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 289
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 303
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot rename nodes of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :pswitch_0
    move-object v0, p0

    .line 291
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 292
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v6, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 293
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 306
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_0
    return-void

    :pswitch_1
    move-object v1, p0

    .line 297
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 298
    .local v1, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v6, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 299
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x1

    .line 229
    if-nez p2, :cond_0

    .line 230
    new-instance v4, Lorg/w3c/dom/DOMException;

    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 233
    :cond_0
    const/4 v3, 0x0

    .line 234
    .local v3, "prefix":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "p":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 236
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 241
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x5

    invoke-direct {v4, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 244
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 267
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot rename nodes of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 246
    :pswitch_0
    const-string v4, "xmlns"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    new-instance v4, Lorg/w3c/dom/DOMException;

    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v0, p0

    .line 251
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 252
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v5, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 253
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    .line 254
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    .line 255
    iput-object p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 270
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_0
    return-void

    :pswitch_1
    move-object v1, p0

    .line 259
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 260
    .local v1, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v5, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 261
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    .line 262
    iput-object v3, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 263
    iput-object p2, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "namespaceAware"    # Z
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xe

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    if-eqz p0, :cond_3

    .line 209
    if-eqz p2, :cond_2

    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    :cond_2
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    return-object p0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 364
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported node type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :pswitch_0
    move-object v4, p0

    .line 311
    check-cast v4, Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    :cond_0
    :goto_0
    return-object v3

    :pswitch_1
    move-object v1, p0

    .line 314
    check-cast v1, Lorg/w3c/dom/Element;

    .line 315
    .local v1, "element":Lorg/w3c/dom/Element;
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "base"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 325
    :cond_2
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "parentUri":Ljava/lang/String;
    if-nez v2, :cond_3

    move-object v3, v4

    .line 333
    goto :goto_0

    .line 336
    :cond_3
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 337
    .end local v2    # "parentUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v3, v4

    .line 338
    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "uri":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    move-object v3, v4

    .line 348
    goto :goto_0

    :pswitch_4
    move-object v3, v4

    .line 353
    goto :goto_0

    :pswitch_5
    move-object v3, v4

    .line 361
    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    return-void
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 714
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    .line 715
    .local v1, "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "actual":Ljava/lang/String;
    if-nez p1, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 9
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 632
    if-ne p1, p0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v5

    .line 636
    :cond_1
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    .line 637
    .local v3, "listA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v4

    .line 639
    .local v4, "listB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    move v5, v6

    .line 640
    goto :goto_0

    .line 643
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 644
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 645
    .local v0, "a":Ljava/lang/Object;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 647
    .local v1, "b":Ljava/lang/Object;
    if-ne v0, v1, :cond_4

    .line 643
    .end local v0    # "a":Ljava/lang/Object;
    .end local v1    # "b":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 650
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move v5, v6

    .line 651
    goto :goto_0

    .line 653
    :cond_6
    instance-of v7, v0, Ljava/lang/String;

    if-nez v7, :cond_7

    instance-of v7, v0, Ljava/lang/Short;

    if-eqz v7, :cond_8

    .line 654
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 655
    goto :goto_0

    .line 658
    :cond_8
    instance-of v7, v0, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v7, :cond_a

    .line 659
    instance-of v7, v1, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v7, :cond_9

    check-cast v0, Lorg/w3c/dom/NamedNodeMap;

    .end local v0    # "a":Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/NamedNodeMap;

    .end local v1    # "b":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_9
    move v5, v6

    .line 661
    goto :goto_0

    .line 664
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_a
    instance-of v7, v0, Lorg/w3c/dom/Node;

    if-eqz v7, :cond_c

    .line 665
    instance-of v7, v1, Lorg/w3c/dom/Node;

    if-eqz v7, :cond_b

    check-cast v0, Lorg/w3c/dom/Node;

    .end local v0    # "a":Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/Node;

    .end local v1    # "b":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_b
    move v5, v6

    .line 667
    goto :goto_0

    .line 671
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    const/4 v1, 0x0

    .line 547
    :goto_0
    return v1

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "actual":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    .prologue
    .line 441
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 558
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v6

    .line 559
    .local v6, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v6

    .local v4, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_0
    if-eqz v4, :cond_9

    .line 561
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, "nodePrefix":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 563
    if-nez p1, :cond_2

    if-nez v5, :cond_3

    .line 566
    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 591
    .end local v5    # "nodePrefix":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 563
    .restart local v5    # "nodePrefix":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 573
    :cond_3
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v9

    if-nez v9, :cond_5

    .line 559
    :cond_4
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_0

    .line 576
    :cond_5
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 577
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .local v3, "length":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 578
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 579
    .local v0, "attr":Lorg/w3c/dom/Node;
    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 577
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 582
    :cond_7
    if-nez p1, :cond_8

    const-string v9, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 585
    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    move-object v7, v8

    goto :goto_1

    .line 582
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    const-string v9, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "nodePrefix":Ljava/lang/String;
    :cond_9
    move-object v7, v8

    .line 591
    goto :goto_1
.end method

.method public final lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-object v6

    .line 498
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v5

    .line 499
    .local v5, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v5

    .local v4, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_1
    if-eqz v4, :cond_0

    .line 501
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 503
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v7

    if-nez v7, :cond_4

    .line 499
    :cond_3
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_1

    .line 511
    :cond_4
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 512
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .local v3, "length":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 513
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 514
    .local v0, "attr":Lorg/w3c/dom/Node;
    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 512
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 519
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 520
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 168
    :pswitch_0
    check-cast p0, Lorg/w3c/dom/CharacterData;

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 186
    :goto_0
    :pswitch_1
    return-void

    .line 172
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_2
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_3
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public final setTextContent(Ljava/lang/String;)V
    .locals 5
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported node type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 416
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 420
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 432
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 431
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 703
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez p2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, v2

    .line 706
    .local v1, "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :goto_1
    return-object v2

    .line 703
    .end local v1    # "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_1
    new-instance v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    invoke-direct {v2, p2, p3}, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;-><init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, v2

    goto :goto_0

    .line 706
    .restart local v1    # "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
