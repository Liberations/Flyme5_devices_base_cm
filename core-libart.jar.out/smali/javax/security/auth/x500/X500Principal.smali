.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient canonicalName:Ljava/lang/String;

.field private transient dn:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0, p1}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {p0, p1, p2}, Ljavax/security/auth/x500/X500Principal;->substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0, p1}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized getCanonicalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "CANONICAL"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    .line 157
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect input encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 110
    throw v0
.end method

.method private incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect input name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    .line 300
    return-void
.end method

.method private substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "sbName":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 306
    .local v2, "fromIndex":I
    :goto_0
    const/4 v5, -0x1

    const-string v6, "="

    invoke-virtual {v3, v6, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "equalIndex":I
    if-eq v5, v1, :cond_1

    .line 307
    const-string v5, ","

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, "commaIndex":I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "subName":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v1, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    move v2, v0

    .line 313
    goto :goto_0

    .line 314
    .end local v0    # "commaIndex":I
    .end local v4    # "subName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 296
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 162
    if-ne p0, p1, :cond_0

    .line 163
    const/4 v1, 0x1

    .line 169
    :goto_0
    return v1

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 166
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 168
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    .line 169
    .local v0, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    .line 180
    .local v1, "src":[B
    array-length v2, v1

    new-array v0, v2, [B

    .line 181
    .local v0, "dst":[B
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC2253"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    move-object/from16 v16, v0

    const-string v17, "RFC1779"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "rfc1779Name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    move-object/from16 v16, v0

    const-string v17, "RFC2253"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "rfc2253Name":Ljava/lang/String;
    const-string v16, "RFC1779"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v6, "resultName":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 229
    .local v4, "fromIndex":I
    const/4 v3, -0x1

    .line 230
    .local v3, "equalIndex":I
    :goto_0
    const/16 v16, -0x1

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    move/from16 v0, v16

    if-eq v0, v3, :cond_2

    .line 231
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, "commaIndex":I
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "subName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "OID."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 236
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "subSubName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 238
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 239
    .local v5, "replaceName":Ljava/lang/String;
    if-lez v2, :cond_0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    :cond_0
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .end local v5    # "replaceName":Ljava/lang/String;
    .end local v12    # "subSubName":Ljava/lang/String;
    :cond_1
    move v4, v2

    .line 244
    goto :goto_0

    .line 245
    .end local v2    # "commaIndex":I
    .end local v10    # "subName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 278
    :goto_1
    return-object v16

    .line 246
    .end local v3    # "equalIndex":I
    .end local v4    # "fromIndex":I
    .end local v6    # "resultName":Ljava/lang/StringBuilder;
    :cond_3
    const-string v16, "RFC2253"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v6    # "resultName":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v15, "subsidyName":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 251
    .restart local v4    # "fromIndex":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 252
    .local v14, "subsidyFromIndex":I
    const/4 v3, -0x1

    .line 253
    .restart local v3    # "equalIndex":I
    const/4 v13, -0x1

    .line 254
    .local v13, "subsidyEqualIndex":I
    :goto_2
    const/16 v16, -0x1

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    move/from16 v0, v16

    if-eq v0, v3, :cond_7

    .line 255
    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v13

    .line 257
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 258
    .restart local v2    # "commaIndex":I
    add-int/lit8 v16, v2, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 260
    .restart local v10    # "subName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 261
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 263
    .local v11, "subOrignalEndIndex":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_4

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 265
    :cond_4
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 267
    .local v9, "subGoalEndIndex":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_5

    .line 268
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 269
    :cond_5
    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v11, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v9    # "subGoalEndIndex":I
    .end local v11    # "subOrignalEndIndex":I
    :cond_6
    move v4, v2

    .line 276
    add-int/lit8 v14, v13, -0x1

    .line 277
    goto :goto_2

    .line 278
    .end local v2    # "commaIndex":I
    .end local v10    # "subName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 280
    .end local v3    # "equalIndex":I
    .end local v4    # "fromIndex":I
    .end local v6    # "resultName":Ljava/lang/StringBuilder;
    .end local v13    # "subsidyEqualIndex":I
    .end local v14    # "subsidyFromIndex":I
    .end local v15    # "subsidyName":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid format specified: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
