.class public Ljavax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lorg/w3c/dom/Node;

.field private node:Lorg/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 52
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 53
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 73
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 74
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 93
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 94
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 129
    if-eqz p2, :cond_1

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 142
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 143
    invoke-virtual {p0, v1}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;
    .param p3, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 178
    if-eqz p2, :cond_1

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 191
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 192
    invoke-virtual {p0, p3}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "nextSibling"    # Lorg/w3c/dom/Node;

    .prologue
    .line 274
    if-eqz p1, :cond_1

    .line 276
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 287
    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 218
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1

    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 231
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 313
    return-void
.end method
