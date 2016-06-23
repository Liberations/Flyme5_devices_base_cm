.class public Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "DocumentBuilderFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v2, "No validating DocumentBuilder implementation available"

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;-><init>()V

    .line 73
    .local v0, "builder":Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setCoalescing(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreComments(Z)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreElementContentWhitespace(Z)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setNamespaceAware(Z)V

    .line 80
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setValidating(Z)V

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
