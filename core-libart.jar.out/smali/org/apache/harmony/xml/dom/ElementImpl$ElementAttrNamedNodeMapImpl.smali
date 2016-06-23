.class public Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
.super Ljava/lang/Object;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/ElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementAttrNamedNodeMapImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/dom/ElementImpl;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private indexOfItem(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # invokes: Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$100(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # invokes: Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$200(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # getter for: Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # getter for: Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 354
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 357
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # getter for: Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 365
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 368
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    # getter for: Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 372
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1    # "arg":Lorg/w3c/dom/Node;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 380
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1    # "arg":Lorg/w3c/dom/Node;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method
