.class Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"


# static fields
.field private static dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# instance fields
.field private coalescing:Z

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private ignoreComments:Z

.field private ignoreElementContentWhitespace:Z

.field private namespaceAware:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    return-void
.end method

.method private appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V
    .locals 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "parent"    # Lorg/w3c/dom/Node;
    .param p3, "token"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    .line 338
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-boolean v2, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    if-nez v2, :cond_1

    if-eq p3, v4, :cond_2

    .line 343
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 344
    .local v0, "lastChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move-object v1, v0

    .line 345
    check-cast v1, Lorg/w3c/dom/Text;

    .line 346
    .local v1, "textNode":Lorg/w3c/dom/Text;
    invoke-interface {v1, p4}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v0    # "lastChild":Lorg/w3c/dom/Node;
    .end local v1    # "textNode":Lorg/w3c/dom/Text;
    :cond_2
    if-ne p3, v4, :cond_3

    new-instance v2, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v2, p1, p4}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p2, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v2, p1, p4}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V
    .locals 26
    .param p1, "parser"    # Lorg/kxml2/io/KXmlParser;
    .param p2, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p3, "node"    # Lorg/w3c/dom/Node;
    .param p4, "endToken"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getEventType()I

    move-result v23

    .line 188
    .local v23, "token":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, p4

    if-eq v0, v1, :cond_11

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    .line 189
    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v22

    .line 196
    .local v22, "text":Ljava/lang/String;
    const/16 v24, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 198
    .local v11, "dot":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_1

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 199
    .local v21, "target":Ljava/lang/String;
    :goto_1
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_2

    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "data":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 328
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "dot":I
    .end local v21    # "target":Ljava/lang/String;
    .end local v22    # "text":Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    move-result v23

    goto :goto_0

    .restart local v11    # "dot":I
    .restart local v22    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v21, v22

    .line 198
    goto :goto_1

    .line 199
    .restart local v21    # "target":Ljava/lang/String;
    :cond_2
    const-string v10, ""

    goto :goto_2

    .line 203
    .end local v11    # "dot":I
    .end local v21    # "target":Ljava/lang/String;
    .end local v22    # "text":Ljava/lang/String;
    :cond_3
    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getRootElementName()Ljava/lang/String;

    move-result-object v15

    .line 205
    .local v15, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getPublicId()Ljava/lang/String;

    move-result-object v18

    .line 206
    .local v18, "publicId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getSystemId()Ljava/lang/String;

    move-result-object v20

    .line 207
    .local v20, "systemId":Ljava/lang/String;
    new-instance v24, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 209
    .end local v15    # "name":Ljava/lang/String;
    .end local v18    # "publicId":Ljava/lang/String;
    .end local v20    # "systemId":Ljava/lang/String;
    :cond_4
    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 217
    :cond_5
    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 224
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    goto :goto_3

    .line 226
    :cond_6
    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 232
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 233
    :cond_8
    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 239
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, "entity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 245
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 246
    .local v19, "resolved":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->appendText(Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 249
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 251
    .end local v13    # "entity":Ljava/lang/String;
    .end local v19    # "resolved":Ljava/lang/String;
    :cond_b
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v16

    .line 263
    .local v16, "namespace":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 264
    .restart local v15    # "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    .line 266
    .local v17, "prefix":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 267
    const/16 v16, 0x0

    .line 271
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v12

    .line 272
    .local v12, "element":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 275
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getAttributeCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_e

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "attrPrefix":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "attrValue":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 283
    const/4 v7, 0x0

    .line 287
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v5

    .line 288
    .local v5, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5, v8}, Lorg/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    .line 289
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 290
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 275
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 294
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNamespace":Ljava/lang/String;
    .end local v8    # "attrPrefix":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    move-result v23

    .line 295
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 298
    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v15}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 302
    .end local v12    # "element":Lorg/w3c/dom/Element;
    .end local v14    # "i":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "namespace":Ljava/lang/String;
    .end local v17    # "prefix":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 305
    .restart local v15    # "name":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v12

    .line 306
    .restart local v12    # "element":Lorg/w3c/dom/Element;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 308
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->getAttributeCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_10

    .line 310
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    .restart local v6    # "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 314
    .restart local v9    # "attrValue":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v5

    .line 315
    .restart local v5    # "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 316
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 308
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 320
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    move-result v23

    .line 321
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 324
    const/16 v24, 0x3

    const-string v25, ""

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v15}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 330
    .end local v12    # "element":Lorg/w3c/dom/Element;
    .end local v14    # "i":I
    .end local v15    # "name":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "base"    # I

    .prologue
    .line 419
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 427
    .end local v0    # "codePoint":I
    :goto_0
    return-object v3

    .line 423
    .restart local v0    # "codePoint":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 424
    .local v2, "surrogatePair":[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    .end local v0    # "codePoint":I
    .end local v2    # "surrogatePair":[C
    :catch_0
    move-exception v1

    .line 427
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resolvePredefinedOrCharacterEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v0, "#x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 398
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveCharacterReference(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_1
    const-string v0, "lt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const-string v0, "<"

    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "gt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    const-string v0, ">"

    goto :goto_0

    .line 406
    :cond_3
    const-string v0, "amp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    const-string v0, "&"

    goto :goto_0

    .line 408
    :cond_4
    const-string v0, "apos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    const-string v0, "\'"

    goto :goto_0

    .line 410
    :cond_5
    const-string v0, "quot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    const-string v0, "\""

    goto :goto_0

    .line 413
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-virtual {v0, v1, v1, v1}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 15
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v13, "source == null"

    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, "namespaceURI":Ljava/lang/String;
    const/4 v3, 0x0

    .line 98
    .local v3, "qualifiedName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "inputEncoding":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "systemId":Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    sget-object v1, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    .line 103
    .local v0, "document":Lorg/apache/harmony/xml/dom/DocumentImpl;
    invoke-virtual {v0, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 105
    new-instance v9, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v9}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 107
    .local v9, "parser":Lorg/kxml2/io/KXmlParser;
    :try_start_0
    invoke-virtual {v9}, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes()V

    .line 108
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v13, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    invoke-virtual {v9, v1, v13}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v9, v1, v5}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    :goto_0
    invoke-virtual {v9}, Lorg/kxml2/io/KXmlParser;->nextToken()I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    .line 125
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v13, "Unexpected end of document"

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catch_0
    move-exception v6

    .line 132
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v1

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v10, :cond_3

    .line 115
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 117
    .local v12, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    .line 119
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v9, v1, v5}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v13, "InputSource needs a stream, reader or URI"

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 128
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v9, v0, v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/kxml2/io/KXmlParser;Lorg/apache/harmony/xml/dom/DocumentImpl;Lorg/w3c/dom/Node;I)V

    .line 130
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v1, v13, v14}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    return-object v0

    .line 135
    .restart local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 139
    :cond_6
    new-instance v7, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v7}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 141
    .local v7, "locator":Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual/range {p1 .. p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7, v10}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getLineNumber()I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 144
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 146
    new-instance v8, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v7}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 148
    .local v8, "newEx":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_7

    .line 149
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v8}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 152
    :cond_7
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    .line 63
    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 64
    iput-object v1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 65
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    .line 67
    iput-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    .line 68
    return-void
.end method

.method public setCoalescing(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->coalescing:Z

    .line 375
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 359
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 364
    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    .line 371
    return-void
.end method

.method public setIgnoreElementContentWhitespace(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    .line 382
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    .line 389
    return-void
.end method
