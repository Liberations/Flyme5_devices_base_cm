.class final Lorg/apache/harmony/xml/parsers/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field private initialFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parser:Lorg/xml/sax/Parser;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "initialFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V

    .line 46
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private resetInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v2, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v2}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    .line 51
    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->initialFeatures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v4, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 54
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getParser()Lorg/xml/sax/Parser;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->resetInternal()V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    .end local v0    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
