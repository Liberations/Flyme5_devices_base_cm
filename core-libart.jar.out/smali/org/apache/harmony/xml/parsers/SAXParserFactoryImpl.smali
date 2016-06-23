.class public Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field private features:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 2

    .prologue
    .line 57
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public isValidating()Z
    .locals 2

    .prologue
    .line 66
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v2, "No validating SAXParser implementation available"

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xml/parsers/SAXParserImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setNamespaceAware(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 107
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public setValidating(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 116
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
