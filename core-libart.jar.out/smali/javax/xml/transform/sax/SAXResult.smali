.class public Ljavax/xml/transform/sax/SAXResult;
.super Ljava/lang/Object;
.source "SAXResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXResult/feature"


# instance fields
.field private handler:Lorg/xml/sax/ContentHandler;

.field private lexhandler:Lorg/xml/sax/ext/LexicalHandler;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 62
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    .line 63
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 86
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 87
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    .line 106
    return-void
.end method
