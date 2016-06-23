.class public Lorg/xml/sax/SAXException;
.super Ljava/lang/Exception;
.source "SAXException.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 88
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
