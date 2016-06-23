.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$1;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private attributeCount:I

.field private attributePointer:J

.field private final attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final encoding:Ljava/lang/String;

.field private inStartElement:Z

.field private final locator:Lorg/xml/sax/Locator;

.field private pointer:J

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 576
    const-string v0, ""

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 105
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 107
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    .line 108
    iput-object p6, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Lorg/apache/harmony/xml/ExpatParser$1;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "processNamespaces"    # Z
    .param p4, "publicId"    # Ljava/lang/String;
    .param p5, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 81
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 93
    if-nez p1, :cond_0

    const-string p1, "UTF-8"

    .end local p1    # "encoding":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/apache/harmony/xml/ExpatParser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/ExpatParser;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    move-result v0

    return v0
.end method

.method private native appendBytes(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendChars(J[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendString(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native cloneAttributes(JI)J
.end method

.method private column()I
    .locals 2

    .prologue
    .line 592
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->column(J)I

    move-result v0

    return v0
.end method

.method private static native column(J)I
.end method

.method private static native createEntityParser(JLjava/lang/String;)J
.end method

.method private endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 531
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 534
    :cond_0
    return-void
.end method

.method private native initialize(Ljava/lang/String;Z)J
.end method

.method private line()I
    .locals 2

    .prologue
    .line 583
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->line(J)I

    move-result v0

    return v0
.end method

.method private static native line(J)I
.end method

.method static openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 749
    .local v2, "urlConnection":Ljava/net/URLConnection;
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 750
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 751
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 752
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 753
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 754
    .end local v2    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 757
    throw v1
.end method

.method private parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .locals 7
    .param p1, "entityParser"    # Lorg/apache/harmony/xml/ExpatParser;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 342
    .local v1, "reader":Ljava/io/Reader;
    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    const-string v3, "<externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    .line 345
    invoke-direct {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 346
    const-string v3, "</externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 386
    :goto_0
    return-void

    .line 348
    :catchall_0
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 354
    :cond_0
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 355
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 357
    :try_start_1
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 359
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 360
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 369
    :cond_1
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "systemId":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 372
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    const-string v4, "No input specified."

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 376
    :cond_2
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 378
    :try_start_2
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 380
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 381
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 384
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private parseFragment(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 509
    const/16 v1, 0x1fa0

    new-array v4, v1, [B

    .line 511
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    .line 513
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1

    .line 518
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_0
    return-void
.end method

.method private parseFragment(Ljava/io/Reader;)V
    .locals 7
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 493
    const/16 v1, 0xfd0

    new-array v4, v1, [C

    .line 495
    .local v4, "buffer":[C
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "length":I
    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    .line 497
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1

    .line 502
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_0
    return-void
.end method

.method private pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 322
    .local v1, "reader":Ljava/io/Reader;
    if-eqz v1, :cond_1

    .line 323
    const-string v0, "UTF-16"

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private native release(J)V
.end method

.method private static native releaseParser(J)V
.end method

.method private startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 522
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 523
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 524
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 526
    :cond_0
    return-void
.end method

.method private static native staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([B)V
    .locals 2
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    .line 445
    return-void
.end method

.method append([BII)V
    .locals 7
    .param p1, "xml"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([CII)V
    .locals 7
    .param p1, "xml"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method cloneAttributes()Lorg/xml/sax/Attributes;
    .locals 8

    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    if-nez v0, :cond_1

    .line 607
    # getter for: Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;
    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->access$400()Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 612
    :goto_0
    return-object v1

    .line 610
    :cond_1
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(JI)J

    move-result-wide v4

    .line 612
    .local v4, "clonePointer":J
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    iget v6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJILorg/apache/harmony/xml/ExpatParser$1;)V

    goto :goto_0
.end method

.method comment([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 169
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 172
    :cond_0
    return-void
.end method

.method endCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 183
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 186
    :cond_0
    return-void
.end method

.method endDtd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 213
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 216
    :cond_0
    return-void
.end method

.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 155
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method endNamespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 198
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 551
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 552
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->release(J)V

    .line 553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const-string v1, ""

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v12, v5, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 250
    .local v12, "entityResolver":Lorg/xml/sax/EntityResolver;
    if-nez v12, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 268
    :try_start_0
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 269
    .local v14, "systemUri":Ljava/net/URI;
    invoke-virtual {v14}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v14}, Ljava/net/URI;->isOpaque()Z

    move-result v5

    if-nez v5, :cond_2

    .line 271
    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "baseUri":Ljava/net/URI;
    invoke-virtual {v2, v14}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v14

    .line 275
    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 283
    .end local v2    # "baseUri":Ljava/net/URI;
    .end local v14    # "systemUri":Ljava/net/URI;
    :cond_2
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v13

    .line 285
    .local v13, "inputSource":Lorg/xml/sax/InputSource;
    if-eqz v13, :cond_0

    .line 304
    invoke-direct {p0, v13}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "encoding":Ljava/lang/String;
    iget-wide v8, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(JLjava/lang/String;)J

    move-result-wide v6

    .line 307
    .local v6, "pointer":J
    :try_start_1
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V

    .line 311
    .local v3, "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-direct {p0, v3, v13}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    goto :goto_0

    .line 277
    .end local v3    # "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v6    # "pointer":J
    .end local v13    # "inputSource":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v11

    .line 278
    .local v11, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not resolve \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\' relative to"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\' at "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 313
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "encoding":Ljava/lang/String;
    .restart local v6    # "pointer":J
    .restart local v13    # "inputSource":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    throw v5
.end method

.method notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 228
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method parseDocument(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 474
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 475
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 476
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 477
    return-void
.end method

.method parseDocument(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 484
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 485
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 486
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 487
    return-void
.end method

.method processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 221
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method startCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 176
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 179
    :cond_0
    return-void
.end method

.method startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 206
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributePointer"    # J
    .param p6, "attributeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 133
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 134
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 140
    iput-wide p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 141
    iput p6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 147
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 148
    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 147
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 148
    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    throw v1
.end method

.method startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 191
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method text([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 162
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 165
    :cond_0
    return-void
.end method

.method unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 235
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method
