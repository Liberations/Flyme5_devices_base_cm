.class abstract Lorg/apache/harmony/xml/ExpatAttributes;
.super Ljava/lang/Object;
.source "ExpatAttributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final CDATA:Ljava/lang/String; = "CDATA"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getIndexForQName(JLjava/lang/String;)I
.end method

.method private static native getLocalName(JJI)Ljava/lang/String;
.end method

.method private static native getQName(JJI)Ljava/lang/String;
.end method

.method private static native getURI(JJI)Ljava/lang/String;
.end method

.method private static native getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getValueByIndex(JI)Ljava/lang/String;
.end method

.method private static native getValueForQName(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected native freeAttributes(J)V
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "qName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 96
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 97
    const/4 v2, -0x1

    .line 99
    :goto_0
    return v2

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndexForQName(JLjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "localName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 85
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 86
    const/4 v2, -0x1

    .line 88
    :goto_0
    return v2

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public abstract getLength()I
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 56
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getLocalName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method abstract getParserPointer()J
.end method

.method public abstract getPointer()J
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 62
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getQName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 68
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "CDATA"

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 49
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getURI(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueByIndex(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "qName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 135
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 136
    const/4 v2, 0x0

    .line 138
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueForQName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "localName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 124
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 125
    const/4 v2, 0x0

    .line 127
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
