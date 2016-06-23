.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kxml2/io/KXmlParser$ContentSource;,
        Lorg/kxml2/io/KXmlParser$ValueContext;
    }
.end annotation


# static fields
.field private static final ANY:[C

.field private static final ATTLISTDECL:I = 0xd

.field private static final COMMENT_DOUBLE_DASH:[C

.field private static final DEFAULT_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_QUOTE:[C

.field private static final ELEMENTDECL:I = 0xb

.field private static final EMPTY:[C

.field private static final END_CDATA:[C

.field private static final END_COMMENT:[C

.field private static final END_PROCESSING_INSTRUCTION:[C

.field private static final ENTITYDECL:I = 0xc

.field private static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final FIXED:[C

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final IMPLIED:[C

.field private static final NDATA:[C

.field private static final NOTATION:[C

.field private static final NOTATIONDECL:I = 0xe

.field private static final PARAMETER_ENTITY_REF:I = 0xf

.field private static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final PUBLIC:[C

.field private static final REQUIRED:[C

.field private static final SINGLE_QUOTE:[C

.field private static final START_ATTLIST:[C

.field private static final START_CDATA:[C

.field private static final START_COMMENT:[C

.field private static final START_DOCTYPE:[C

.field private static final START_ELEMENT:[C

.field private static final START_ENTITY:[C

.field private static final START_NOTATION:[C

.field private static final START_PROCESSING_INSTRUCTION:[C

.field private static final SYSTEM:[C

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECLARATION:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private buffer:[C

.field private bufferCapture:Ljava/lang/StringBuilder;

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private degenerated:Z

.field private depth:I

.field private documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private keepNamespaceAttributes:Z

.field private limit:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private parsedTopLevelStartTag:Z

.field private position:I

.field private prefix:Ljava/lang/String;

.field private processDocDecl:Z

.field private processNsp:Z

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private rootElementName:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field public final stringPool:Llibcore/internal/StringPool;

.field private systemId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x9

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    .line 50
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    .line 63
    new-array v0, v5, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    .line 64
    new-array v0, v4, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    .line 65
    new-array v0, v3, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    .line 66
    new-array v0, v5, [C

    fill-array-data v0, :array_4

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    .line 67
    new-array v0, v4, [C

    fill-array-data v0, :array_5

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    .line 68
    new-array v0, v4, [C

    fill-array-data v0, :array_6

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    .line 69
    new-array v0, v3, [C

    fill-array-data v0, :array_7

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_9

    sput-object v0, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    .line 72
    new-array v0, v3, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    .line 73
    new-array v0, v3, [C

    fill-array-data v0, :array_b

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    .line 74
    new-array v0, v7, [C

    fill-array-data v0, :array_c

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    .line 76
    new-array v0, v6, [C

    fill-array-data v0, :array_e

    sput-object v0, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    .line 77
    new-array v0, v5, [C

    fill-array-data v0, :array_f

    sput-object v0, Lorg/kxml2/io/KXmlParser;->ANY:[C

    .line 78
    new-array v0, v6, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    .line 79
    new-array v0, v7, [C

    fill-array-data v0, :array_11

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    .line 80
    new-array v0, v7, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_13

    sput-object v0, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    .line 82
    new-array v0, v6, [C

    fill-array-data v0, :array_14

    sput-object v0, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    .line 656
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .line 657
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    return-void

    .line 62
    nop

    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    .line 63
    :array_1
    .array-data 2
        0x2ds
        0x2ds
        0x3es
    .end array-data

    .line 64
    nop

    :array_2
    .array-data 2
        0x2ds
        0x2ds
    .end array-data

    .line 65
    :array_3
    .array-data 2
        0x3cs
        0x21s
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    .line 66
    nop

    :array_4
    .array-data 2
        0x5ds
        0x5ds
        0x3es
    .end array-data

    .line 67
    nop

    :array_5
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    .line 68
    :array_6
    .array-data 2
        0x3fs
        0x3es
    .end array-data

    .line 69
    :array_7
    .array-data 2
        0x3cs
        0x21s
        0x44s
        0x4fs
        0x43s
        0x54s
        0x59s
        0x50s
        0x45s
    .end array-data

    .line 70
    nop

    :array_8
    .array-data 2
        0x53s
        0x59s
        0x53s
        0x54s
        0x45s
        0x4ds
    .end array-data

    .line 71
    :array_9
    .array-data 2
        0x50s
        0x55s
        0x42s
        0x4cs
        0x49s
        0x43s
    .end array-data

    .line 72
    :array_a
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4cs
        0x45s
        0x4ds
        0x45s
        0x4es
        0x54s
    .end array-data

    .line 73
    nop

    :array_b
    .array-data 2
        0x3cs
        0x21s
        0x41s
        0x54s
        0x54s
        0x4cs
        0x49s
        0x53s
        0x54s
    .end array-data

    .line 74
    nop

    :array_c
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4es
        0x54s
        0x49s
        0x54s
        0x59s
    .end array-data

    .line 75
    :array_d
    .array-data 2
        0x3cs
        0x21s
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    .line 76
    :array_e
    .array-data 2
        0x45s
        0x4ds
        0x50s
        0x54s
        0x59s
    .end array-data

    .line 77
    nop

    :array_f
    .array-data 2
        0x41s
        0x4es
        0x59s
    .end array-data

    .line 78
    nop

    :array_10
    .array-data 2
        0x4es
        0x44s
        0x41s
        0x54s
        0x41s
    .end array-data

    .line 79
    nop

    :array_11
    .array-data 2
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    .line 80
    :array_12
    .array-data 2
        0x52s
        0x45s
        0x51s
        0x55s
        0x49s
        0x52s
        0x45s
        0x44s
    .end array-data

    .line 81
    :array_13
    .array-data 2
        0x49s
        0x4ds
        0x50s
        0x4cs
        0x49s
        0x45s
        0x44s
    .end array-data

    .line 82
    nop

    :array_14
    .array-data 2
        0x46s
        0x49s
        0x58s
        0x45s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 142
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 143
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 144
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 176
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 182
    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    .line 2143
    return-void
.end method

.method private adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_5

    .line 198
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 199
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 202
    .local v4, "cut":I
    if-eq v4, v12, :cond_1

    .line 203
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 213
    const/4 v0, 0x1

    .line 197
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 205
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 206
    move-object v7, v1

    .line 207
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 215
    :cond_2
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 217
    .local v6, "j":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 218
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 219
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 221
    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 222
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 225
    :cond_3
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    if-eqz v8, :cond_4

    .line 228
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v9, "http://www.w3.org/2000/xmlns/"

    aput-object v9, v8, v5

    .line 229
    const/4 v0, 0x1

    goto :goto_2

    .line 231
    :cond_4
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 243
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_9

    .line 244
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    :goto_3
    if-ltz v5, :cond_9

    .line 246
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 247
    .restart local v1    # "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 249
    .restart local v4    # "cut":I
    if-nez v4, :cond_6

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_6

    .line 250
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 252
    :cond_6
    if-eq v4, v12, :cond_8

    .line 253
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_7

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_7

    .line 260
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 264
    :cond_7
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 265
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 266
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 244
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto :goto_3

    .line 271
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    :cond_9
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 273
    .restart local v4    # "cut":I
    if-nez v4, :cond_a

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 277
    :cond_a
    if-eq v4, v12, :cond_b

    .line 278
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 279
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 282
    :cond_b
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 284
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_d

    .line 285
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 288
    :cond_c
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 291
    :cond_d
    return v0
.end method

.method private checkRelaxed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 310
    :cond_1
    return-void
.end method

.method private defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    .line 881
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 882
    .local v0, "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 883
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 884
    .restart local v0    # "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    return-void
.end method

.method private ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 295
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 300
    .end local p1    # "arr":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 298
    .restart local p1    # "arr":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 299
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 300
    goto :goto_0
.end method

.method private fillBuffer(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1482
    :cond_0
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    if-eqz v4, :cond_2

    .line 1483
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-ge v4, v5, :cond_1

    .line 1484
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unbalanced entity!"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1486
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->popContentSource()V

    .line 1487
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v5

    if-lt v4, p1, :cond_0

    .line 1521
    :goto_0
    return v2

    .line 1493
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v4, :cond_4

    .line 1494
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 1495
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1496
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1493
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1498
    :cond_3
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    goto :goto_2

    .line 1502
    :cond_4
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    .line 1503
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1506
    :cond_5
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eq v4, v5, :cond_7

    .line 1507
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1508
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1513
    :goto_3
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1515
    :cond_6
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    array-length v7, v7

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    .line 1516
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1517
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, p1, :cond_6

    goto :goto_0

    .line 1510
    .end local v1    # "total":I
    :cond_7
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto :goto_3

    .restart local v1    # "total":I
    :cond_8
    move v2, v3

    .line 1521
    goto :goto_0
.end method

.method private next(Z)I
    .locals 12
    .param p1, "justOneToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 321
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v7, :cond_0

    .line 322
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "setInput() must be called first."

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 325
    :cond_0
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v7, v8, :cond_1

    .line 326
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 332
    :cond_1
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v7, :cond_2

    .line 333
    iput-boolean v6, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 334
    iput v8, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 335
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 451
    :goto_0
    return v5

    .line 338
    :cond_2
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 339
    if-eqz p1, :cond_3

    .line 340
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 341
    const/16 v5, 0x9

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 342
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 343
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 345
    :cond_3
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 349
    :cond_4
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 351
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v8, 0x3e6

    if-ne v7, v8, :cond_5

    .line 352
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readXmlDeclaration()V

    .line 353
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 356
    :cond_5
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 357
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 358
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 359
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 360
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 361
    const/4 v7, -0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 362
    if-nez p1, :cond_6

    move v4, v5

    .line 365
    .local v4, "throwOnResolveFailure":Z
    :goto_1
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v7, :pswitch_data_0

    .line 428
    :pswitch_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .end local v4    # "throwOnResolveFailure":Z
    :cond_6
    move v4, v6

    .line 362
    goto :goto_1

    .line 372
    .restart local v4    # "throwOnResolveFailure":Z
    :pswitch_1
    invoke-direct {p0, v6, v4}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 373
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEndTag()V

    .line 376
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 378
    :pswitch_3
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 385
    :pswitch_4
    if-eqz p1, :cond_9

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v1, "entityTextBuilder":Ljava/lang/StringBuilder;
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v1, v5, v4, v7}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 431
    .end local v1    # "entityTextBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_2
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v7, :cond_b

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_8

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-eq v7, v11, :cond_8

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_b

    .line 432
    :cond_8
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 393
    :cond_9
    :pswitch_5
    const/16 v8, 0x3c

    if-nez p1, :cond_a

    move v7, v5

    :goto_3
    sget-object v9, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v8, v7, v4, v9}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 394
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v7, :cond_7

    .line 395
    const/4 v7, 0x7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_2

    :cond_a
    move v7, v6

    .line 393
    goto :goto_3

    .line 399
    :pswitch_6
    sget-object v7, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 400
    sget-object v7, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    invoke-direct {p0, v7, v5}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    .line 408
    :pswitch_7
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "commentText":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 410
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    .line 414
    .end local v0    # "commentText":Ljava/lang/String;
    :pswitch_8
    sget-object v7, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 415
    sget-object v7, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v7, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "processingInstruction":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 417
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    .line 421
    .end local v3    # "processingInstruction":Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readDoctype(Z)V

    .line 422
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    if-eqz v7, :cond_7

    .line 423
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 435
    :cond_b
    if-eqz p1, :cond_c

    .line 436
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_0

    .line 439
    :cond_c
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_d

    .line 440
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 448
    :cond_d
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v2

    .line 449
    .local v2, "peek":I
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    if-ge v2, v11, :cond_e

    .line 450
    iput v11, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 451
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_0

    .line 454
    :cond_e
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private parseStartTag(ZZ)V
    .locals 13
    .param p1, "xmldecl"    # Z
    .param p2, "throwOnResolveFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1055
    if-nez p1, :cond_0

    .line 1056
    const/16 v9, 0x3c

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1058
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1059
    const/4 v9, 0x0

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1062
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1064
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1065
    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1179
    :goto_1
    return-void

    .line 1069
    :cond_2
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v2, v9, v10

    .line 1071
    .local v2, "c":I
    if-eqz p1, :cond_3

    .line 1072
    const/16 v9, 0x3f

    if-ne v2, v9, :cond_8

    .line 1073
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1074
    const/16 v9, 0x3e

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    goto :goto_1

    .line 1078
    :cond_3
    const/16 v9, 0x2f

    if-ne v2, v9, :cond_7

    .line 1079
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1080
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1081
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1082
    const/16 v9, 0x3e

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1136
    :goto_2
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    mul-int/lit8 v8, v9, 0x4

    .line 1137
    .local v8, "sp":I
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1138
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    .line 1140
    :cond_4
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 1141
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x3

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 1143
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v10, v10

    if-lt v9, v10, :cond_5

    .line 1144
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v9, v9, 0x4

    new-array v1, v9, [I

    .line 1145
    .local v1, "bigger":[I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v12, v12

    invoke-static {v9, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1146
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 1149
    .end local v1    # "bigger":[I
    :cond_5
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v12, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1151
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v9, :cond_10

    .line 1152
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    .line 1158
    :goto_3
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-eqz v9, :cond_11

    .line 1159
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1160
    .local v4, "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_11

    .line 1161
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1162
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1166
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v6, v9, 0x4

    .line 1167
    .local v6, "i":I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1168
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v6

    .line 1169
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    .line 1170
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v6, 0x2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 1171
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v6, 0x3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    goto :goto_4

    .line 1084
    .end local v4    # "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "sp":I
    :cond_7
    const/16 v9, 0x3e

    if-ne v2, v9, :cond_8

    .line 1085
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_2

    .line 1090
    :cond_8
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "attrName":Ljava/lang/String;
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v6, v9, 0x4

    .line 1093
    .restart local v6    # "i":I
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1094
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v6

    .line 1095
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    .line 1096
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x2

    aput-object v0, v9, v10

    .line 1098
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1099
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_9

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1100
    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1104
    :cond_9
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_e

    .line 1105
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1107
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1108
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_a

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1109
    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1112
    :cond_a
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v3, v9, v10

    .line 1114
    .local v3, "delimiter":C
    const/16 v9, 0x27

    if-eq v3, v9, :cond_b

    const/16 v9, 0x22

    if-ne v3, v9, :cond_c

    .line 1115
    :cond_b
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1122
    :goto_5
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    const/4 v11, 0x1

    sget-object v12, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v3, v11, p2, v12}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1125
    const/16 v9, 0x20

    if-eq v3, v9, :cond_1

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v9

    if-ne v9, v3, :cond_1

    .line 1126
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_0

    .line 1116
    :cond_c
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_d

    .line 1117
    const/16 v3, 0x20

    goto :goto_5

    .line 1119
    :cond_d
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "attr value delimiter missing!"

    const/4 v11, 0x0

    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 1128
    .end local v3    # "delimiter":C
    :cond_e
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_f

    .line 1129
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    aput-object v0, v9, v10

    goto/16 :goto_0

    .line 1131
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attr.value missing f. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1132
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    aput-object v0, v9, v10

    goto/16 :goto_0

    .line 1154
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v8    # "sp":I
    :cond_10
    const-string v9, ""

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_3

    .line 1176
    :cond_11
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v10, v9, v8

    .line 1177
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 1178
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x2

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    goto/16 :goto_1
.end method

.method private peekCharacter()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1469
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    .line 1472
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private peekType(Z)I
    .locals 6
    .param p1, "inDeclaration"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x4

    .line 992
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1046
    :cond_0
    :goto_0
    return v0

    .line 996
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1044
    :sswitch_0
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 998
    goto :goto_0

    .line 1000
    :sswitch_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v3, :cond_2

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1001
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Dangling <"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1004
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 1041
    const/4 v0, 0x2

    goto :goto_0

    .line 1006
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1009
    :sswitch_4
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x5

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 1014
    const/16 v0, 0x3e6

    goto/16 :goto_0

    .line 1016
    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1019
    :sswitch_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_2

    .line 1039
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected <!"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1021
    :sswitch_6
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1023
    :sswitch_7
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1025
    :sswitch_8
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1027
    :sswitch_9
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1029
    :pswitch_1
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 1031
    :pswitch_2
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1035
    :sswitch_a
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1037
    :sswitch_b
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 996
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch

    .line 1004
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_5
        0x2f -> :sswitch_3
        0x3f -> :sswitch_4
    .end sparse-switch

    .line 1019
    :sswitch_data_2
    .sparse-switch
        0x2d -> :sswitch_8
        0x41 -> :sswitch_a
        0x44 -> :sswitch_6
        0x45 -> :sswitch_9
        0x4e -> :sswitch_b
        0x5b -> :sswitch_7
    .end sparse-switch

    .line 1027
    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private popContentSource()V
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    # getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2172
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    # getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->position:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2173
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    # getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2174
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    # getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2175
    return-void
.end method

.method private pushContentSource([C)V
    .locals 5
    .param p1, "newBuffer"    # [C

    .prologue
    .line 2161
    new-instance v0, Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser$ContentSource;-><init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2162
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2163
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2164
    array-length v0, p1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2165
    return-void
.end method

.method private read(C)V
    .locals 3
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1441
    .local v0, "c":I
    if-eq v0, p1, :cond_0

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1443
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method

.method private read([C)V
    .locals 6
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1451
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-le v1, v2, :cond_0

    array-length v1, p1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but was EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1466
    :goto_0
    return-void

    .line 1458
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1459
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1458
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1465
    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method

.method private readAttributeListDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 802
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 803
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 804
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "elementName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 808
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 809
    .local v1, "c":I
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_1

    .line 810
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 811
    return-void

    .line 815
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "attributeName":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 819
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 820
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute list"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 822
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    aget-char v5, v5, v7

    if-ne v4, v5, :cond_3

    .line 823
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 824
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 826
    :cond_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 827
    const/16 v4, 0x28

    if-ne v1, v4, :cond_9

    .line 828
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 830
    :goto_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 831
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 832
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 833
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 834
    const/16 v4, 0x29

    if-ne v1, v4, :cond_7

    .line 835
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 848
    :goto_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 849
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 850
    const/16 v4, 0x23

    if-ne v1, v4, :cond_4

    .line 851
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 852
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 853
    const/16 v4, 0x52

    if-ne v1, v4, :cond_a

    .line 854
    sget-object v4, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 862
    :goto_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 863
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 865
    :cond_4
    const/16 v4, 0x22

    if-eq v1, v4, :cond_5

    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    .line 866
    :cond_5
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 868
    int-to-char v4, v1

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v7, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 870
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 872
    :cond_6
    invoke-direct {p0, v2, v0, v3}, Lorg/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 837
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x7c

    if-ne v1, v4, :cond_8

    .line 838
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_1

    .line 840
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 844
    :cond_9
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_2

    .line 855
    :cond_a
    const/16 v4, 0x49

    if-ne v1, v4, :cond_b

    .line 856
    sget-object v4, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_3

    .line 857
    :cond_b
    const/16 v4, 0x46

    if-ne v1, v4, :cond_c

    .line 858
    sget-object v4, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_3

    .line 860
    :cond_c
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readComment(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 564
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v1, :cond_0

    .line 565
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 568
    :cond_0
    sget-object v1, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "commentText":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    .line 570
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Comments may not contain --"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 572
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method

.method private readContentSpec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x28

    const/4 v3, 0x0

    .line 756
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 757
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 758
    .local v0, "c":I
    if-ne v0, v4, :cond_6

    .line 759
    const/4 v1, 0x0

    .line 761
    .local v1, "depth":I
    :cond_0
    if-ne v0, v4, :cond_4

    .line 762
    add-int/lit8 v1, v1, 0x1

    .line 769
    :cond_1
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 770
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 771
    if-gtz v1, :cond_0

    .line 773
    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_3

    .line 774
    :cond_2
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 783
    .end local v1    # "depth":I
    :cond_3
    :goto_1
    return-void

    .line 763
    .restart local v1    # "depth":I
    :cond_4
    const/16 v2, 0x29

    if-ne v0, v2, :cond_5

    .line 764
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 765
    :cond_5
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 766
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unterminated element content spec"

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 776
    .end local v1    # "depth":I
    :cond_6
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_7

    .line 777
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_1

    .line 778
    :cond_7
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_8

    .line 779
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_1

    .line 781
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected element content spec"

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readDoctype(Z)V
    .locals 7
    .param p1, "saveDtdText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 581
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 583
    const/4 v0, -0x1

    .line 584
    .local v0, "startPosition":I
    if-eqz p1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 586
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 589
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 590
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    .line 591
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    .line 592
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 593
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 594
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readInternalSubset()V

    .line 596
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-eqz p1, :cond_2

    .line 599
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v1, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 606
    :cond_2
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 607
    return-void

    .line 598
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    .line 599
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    :cond_3
    throw v1
.end method

.method private readElementDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 730
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 731
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 732
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 733
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readContentSpec()V

    .line 734
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 735
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 736
    return-void
.end method

.method private readEndTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 964
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 965
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 966
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 967
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 968
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 970
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v0, v1, 0x4

    .line 972
    .local v0, "sp":I
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_1

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no tags open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 974
    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 980
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 981
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 982
    :cond_2
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v1, :cond_0

    .line 983
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V
    .locals 10
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "isEntityToken"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1190
    .local v6, "start":I
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v7, v7, v8

    const/16 v8, 0x26

    if-eq v7, v8, :cond_0

    .line 1191
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1194
    :cond_0
    const/16 v7, 0x26

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1197
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1199
    .local v0, "c":I
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_3

    .line 1200
    const/16 v7, 0x3b

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1201
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1223
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, "code":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1226
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1229
    :cond_1
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1231
    :try_start_0
    const-string v7, "#x"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1234
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1236
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1286
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 1204
    :cond_3
    const/16 v7, 0x80

    if-ge v0, v7, :cond_7

    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-le v0, v7, :cond_7

    :cond_4
    const/16 v7, 0x61

    if-lt v0, v7, :cond_5

    const/16 v7, 0x7a

    if-le v0, v7, :cond_7

    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-le v0, v7, :cond_7

    :cond_6
    const/16 v7, 0x5f

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_7

    const/16 v7, 0x23

    if-ne v0, v7, :cond_8

    .line 1211
    :cond_7
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1212
    int-to-char v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1214
    :cond_8
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v7, :cond_2

    .line 1219
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "unterminated entity ref"

    const/4 v9, 0x0

    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 1231
    .restart local v1    # "code":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .line 1238
    :catch_0
    move-exception v4

    .line 1239
    .local v4, "notANumber":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1240
    .end local v4    # "notANumber":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 1241
    .local v3, "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1245
    .end local v3    # "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    :cond_a
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v7, :cond_2

    .line 1250
    sget-object v7, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1251
    .local v2, "defaultEntity":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1253
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1254
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1259
    :cond_b
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .local v5, "resolved":[C
    if-eqz v5, :cond_d

    .line 1260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1261
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1262
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v7, :cond_c

    .line 1263
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->pushContentSource([C)V

    goto/16 :goto_2

    .line 1265
    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1276
    .end local v5    # "resolved":[C
    :cond_d
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 1277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1282
    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1283
    if-eqz p3, :cond_2

    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unresolved: &"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private readEntityDeclaration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 903
    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 904
    const/4 v1, 0x1

    .line 906
    .local v1, "generalEntity":Z
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 907
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    .line 908
    const/4 v1, 0x0

    .line 909
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 910
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 913
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 916
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    .line 918
    .local v3, "quote":I
    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    const/16 v4, 0x27

    if-ne v3, v4, :cond_5

    .line 919
    :cond_1
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 920
    int-to-char v4, v3

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v6, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 922
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 940
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v4, :cond_4

    .line 941
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 942
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 944
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 948
    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 949
    return-void

    .line 924
    .end local v0    # "entityValue":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v7, v6}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 929
    const-string v0, ""

    .line 930
    .restart local v0    # "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 931
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_2

    .line 932
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 933
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 934
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_0

    .line 937
    .end local v0    # "entityValue":Ljava/lang/String;
    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Expected entity value or external ID"

    const/4 v6, 0x0

    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readExternalId(ZZ)Z
    .locals 5
    .param p1, "requireSystemName"    # Z
    .param p2, "assignFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 622
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 623
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 625
    .local v0, "c":I
    const/16 v4, 0x53

    if-ne v0, v4, :cond_1

    .line 626
    sget-object v4, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 639
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 641
    if-nez p1, :cond_3

    .line 642
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 643
    .local v1, "delimiter":I
    const/16 v4, 0x22

    if-eq v1, v4, :cond_3

    const/16 v4, 0x27

    if-eq v1, v4, :cond_3

    move v2, v3

    .line 653
    .end local v1    # "delimiter":I
    :cond_0
    :goto_1
    return v2

    .line 627
    :cond_1
    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    .line 628
    sget-object v4, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 629
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 630
    if-eqz p2, :cond_2

    .line 631
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    goto :goto_0

    .line 633
    :cond_2
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_3
    if-eqz p2, :cond_4

    .line 649
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    :goto_2
    move v2, v3

    .line 653
    goto :goto_1

    .line 651
    :cond_4
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_2
.end method

.method private readInternalSubset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 677
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 680
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 681
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    .line 682
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 683
    return-void

    .line 686
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    .line 687
    .local v0, "declarationType":I
    packed-switch v0, :pswitch_data_0

    .line 718
    :pswitch_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected token"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 689
    :pswitch_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readElementDeclaration()V

    goto :goto_0

    .line 693
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    goto :goto_0

    .line 697
    :pswitch_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEntityDeclaration()V

    goto :goto_0

    .line 701
    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readNotationDeclaration()V

    goto :goto_0

    .line 705
    :pswitch_5
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 706
    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    goto :goto_0

    .line 710
    :pswitch_6
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    goto :goto_0

    .line 714
    :pswitch_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Parameter entity references are not supported"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 687
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/16 v6, 0x3a

    const/4 v5, 0x1

    .line 1529
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_0

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1530
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1531
    const-string v3, ""

    .line 1587
    :goto_0
    return-object v3

    .line 1534
    :cond_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1535
    .local v2, "start":I
    const/4 v1, 0x0

    .line 1538
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    .line 1539
    .local v0, "c":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_1
    if-lt v0, v7, :cond_2

    if-le v0, v8, :cond_3

    :cond_2
    if-eq v0, v9, :cond_3

    if-eq v0, v6, :cond_3

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_3

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v3, :cond_5

    .line 1545
    :cond_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1557
    :goto_1
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_7

    .line 1558
    if-nez v1, :cond_4

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1561
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1562
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1547
    :cond_5
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1548
    const-string v3, ""

    goto :goto_0

    .line 1565
    :cond_6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1569
    :cond_7
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    .line 1570
    const/16 v3, 0x61

    if-lt v0, v3, :cond_8

    const/16 v3, 0x7a

    if-le v0, v3, :cond_b

    :cond_8
    if-lt v0, v7, :cond_9

    if-le v0, v8, :cond_b

    :cond_9
    const/16 v3, 0x30

    if-lt v0, v3, :cond_a

    const/16 v3, 0x39

    if-le v0, v3, :cond_b

    :cond_a
    if-eq v0, v9, :cond_b

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_b

    if-eq v0, v6, :cond_b

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_b

    const/16 v3, 0xb7

    if-lt v0, v3, :cond_c

    .line 1578
    :cond_b
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_1

    .line 1583
    :cond_c
    if-nez v1, :cond_d

    .line 1584
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1586
    :cond_d
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private readNotationDeclaration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 952
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 953
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 954
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 955
    invoke-direct {p0, v1, v1}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected external ID or public ID for notation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 959
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 960
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 961
    return-void
.end method

.method private readQuotedId(Z)Ljava/lang/String;
    .locals 5
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 665
    .local v1, "quote":I
    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 666
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    .line 672
    .local v0, "delimiter":[C
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 673
    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 667
    .end local v0    # "delimiter":[C
    :cond_0
    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    .line 668
    sget-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .restart local v0    # "delimiter":[C
    goto :goto_0

    .line 670
    .end local v0    # "delimiter":[C
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected a quoted string"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readUntil([CZ)Ljava/lang/String;
    .locals 7
    .param p1, "delimiter"    # [C
    .param p2, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 467
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 468
    .local v3, "start":I
    const/4 v2, 0x0

    .line 470
    .local v2, "result":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_0
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v6, p1

    add-int/2addr v5, v6

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-le v5, v6, :cond_5

    .line 478
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v3, v5, :cond_2

    if-eqz p2, :cond_2

    .line 479
    if-nez v2, :cond_1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    array-length v5, p1

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 485
    const-string v5, "Unexpected EOF"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 486
    const/16 v5, 0x9

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 513
    :cond_3
    :goto_1
    return-object v4

    .line 489
    :cond_4
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 494
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_7

    .line 495
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_6

    .line 496
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0

    .line 494
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 504
    :cond_7
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 505
    .local v0, "end":I
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v6, p1

    add-int/2addr v5, v6

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 507
    if-eqz p2, :cond_3

    .line 509
    if-nez v2, :cond_8

    .line 510
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v6, v0, v3

    invoke-virtual {v4, v5, v3, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 512
    :cond_8
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v5, v0, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .locals 10
    .param p1, "delimiter"    # C
    .param p2, "resolveEntities"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x26

    const/16 v5, 0x20

    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 1333
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1334
    .local v2, "start":I
    const/4 v1, 0x0

    .line 1337
    .local v1, "result":Ljava/lang/StringBuilder;
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_0

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_0
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_5

    .line 1350
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v2, v3, :cond_2

    .line 1351
    if-nez v1, :cond_1

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1354
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v3, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1356
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1357
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1435
    :goto_1
    return-object v3

    .line 1357
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 1359
    :cond_4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1362
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v7

    .line 1364
    .local v0, "c":C
    if-eq v0, p1, :cond_7

    if-ne p1, v5, :cond_6

    if-le v0, v5, :cond_7

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    :cond_6
    if-ne v0, v8, :cond_8

    if-nez p2, :cond_8

    .line 1431
    :cond_7
    if-nez v1, :cond_1b

    .line 1432
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1370
    :cond_8
    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    if-ne v0, v6, :cond_9

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    :cond_9
    if-eq v0, v8, :cond_d

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_d

    if-ne v0, v9, :cond_a

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    :cond_a
    const/16 v3, 0x25

    if-ne v0, v3, :cond_b

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    .line 1376
    :cond_b
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-gt v0, v5, :cond_c

    const/4 v3, 0x1

    :goto_2
    and-int/2addr v3, v7

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1377
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0

    :cond_c
    move v3, v4

    .line 1376
    goto :goto_2

    .line 1385
    :cond_d
    if-nez v1, :cond_e

    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1388
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_e
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v3, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1390
    const/16 v3, 0xd

    if-ne v0, v3, :cond_12

    .line 1391
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_f

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    aget-char v3, v3, v7

    if-ne v3, v6, :cond_10

    .line 1392
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1394
    :cond_10
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_11

    move v0, v5

    .line 1426
    :goto_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1427
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1428
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1429
    goto/16 :goto_0

    :cond_11
    move v0, v6

    .line 1394
    goto :goto_3

    .line 1396
    :cond_12
    if-ne v0, v6, :cond_13

    .line 1397
    const/16 v0, 0x20

    goto :goto_3

    .line 1399
    :cond_13
    if-ne v0, v8, :cond_14

    .line 1400
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1401
    invoke-direct {p0, v1, v4, p3, p4}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 1402
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1403
    goto/16 :goto_0

    .line 1405
    :cond_14
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_16

    .line 1406
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_15

    .line 1407
    const-string v3, "Illegal: \"<\" inside attribute value"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1409
    :cond_15
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_3

    .line 1411
    :cond_16
    if-ne v0, v9, :cond_19

    .line 1412
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x2

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_17

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    aget-char v3, v3, v7

    if-ne v3, v9, :cond_18

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x2

    aget-char v3, v3, v7

    const/16 v7, 0x3e

    if-ne v3, v7, :cond_18

    .line 1414
    const-string v3, "Illegal: \"]]>\" outside CDATA section"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1416
    :cond_18
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_3

    .line 1418
    :cond_19
    const/16 v3, 0x25

    if-ne v0, v3, :cond_1a

    .line 1419
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "This parser doesn\'t support parameter entities"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1423
    :cond_1a
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1434
    :cond_1b
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private readXmlDeclaration()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 521
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eqz v2, :cond_1

    .line 522
    :cond_0
    const-string v2, "processing instructions must not start with xml"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 525
    :cond_1
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 526
    invoke-direct {p0, v5, v5}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 528
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt v2, v5, :cond_2

    const-string v2, "version"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 529
    :cond_2
    const-string v2, "version expected"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 532
    :cond_3
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 534
    const/4 v0, 0x1

    .line 536
    .local v0, "pos":I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_4

    const-string v2, "encoding"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 541
    :cond_4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_5

    const-string v2, "standalone"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 542
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-object v1, v2, v3

    .line 543
    .local v1, "st":Ljava/lang/String;
    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 544
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 550
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 553
    .end local v1    # "st":Ljava/lang/String;
    :cond_5
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v0, v2, :cond_6

    .line 554
    const-string v2, "unexpected attributes in XML declaration"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 557
    :cond_6
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 558
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 559
    return-void

    .line 545
    .restart local v1    # "st":Ljava/lang/String;
    :cond_7
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 546
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 548
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal standalone value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1593
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v1, v2

    .line 1595
    .local v0, "c":I
    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    .line 1600
    .end local v0    # "c":I
    :cond_1
    return-void

    .line 1598
    .restart local v0    # "c":I
    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1754
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1757
    :cond_0
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1777
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v0, :cond_0

    .line 1778
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v0, :cond_1

    .line 1782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text must be defined after setInput()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1785
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1788
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 1991
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2010
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 2011
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2013
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2003
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 2004
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2006
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2017
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 2018
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2020
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1995
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2024
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 2025
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2027
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2031
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, -0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2032
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2034
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 2038
    :goto_1
    return-object v1

    .line 2031
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 2038
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 4

    .prologue
    .line 1930
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1931
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_1

    .line 1932
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1933
    const/4 v1, 0x0

    .line 1931
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1935
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1938
    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2042
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 1760
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1767
    :goto_0
    return v0

    .line 1762
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    .line 1764
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1765
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_0

    .line 1767
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 4

    .prologue
    .line 1920
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1921
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_1

    .line 1922
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1923
    add-int/lit8 v1, v1, 0x1

    .line 1921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1926
    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1843
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1859
    :goto_0
    return-object v1

    .line 1846
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1847
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 1850
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1851
    if-nez p1, :cond_2

    .line 1852
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1853
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1856
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1850
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 1859
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 1828
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 1829
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1831
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1835
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1839
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1868
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1870
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_9

    .line 1871
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 1872
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1875
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 1876
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1879
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v4, 0x4

    .line 1885
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1886
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1887
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 1888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 1867
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 1893
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1908
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1910
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1894
    :cond_9
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 1896
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    .line 1897
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1898
    :cond_a
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_b

    .line 1899
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1901
    :cond_b
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1902
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

    .line 1903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1905
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1912
    .end local v3    # "text":Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_8

    .line 1913
    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 1792
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1799
    :goto_0
    return-object v0

    .line 1794
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 1796
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1797
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1799
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1949
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_1

    .line 1950
    :cond_0
    const/4 v0, 0x0

    .line 1954
    :goto_0
    return-object v0

    .line 1951
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1952
    const-string v0, ""

    goto :goto_0

    .line 1954
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "poslen"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1959
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1960
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1961
    aput v3, p1, v2

    .line 1962
    aput v3, p1, v4

    .line 1963
    const/4 v0, 0x0

    .line 1968
    :goto_0
    return-object v0

    .line 1965
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1966
    .local v0, "result":[C
    aput v2, p1, v2

    .line 1967
    array-length v2, v0

    aput v2, p1, v4

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1984
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1985
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1987
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1942
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1943
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1945
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public keepNamespaceAttributes()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    .line 192
    return-void
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2048
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2049
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2053
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2054
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "unexpected type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2057
    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2071
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2072
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "precondition: START_TAG"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2078
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2079
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2085
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 2086
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "END_TAG expected"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2082
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 2089
    :cond_2
    return-object v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2062
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2065
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2068
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2093
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 2102
    :goto_0
    return-void

    .line 2095
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2096
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_0

    .line 2097
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2098
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    .line 2100
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1629
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1630
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1631
    if-nez p2, :cond_0

    const/4 v3, 0x1

    .line 1633
    .local v3, "detectCharset":Z
    :goto_0
    if-nez p1, :cond_1

    .line 1634
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "is == null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1631
    .end local v3    # "detectCharset":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1638
    .restart local v3    # "detectCharset":Z
    :cond_1
    if-eqz v3, :cond_3

    .line 1640
    const/4 v5, 0x0

    .line 1641
    .local v5, "firstFourBytes":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_2

    .line 1642
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1643
    .local v6, "i":I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_6

    .line 1650
    .end local v6    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 1651
    sparse-switch v5, :sswitch_data_0

    .line 1713
    const/high16 v12, -0x10000

    and-int/2addr v12, v5

    const/high16 v13, -0x1010000

    if-ne v12, v13, :cond_9

    .line 1714
    const-string p2, "UTF-16BE"

    .line 1715
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x2

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/16 v16, 0x3

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 1716
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1730
    .end local v5    # "firstFourBytes":I
    :cond_3
    :goto_2
    if-nez p2, :cond_4

    .line 1731
    const-string p2, "UTF-8"

    .line 1734
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1735
    .local v11, "savedLimit":I
    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1736
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1737
    move-object/from16 v0, p0

    iput v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1744
    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v12

    const v13, 0xfeff

    if-ne v12, v13, :cond_5

    .line 1745
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1746
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1751
    :cond_5
    return-void

    .line 1646
    .end local v11    # "savedLimit":I
    .restart local v5    # "firstFourBytes":I
    .restart local v6    # "i":I
    :cond_6
    shl-int/lit8 v12, v5, 0x8

    or-int v5, v12, v6

    .line 1647
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v14, v6

    aput-char v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1748
    .end local v5    # "firstFourBytes":I
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    .line 1749
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid stream or encoding: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v12

    .line 1653
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "firstFourBytes":I
    :sswitch_0
    :try_start_1
    const-string p2, "UTF-32BE"

    .line 1654
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1658
    :sswitch_1
    const-string p2, "UTF-32LE"

    .line 1659
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1663
    :sswitch_2
    const-string p2, "UTF-32BE"

    .line 1664
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1665
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1669
    :sswitch_3
    const-string p2, "UTF-32LE"

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1671
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1675
    :sswitch_4
    const-string p2, "UTF-16BE"

    .line 1676
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1677
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    .line 1678
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1682
    :sswitch_5
    const-string p2, "UTF-16LE"

    .line 1683
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    .line 1684
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    .line 1685
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1690
    :cond_7
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1691
    .restart local v6    # "i":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    .line 1694
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v14, v6

    aput-char v14, v12, v13

    .line 1695
    const/16 v12, 0x3e

    if-ne v6, v12, :cond_7

    .line 1696
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v10, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    .line 1697
    .local v10, "s":Ljava/lang/String;
    const-string v12, "encoding"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1698
    .local v7, "i0":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    move v8, v7

    .line 1699
    .end local v7    # "i0":I
    .local v8, "i0":I
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-eq v12, v13, :cond_8

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x27

    if-eq v12, v13, :cond_8

    .line 1700
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    move v8, v7

    .end local v7    # "i0":I
    .restart local v8    # "i0":I
    goto :goto_3

    .line 1702
    :cond_8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i0":I
    .restart local v7    # "i0":I
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1703
    .local v2, "deli":C
    invoke-virtual {v10, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1704
    .local v9, "i1":I
    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1705
    goto/16 :goto_2

    .line 1717
    .end local v2    # "deli":C
    .end local v6    # "i":I
    .end local v7    # "i0":I
    .end local v9    # "i1":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_9
    const/high16 v12, -0x10000

    and-int/2addr v12, v5

    const/high16 v13, -0x20000

    if-ne v12, v13, :cond_a

    .line 1718
    const-string p2, "UTF-16LE"

    .line 1719
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 1720
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    .line 1721
    :cond_a
    and-int/lit16 v12, v5, -0x100

    const v13, -0x10444100

    if-ne v12, v13, :cond_3

    .line 1722
    const-string p2, "UTF-8"

    .line 1723
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    aput-char v14, v12, v13

    .line 1724
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1651
    :sswitch_data_0
    .sparse-switch
        -0x20000 -> :sswitch_1
        0x3c -> :sswitch_2
        0xfeff -> :sswitch_0
        0x3c003f -> :sswitch_4
        0x3c000000 -> :sswitch_3
        0x3c003f00 -> :sswitch_5
        0x3c3f786d -> :sswitch_6
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1605
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 1607
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1608
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1609
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1610
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1611
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1612
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1613
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1614
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 1616
    if-nez p1, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1620
    :cond_0
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1621
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1622
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1623
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1624
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 1625
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2105
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    .line 2110
    return-void

    .line 2108
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
