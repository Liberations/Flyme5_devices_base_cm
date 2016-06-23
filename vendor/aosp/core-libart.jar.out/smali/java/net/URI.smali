.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$PartEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

.field private static final ASCII_ONLY:Llibcore/net/UriCodec;

.field static final AUTHORITY_ENCODER:Llibcore/net/UriCodec;

.field static final FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

.field static final PATH_ENCODER:Llibcore/net/UriCodec;

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field static final USER_INFO_ENCODER:Llibcore/net/UriCodec;

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    .line 140
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    .line 141
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "@[]"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    .line 144
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@?"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    .line 147
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "?/[]@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    .line 150
    new-instance v0, Ljava/net/URI$1;

    invoke-direct {v0}, Ljava/net/URI$1;-><init>()V

    sput-object v0, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 204
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "schemeSpecificPart"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    if-eqz p2, :cond_1

    .line 220
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 222
    :cond_1
    if-eqz p3, :cond_2

    .line 223
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 227
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v3, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v3, p0, Ljava/net/URI;->hash:I

    .line 237
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    .line 239
    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 290
    :goto_0
    return-void

    .line 243
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    .line 244
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eq p4, v3, :cond_4

    .line 254
    :cond_3
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_4
    if-eqz p2, :cond_5

    .line 258
    sget-object v1, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 259
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_5
    if-eqz p3, :cond_7

    .line 264
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 267
    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_7
    if-eq p4, v3, :cond_8

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_8
    if-eqz p5, :cond_9

    .line 276
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 279
    :cond_9
    if-eqz p6, :cond_a

    .line 280
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p6}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 284
    :cond_a
    if-eqz p7, :cond_b

    .line 285
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p7}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 289
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 308
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    .line 309
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :cond_1
    if-eqz p2, :cond_2

    .line 318
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v1, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 322
    :cond_2
    if-eqz p3, :cond_3

    .line 323
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 325
    :cond_3
    if-eqz p4, :cond_4

    .line 326
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p4}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    :cond_4
    if-eqz p5, :cond_5

    .line 330
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 334
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 335
    return-void
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 771
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 764
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 765
    .local v1, "prevIndex":I
    :goto_1
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "index":I
    if-eq v0, v5, :cond_1

    .line 766
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    add-int/lit8 v0, v0, 0x3

    .line 769
    move v1, v0

    goto :goto_1

    .line 771
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 731
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1267
    if-eqz p1, :cond_0

    invoke-static {p1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private duplicate()Ljava/net/URI;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 739
    .local v0, "clone":Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    .line 740
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 743
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    .line 744
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 745
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 746
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 748
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 749
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 750
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    .line 751
    return-object v0
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    const/4 v9, 0x0

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v9

    .line 814
    :goto_0
    return v0

    .line 792
    :cond_0
    const/4 v8, 0x0

    .line 794
    .local v8, "prevIndex":I
    :goto_1
    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 795
    .local v6, "index":I
    invoke-virtual {p2, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 796
    .local v7, "index1":I
    if-eq v6, v7, :cond_1

    move v0, v9

    .line 797
    goto :goto_0

    .line 802
    :cond_1
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 805
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 809
    :cond_2
    sub-int v0, v6, v8

    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    .line 810
    goto :goto_0

    .line 813
    :cond_3
    const/4 v1, 0x1

    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v4, v6, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v9

    .line 814
    goto :goto_0

    .line 817
    :cond_4
    add-int/lit8 v6, v6, 0x3

    .line 818
    move v8, v6

    .line 819
    goto :goto_1
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    .prologue
    const/4 v0, -0x1

    .line 985
    if-eq p1, v0, :cond_0

    .line 994
    .end local p1    # "specifiedPort":I
    :goto_0
    return p1

    .line 989
    .restart local p1    # "specifiedPort":I
    :cond_0
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    const/16 p1, 0x50

    goto :goto_0

    .line 991
    :cond_1
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 992
    const/16 p1, 0x1bb

    goto :goto_0

    :cond_2
    move p1, v0

    .line 994
    goto :goto_0
.end method

.method private getHashString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    :cond_0
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3

    .line 1334
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1362
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1363
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1336
    :cond_3
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1337
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1339
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_4
    :goto_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1352
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1356
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1357
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1341
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 577
    :try_start_0
    const-string v8, "_-."

    invoke-static {p1, v8}, Llibcore/net/UriCodec;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v4, 0x0

    .line 583
    .local v4, "lastLabel":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    .line 584
    .local v6, "token":Ljava/lang/String;
    move-object v4, v6

    .line 585
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 600
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "lastLabel":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 578
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Ljava/net/URISyntaxException;
    goto :goto_1

    .line 583
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "lastLabel":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "token":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .end local v6    # "token":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 595
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 596
    .local v1, "ch":C
    const/16 v8, 0x30

    if-lt v1, v8, :cond_3

    const/16 v8, 0x39

    if-le v1, v8, :cond_0

    .line 600
    .end local v1    # "ch":C
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "forceServer"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 524
    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 526
    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Expected a closing square bracket for IPv6 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 530
    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    :cond_1
    :goto_0
    return v2

    .line 535
    :cond_2
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv6 address"

    invoke-direct {v2, p2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 540
    :cond_3
    const/16 v4, 0x5b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_4

    const/16 v4, 0x5d

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 541
    :cond_4
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 544
    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 545
    .local v1, "index":I
    if-ltz v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 548
    :cond_6
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 551
    if-eqz p1, :cond_7

    .line 552
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_7
    move v2, v3

    .line 554
    goto :goto_0

    .line 559
    :cond_8
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 560
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 566
    .end local v0    # "ia":Ljava/net/InetAddress;
    :goto_1
    if-eqz p1, :cond_9

    .line 567
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Malformed IPv4 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_9
    move v2, v3

    .line 569
    goto :goto_0

    .line 563
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "discardRelativePrefix"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1071
    invoke-static {p1, p2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1077
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1078
    .local v0, "colon":I
    if-eq v0, v3, :cond_1

    .line 1079
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1080
    .local v1, "slash":I
    if-eq v1, v3, :cond_0

    if-ge v0, v1, :cond_1

    .line 1081
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    .end local v1    # "slash":I
    :cond_1
    return-object p1
.end method

.method private parseAuthority(Z)V
    .locals 13
    .param p1, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 437
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const/4 v8, 0x0

    .line 442
    .local v8, "tempUserInfo":Ljava/lang/String;
    iget-object v5, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 443
    .local v5, "temp":Ljava/lang/String;
    const/16 v9, 0x40

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 444
    .local v4, "index":I
    const/4 v3, 0x0

    .line 445
    .local v3, "hostIndex":I
    if-eq v4, v11, :cond_2

    .line 447
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 448
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v9, v8, v10}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 450
    add-int/lit8 v3, v4, 0x1

    .line 453
    :cond_2
    const/16 v9, 0x3a

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 454
    const/16 v9, 0x5d

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 457
    .local v1, "endIndex":I
    const/4 v7, -0x1

    .line 458
    .local v7, "tempPort":I
    if-eq v4, v11, :cond_5

    if-ge v1, v4, :cond_5

    .line 460
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "tempHost":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_3

    .line 464
    add-int/lit8 v9, v4, 0x1

    :try_start_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 465
    .local v2, "firstPortChar":C
    const/16 v9, 0x30

    if-lt v2, v9, :cond_4

    const/16 v9, 0x39

    if-gt v2, v9, :cond_4

    .line 467
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 487
    .end local v2    # "firstPortChar":C
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 488
    if-eqz p1, :cond_0

    .line 489
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Expected host"

    invoke-direct {v9, v10, v11, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 469
    .restart local v2    # "firstPortChar":C
    :cond_4
    if-eqz p1, :cond_0

    .line 470
    :try_start_1
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Invalid port number"

    add-int v12, v3, v4

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    .end local v2    # "firstPortChar":C
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_0

    .line 477
    new-instance v9, Ljava/net/URISyntaxException;

    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v11, "Invalid port number"

    add-int v12, v3, v4

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 484
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "tempHost":Ljava/lang/String;
    :cond_5
    move-object v6, v5

    .restart local v6    # "tempHost":Ljava/lang/String;
    goto :goto_1

    .line 494
    :cond_6
    invoke-direct {p0, p1, v6}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 500
    iput-object v8, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 501
    iput-object v6, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 502
    iput v7, p0, Ljava/net/URI;->port:I

    .line 503
    const/4 v9, 0x1

    iput-boolean v9, p0, Ljava/net/URI;->serverAuthority:Z

    goto/16 :goto_0
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 350
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 353
    const-string v6, "#"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p1, v6, v10, v7}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 354
    .local v3, "fragmentStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 355
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "fragment"

    invoke-virtual {v6, p1, v7, v8, v9}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 360
    :cond_0
    const-string v6, ":"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 361
    .local v1, "colon":I
    const-string v6, "/?#"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 362
    iput-boolean v11, p0, Ljava/net/URI;->absolute:Z

    .line 363
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->validateScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 364
    add-int/lit8 v5, v1, 0x1

    .line 366
    .local v5, "start":I
    if-ne v5, v3, :cond_1

    .line 367
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme-specific part expected"

    invoke-direct {v6, p1, v7, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 371
    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v5, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 372
    iput-boolean v11, p0, Ljava/net/URI;->opaque:Z

    .line 373
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "scheme specific part"

    invoke-virtual {v6, p1, v5, v3, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 410
    :goto_0
    return-void

    .line 378
    .end local v5    # "start":I
    :cond_2
    iput-boolean v10, p0, Ljava/net/URI;->absolute:Z

    .line 379
    const/4 v5, 0x0

    .line 382
    .restart local v5    # "start":I
    :cond_3
    iput-boolean v10, p0, Ljava/net/URI;->opaque:Z

    .line 383
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 387
    const-string v6, "//"

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v10, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 388
    add-int/lit8 v0, v5, 0x2

    .line 389
    .local v0, "authorityStart":I
    const-string v6, "/?"

    invoke-static {p1, v6, v0, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 390
    .local v2, "fileStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 391
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Authority expected"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 393
    :cond_4
    if-ge v0, v2, :cond_5

    .line 394
    sget-object v6, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "authority"

    invoke-virtual {v6, p1, v0, v2, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 401
    .end local v0    # "authorityStart":I
    :cond_5
    :goto_1
    const-string v6, "?"

    invoke-static {p1, v6, v2, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 402
    .local v4, "queryStart":I
    sget-object v6, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "path"

    invoke-virtual {v6, p1, v2, v4, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 405
    if-ge v4, v3, :cond_6

    .line 406
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v4, 0x1

    const-string v8, "query"

    invoke-virtual {v6, p1, v7, v3, v8}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 409
    :cond_6
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    goto :goto_0

    .line 397
    .end local v2    # "fileStart":I
    .end local v4    # "queryStart":I
    :cond_7
    move v2, v5

    .restart local v2    # "fileStart":I
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1387
    :try_start_0
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    return-void

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .locals 3

    .prologue
    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v0, "ssp":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1242
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1249
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1250
    return-void
.end method

.method private validateScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 413
    if-nez p2, :cond_0

    .line 414
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Scheme expected"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Illegal character in scheme"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 509
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, "ch":C
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 511
    :cond_0
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in userInfo"

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1397
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 132
    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 622
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v0, v1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_2

    move v0, v2

    .line 625
    goto :goto_0

    .line 626
    :cond_2
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 627
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 628
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 634
    .end local v0    # "ret":I
    :cond_3
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_4

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_4

    move v0, v1

    .line 635
    goto :goto_0

    .line 636
    :cond_4
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_5

    move v0, v2

    .line 637
    goto :goto_0

    .line 638
    :cond_5
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_7

    .line 639
    iget-object v3, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 640
    .restart local v0    # "ret":I
    if-nez v0, :cond_0

    .line 707
    :cond_6
    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_11

    move v0, v2

    .line 708
    goto :goto_0

    .line 648
    .end local v0    # "ret":I
    :cond_7
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    .line 649
    goto :goto_0

    .line 650
    :cond_8
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v0, v1

    .line 651
    goto :goto_0

    .line 652
    :cond_9
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 653
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 655
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_a

    move v0, v2

    .line 656
    goto :goto_0

    .line 657
    :cond_a
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v0, v1

    .line 658
    goto/16 :goto_0

    .line 659
    :cond_b
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 660
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 661
    .restart local v0    # "ret":I
    if-nez v0, :cond_0

    .line 667
    .end local v0    # "ret":I
    :cond_c
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 668
    .restart local v0    # "ret":I
    if-nez v0, :cond_0

    .line 673
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, p1, Ljava/net/URI;->port:I

    if-eq v3, v4, :cond_e

    .line 674
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    goto/16 :goto_0

    .line 678
    .end local v0    # "ret":I
    :cond_d
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 679
    .restart local v0    # "ret":I
    if-nez v0, :cond_0

    .line 687
    .end local v0    # "ret":I
    :cond_e
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 688
    .restart local v0    # "ret":I
    if-nez v0, :cond_0

    .line 694
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_f

    move v0, v2

    .line 695
    goto/16 :goto_0

    .line 696
    :cond_f
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_10

    move v0, v1

    .line 697
    goto/16 :goto_0

    .line 698
    :cond_10
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 699
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 700
    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 709
    :cond_11
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    .line 710
    goto/16 :goto_0

    .line 711
    :cond_12
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 712
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 713
    if-nez v0, :cond_0

    .line 719
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 823
    instance-of v3, p1, Ljava/net/URI;

    if-nez v3, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 826
    check-cast v0, Ljava/net/URI;

    .line 828
    .local v0, "uri":Ljava/net/URI;
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 831
    :cond_3
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 832
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    :cond_4
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 840
    :cond_6
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 841
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    :cond_7
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_8

    .line 847
    iget-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 849
    :cond_8
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    .line 850
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_9
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 857
    :cond_a
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 858
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    :cond_b
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_c
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 866
    :cond_d
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 867
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_e
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 870
    :cond_f
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 872
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 874
    :cond_10
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, v0, Ljava/net/URI;->port:I

    if-ne v3, v4, :cond_0

    .line 882
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_11
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 885
    :cond_12
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 886
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_13
    move v1, v2

    .line 888
    goto/16 :goto_0

    :cond_14
    move v1, v2

    .line 893
    goto/16 :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectivePort()I
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1044
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1046
    :cond_0
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .locals 4

    .prologue
    .line 1095
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_1

    .line 1108
    .end local p0    # "this":Ljava/net/URI;
    :cond_0
    :goto_0
    return-object p0

    .line 1098
    .restart local p0    # "this":Ljava/net/URI;
    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "normalizedPath":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1105
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1106
    .local v1, "result":Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1107
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p0, v1

    .line 1108
    goto :goto_0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_0

    .line 1123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    .line 1125
    :cond_0
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "relative"    # Ljava/net/URI;

    .prologue
    const/4 v5, 0x0

    .line 1137
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_1

    .line 1179
    .end local p1    # "relative":Ljava/net/URI;
    :cond_0
    :goto_0
    return-object p1

    .line 1141
    .restart local p1    # "relative":Ljava/net/URI;
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1146
    :cond_2
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1152
    :cond_3
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "thisPath":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "relativePath":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1161
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    :cond_4
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 1174
    .local v1, "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1175
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1177
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1178
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p1, v1

    .line 1179
    goto :goto_0

    .line 1141
    .end local v0    # "relativePath":Ljava/lang/String;
    .end local v1    # "result":Ljava/net/URI;
    .end local v2    # "thisPath":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1146
    :cond_6
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "relative"    # Ljava/lang/String;

    .prologue
    .line 1263
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "relative"    # Ljava/net/URI;

    .prologue
    .line 1191
    iget-boolean v3, p1, Ljava/net/URI;->absolute:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, p1

    .line 1228
    :goto_0
    return-object v2

    .line 1195
    :cond_1
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1198
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1199
    .local v2, "result":Ljava/net/URI;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 1200
    iget-boolean v3, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v3, v2, Ljava/net/URI;->absolute:Z

    goto :goto_0

    .line 1204
    .end local v2    # "result":Ljava/net/URI;
    :cond_2
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1206
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1207
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    goto :goto_0

    .line 1211
    .end local v2    # "result":Ljava/net/URI;
    :cond_3
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1212
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1213
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1215
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1217
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1226
    .local v1, "resolvedPath":Ljava/lang/String;
    :goto_1
    iget-object v3, v2, Ljava/net/URI;->authority:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1227
    invoke-direct {v2}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_0

    .line 1218
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1220
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_1

    .line 1223
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 1224
    .local v0, "endIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_1
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1278
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1286
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1319
    :goto_0
    return-object v1

    .line 1290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1291
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    :cond_1
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_4

    .line 1296
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :cond_2
    :goto_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1314
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1319
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    goto :goto_0

    .line 1298
    :cond_4
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1299
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1304
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1308
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1309
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI is not absolute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
