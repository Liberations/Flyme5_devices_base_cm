.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 103
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 104
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z

    .prologue
    const/16 v5, 0x20

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "i":I
    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 109
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    if-eqz p3, :cond_2

    if-ne v0, v5, :cond_2

    .line 130
    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    if-lt v0, v5, :cond_3

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_3

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :pswitch_3
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :pswitch_4
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_4

    .line 138
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 144
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_5
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private listToAppendable(Ljava/lang/Appendable;)V
    .locals 8
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "out == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 211
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "property":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 217
    .local v0, "def":Ljava/util/Properties;
    :goto_1
    if-nez v4, :cond_1

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 219
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v0, v0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_2

    .line 222
    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :goto_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 235
    .end local v0    # "def":Ljava/util/Properties;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private selectProperties(Ljava/util/Hashtable;Z)V
    .locals 4
    .param p2, "isStringOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "selectProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1, p2}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 466
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_2

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 473
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 474
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 753
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 754
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 755
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 756
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 757
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 758
    return-object p1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 158
    .local v0, "property":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0

    .line 157
    .end local v0    # "property":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 179
    .local v0, "property":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    if-nez v0, :cond_2

    .line 185
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 178
    .end local v0    # "property":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "property":Ljava/lang/String;
    :cond_2
    move-object p2, v0

    .line 185
    goto :goto_1
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    .line 194
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    .line 202
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_0

    .line 246
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 248
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 21
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    if-nez p1, :cond_0

    .line 279
    :try_start_0
    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "in == null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 281
    :cond_0
    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v5, 0x0

    .line 282
    .local v5, "count":I
    const/16 v19, 0x28

    :try_start_1
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 283
    .local v4, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 284
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 286
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    move v15, v14

    .line 289
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 290
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    .line 422
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_15

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_15

    .line 423
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 293
    :cond_2
    int-to-char v13, v8

    .line 295
    .local v13, "nextChar":C
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 296
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 297
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 298
    move-object v4, v12

    .line 300
    .end local v12    # "newBuf":[C
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 301
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 302
    .local v6, "digit":I
    if-ltz v6, :cond_5

    .line 303
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 304
    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    .line 310
    :cond_4
    const/4 v11, 0x0

    .line 311
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v15

    .line 312
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    move v15, v14

    .line 313
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 307
    :cond_5
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_4

    .line 308
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_6
    move v15, v14

    .line 316
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 317
    const/4 v11, 0x0

    .line 318
    sparse-switch v13, :sswitch_data_0

    .line 415
    :cond_8
    :goto_1
    const/4 v7, 0x0

    .line 416
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 417
    move v10, v15

    .line 418
    const/4 v11, 0x0

    .line 420
    :cond_9
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 320
    :sswitch_0
    const/4 v11, 0x3

    .line 321
    goto/16 :goto_0

    .line 323
    :sswitch_1
    const/4 v11, 0x5

    .line 324
    goto/16 :goto_0

    .line 326
    :sswitch_2
    const/16 v13, 0x8

    .line 327
    goto :goto_1

    .line 329
    :sswitch_3
    const/16 v13, 0xc

    .line 330
    goto :goto_1

    .line 332
    :sswitch_4
    const/16 v13, 0xa

    .line 333
    goto :goto_1

    .line 335
    :sswitch_5
    const/16 v13, 0xd

    .line 336
    goto :goto_1

    .line 338
    :sswitch_6
    const/16 v13, 0x9

    .line 339
    goto :goto_1

    .line 341
    :sswitch_7
    const/4 v11, 0x2

    .line 342
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 343
    goto/16 :goto_0

    .line 346
    :cond_a
    sparse-switch v13, :sswitch_data_1

    .line 398
    :cond_b
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 399
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_c

    .line 400
    const/4 v11, 0x5

    .line 403
    :cond_c
    if-eqz v15, :cond_1

    if-eq v15, v10, :cond_1

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_1

    .line 406
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_13

    .line 407
    const/4 v11, 0x4

    .line 408
    goto/16 :goto_0

    .line 349
    :sswitch_8
    if-eqz v7, :cond_b

    .line 351
    :cond_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 352
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    .line 355
    int-to-char v13, v8

    .line 356
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_1

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v13, v0, :cond_d

    goto/16 :goto_0

    .line 364
    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    .line 365
    const/4 v11, 0x5

    .line 366
    goto/16 :goto_0

    .line 370
    :cond_e
    :sswitch_a
    const/4 v11, 0x0

    .line 371
    const/4 v7, 0x1

    .line 372
    if-gtz v15, :cond_f

    if-nez v15, :cond_11

    if-nez v10, :cond_11

    .line 373
    :cond_f
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_10

    .line 374
    move v10, v15

    .line 376
    :cond_10
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 377
    .local v16, "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v16    # "temp":Ljava/lang/String;
    :cond_11
    const/4 v10, -0x1

    .line 381
    const/4 v14, 0x0

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    .line 382
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 384
    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_12

    .line 385
    move v10, v15

    .line 387
    :cond_12
    const/4 v11, 0x1

    .line 388
    goto/16 :goto_0

    .line 391
    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_b

    .line 392
    const/4 v11, 0x0

    .line 393
    move v10, v15

    .line 394
    goto/16 :goto_0

    .line 411
    :cond_13
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_14

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 412
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 425
    .end local v13    # "nextChar":C
    :cond_15
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    if-lez v15, :cond_16

    .line 426
    move v10, v15

    .line 428
    :cond_16
    if-ltz v10, :cond_18

    .line 429
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 430
    .restart local v16    # "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 432
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_17

    .line 433
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 435
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_18
    monitor-exit p0

    return-void

    .line 318
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    .line 346
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    .line 580
    monitor-enter p0

    if-nez p1, :cond_0

    .line 581
    :try_start_0
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "in == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 584
    :cond_0
    :try_start_1
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v9, :cond_1

    .line 585
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 591
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_2
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    iput-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    :try_start_3
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$1;

    invoke-direct {v10, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 610
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$2;

    invoke-direct {v10, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 626
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    :try_start_4
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v9, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 627
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v9, "entry"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 628
    .local v2, "entries":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_3

    .line 649
    :cond_2
    monitor-exit p0

    return-void

    .line 592
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "entries":Lorg/w3c/dom/NodeList;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "entries":Lorg/w3c/dom/NodeList;
    :cond_3
    :try_start_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 633
    .local v3, "entriesListLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 634
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 635
    .local v4, "entry":Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 636
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 642
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 633
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "entries":Lorg/w3c/dom/NodeList;
    .end local v3    # "entriesListLength":I
    .end local v4    # "entry":Lorg/w3c/dom/Element;
    .end local v6    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 645
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    throw v1

    .line 646
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 647
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v9, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v9, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 444
    .local v0, "selected":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 445
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 539
    :try_start_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 543
    :cond_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 544
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 551
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 553
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 538
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 557
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    monitor-enter p0

    if-nez p1, :cond_0

    .line 694
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "os == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 695
    :cond_0
    if-nez p3, :cond_1

    .line 696
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "encoding == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :cond_1
    :try_start_2
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 719
    .local v1, "encodingCanonicalName":Ljava/lang/String;
    :goto_0
    :try_start_3
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 722
    .local v6, "printStream":Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 724
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 728
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 730
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    if-eqz p2, :cond_2

    .line 733
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 735
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 738
    :cond_2
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 739
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 740
    .local v5, "keyValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, "entryValue":Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 743
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, v3}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 745
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 709
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "entryValue":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "keyValue":Ljava/lang/String;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    const-string v1, "UTF-8"

    .line 717
    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 713
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 714
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    const-string v1, "UTF-8"

    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 747
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    :cond_3
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    monitor-exit p0

    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 457
    .local v0, "stringProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    .line 458
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
