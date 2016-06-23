.class public Ljavax/xml/transform/stream/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamSource/feature"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/io/File;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 90
    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 120
    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 154
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    .line 155
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 178
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    .line 179
    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 228
    return-void
.end method
