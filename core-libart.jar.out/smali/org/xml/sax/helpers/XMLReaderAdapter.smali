.class public Lorg/xml/sax/helpers/XMLReaderAdapter;
.super Ljava/lang/Object;
.source "XMLReaderAdapter.java"

# interfaces
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;
    }
.end annotation


# instance fields
.field documentHandler:Lorg/xml/sax/DocumentHandler;

.field qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

.field xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setup(Lorg/xml/sax/XMLReader;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setup(Lorg/xml/sax/XMLReader;)V

    .line 89
    return-void
.end method

.method private setup(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "XMLReader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 104
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-direct {v0}, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    .line 105
    return-void
.end method

.method private setupXMLReader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    .line 372
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    .line 290
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p3}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    .line 390
    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->parse(Lorg/xml/sax/InputSource;)V

    .line 201
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLReaderAdapter;->setupXMLReader()V

    .line 223
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 224
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 152
    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DocumentHandler;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    .line 167
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 260
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 140
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 179
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "setLocale not supported"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 420
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    .line 275
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-virtual {v0, p4}, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 333
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->documentHandler:Lorg/xml/sax/DocumentHandler;

    iget-object v1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter;->qAtts:Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;

    invoke-interface {v0, p3, v1}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 335
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 302
    return-void
.end method
