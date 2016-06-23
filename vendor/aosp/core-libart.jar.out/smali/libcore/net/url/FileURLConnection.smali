.class public Llibcore/net/url/FileURLConnection;
.super Ljava/net/URLConnection;
.source "FileURLConnection.java"


# static fields
.field private static final CONTENT_LENGTH_VALUE_IDX:I = 0x3

.field private static final CONTENT_TYPE_VALUE_IDX:I = 0x1

.field private static final HEADER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_MODIFIED_VALUE_IDX:I = 0x5


# instance fields
.field private filename:Ljava/lang/String;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final headerKeysAndValues:[Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private isDir:Z

.field private lastModified:J

.field private length:J

.field private permission:Ljava/io/FilePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Llibcore/net/url/FileURLConnection$1;

    invoke-direct {v0}, Llibcore/net/url/FileURLConnection$1;-><init>()V

    sput-object v0, Llibcore/net/url/FileURLConnection;->HEADER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 65
    iput-wide v0, p0, Llibcore/net/url/FileURLConnection;->length:J

    .line 67
    iput-wide v0, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    invoke-static {v0}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "last-modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    iput-object v0, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method private getContentLengthLong()J
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-boolean v0, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    iget-wide v0, p0, Llibcore/net/url/FileURLConnection;->length:J

    return-wide v0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getContentTypeForPlainFiles()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 267
    :goto_0
    return-object v1

    .line 259
    :cond_0
    :try_start_0
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/net/url/FileURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_1
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 264
    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "content/unknown"

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;
    .locals 8
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "fileList":[Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 279
    .local v3, "out":Ljava/io/PrintStream;
    const-string v4, "<title>Directory Listing</title>\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    const-string v4, "<base href=\"file:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/\"><h1>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h1>\n<hr>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 288
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v4
.end method


# virtual methods
.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 113
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "f":Ljava/io/File;
    const/4 v0, 0x0

    .line 115
    .local v0, "error":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iput-boolean v8, p0, Llibcore/net/url/FileURLConnection;->isDir:Z

    .line 117
    invoke-direct {p0, v1}, Llibcore/net/url/FileURLConnection;->getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    .line 120
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    const-string v4, "text/html"

    aput-object v4, v3, v8

    .line 137
    :goto_0
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    const/4 v4, 0x3

    iget-wide v6, p0, Llibcore/net/url/FileURLConnection;->length:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 138
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    const/4 v4, 0x5

    iget-wide v6, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    iput-boolean v8, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    .line 141
    if-eqz v0, :cond_2

    .line 142
    throw v0

    .line 123
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    if-nez v0, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->length:J

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Llibcore/net/url/FileURLConnection;->lastModified:J

    .line 131
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    invoke-direct {p0}, Llibcore/net/url/FileURLConnection;->getContentTypeForPlainFiles()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "ioe":Ljava/io/IOException;
    move-object v0, v2

    goto :goto_1

    .line 133
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    const-string v4, "content/unknown"

    aput-object v4, v3, v8

    goto :goto_0

    .line 144
    :cond_2
    return-void
.end method

.method public getContentLength()I
    .locals 4

    .prologue
    .line 222
    invoke-direct {p0}, Llibcore/net/url/FileURLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 223
    .local v0, "length":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v2, v0

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llibcore/net/url/FileURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-boolean v2, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    if-nez v2, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_2

    .line 196
    :cond_1
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 196
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-boolean v3, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    if-nez v3, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 157
    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 162
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object v2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 156
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-boolean v2, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    if-nez v2, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_2

    .line 179
    :cond_1
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 179
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 202
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Llibcore/net/url/FileURLConnection;->HEADER_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 204
    .local v0, "headerFieldsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 205
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Llibcore/net/url/FileURLConnection;->headerKeysAndValues:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    .line 212
    .end local v0    # "headerFieldsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Llibcore/net/url/FileURLConnection;->headerFields:Ljava/util/Map;

    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-boolean v0, p0, Llibcore/net/url/FileURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Llibcore/net/url/FileURLConnection;->connect()V

    .line 310
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 325
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    if-nez v1, :cond_1

    .line 326
    iget-object v0, p0, Llibcore/net/url/FileURLConnection;->filename:Ljava/lang/String;

    .line 327
    .local v0, "path":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_0

    .line 328
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_0
    new-instance v1, Ljava/io/FilePermission;

    const-string v2, "read"

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    .line 332
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Llibcore/net/url/FileURLConnection;->permission:Ljava/io/FilePermission;

    return-object v1
.end method
