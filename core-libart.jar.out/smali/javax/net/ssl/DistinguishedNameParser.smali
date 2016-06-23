.class public final Ljavax/net/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    .line 50
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 193
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 194
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 196
    :cond_0
    :goto_0
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 198
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 226
    :goto_1
    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 230
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 231
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 206
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 209
    :sswitch_1
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 210
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 215
    :sswitch_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->cur:I

    .line 217
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 218
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 220
    :goto_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 221
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 220
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 223
    :cond_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->cur:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 317
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v2, v3, :cond_0

    .line 318
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_0
    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    aget-char v0, v2, p1

    .line 324
    .local v0, "b1":I
    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    .line 325
    add-int/lit8 v0, v0, -0x30

    .line 334
    :goto_0
    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 335
    .local v1, "b2":I
    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    .line 336
    add-int/lit8 v1, v1, -0x30

    .line 345
    :goto_1
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 326
    .end local v1    # "b2":I
    :cond_1
    if-lt v0, v8, :cond_2

    const/16 v2, 0x66

    if-gt v0, v2, :cond_2

    .line 327
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 328
    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    .line 329
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 331
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    .restart local v1    # "b2":I
    :cond_4
    if-lt v1, v8, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 338
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 339
    :cond_5
    if-lt v1, v6, :cond_6

    if-gt v1, v7, :cond_6

    .line 340
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 342
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .locals 3

    .prologue
    .line 238
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 239
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 262
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    .line 258
    :sswitch_0
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/16 v4, 0x3f

    .line 269
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v5}, Ljavax/net/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v3

    .line 270
    .local v3, "res":I
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 272
    if-ge v3, v7, :cond_1

    .line 273
    int-to-char v4, v3

    .line 306
    :cond_0
    :goto_0
    return v4

    .line 274
    :cond_1
    const/16 v5, 0xc0

    if-lt v3, v5, :cond_0

    const/16 v5, 0xf7

    if-gt v3, v5, :cond_0

    .line 277
    const/16 v5, 0xdf

    if-gt v3, v5, :cond_2

    .line 278
    const/4 v1, 0x1

    .line 279
    .local v1, "count":I
    and-int/lit8 v3, v3, 0x1f

    .line 289
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 290
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 291
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    .line 294
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 296
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v5}, Ljavax/net/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 297
    .local v0, "b":I
    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 298
    and-int/lit16 v5, v0, 0xc0

    if-ne v5, v7, :cond_0

    .line 302
    shl-int/lit8 v5, v3, 0x6

    and-int/lit8 v6, v0, 0x3f

    add-int v3, v5, v6

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    .end local v0    # "b":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const/16 v5, 0xef

    if-gt v3, v5, :cond_3

    .line 281
    const/4 v1, 0x2

    .line 282
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0xf

    goto :goto_1

    .line 284
    .end local v1    # "count":I
    :cond_3
    const/4 v1, 0x3

    .line 285
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 304
    .restart local v2    # "i":I
    :cond_4
    int-to-char v4, v3

    goto :goto_0
.end method

.method private hexAV()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 143
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v4, v5, :cond_0

    .line 145
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_0
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 149
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 154
    :goto_0
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    .line 156
    :cond_1
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 177
    :cond_2
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int v1, v4, v5

    .line 178
    .local v1, "hexLen":I
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_7

    .line 179
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    .end local v1    # "hexLen":I
    :cond_4
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_5

    .line 161
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 162
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 165
    :goto_1
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_2

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 168
    :cond_5
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_6

    .line 169
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 172
    :cond_6
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto/16 :goto_0

    .line 183
    .restart local v1    # "hexLen":I
    :cond_7
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    .line 184
    .local v0, "encoded":[B
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v4, 0x1

    .local v3, "p":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 185
    invoke-direct {p0, v3}, Ljavax/net/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 184
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    :cond_8
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 56
    :goto_0
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 105
    :goto_1
    return-object v0

    .line 63
    :cond_1
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 66
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 67
    :goto_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 71
    :cond_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 80
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 81
    :goto_3
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_3

    .line 84
    :cond_4
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_6

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_6
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 93
    :goto_4
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 98
    :cond_7
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 102
    :cond_a
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 105
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5

    .prologue
    .line 110
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 111
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 112
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 115
    :goto_0
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 121
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 135
    :goto_1
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 129
    :goto_2
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 130
    iget v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget-object v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "attributeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 356
    iput v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 357
    iput v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 358
    iput v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 359
    iput v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->cur:I

    .line 360
    iget-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    .line 362
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "attType":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 397
    :cond_0
    :goto_0
    return-object v1

    .line 367
    :cond_1
    const-string v1, ""

    .line 369
    .local v1, "attValue":Ljava/lang/String;
    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 370
    goto :goto_0

    .line 373
    :cond_2
    iget-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 386
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 392
    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_3

    move-object v1, v2

    .line 397
    goto :goto_0

    .line 375
    :sswitch_1
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    .line 376
    goto :goto_1

    .line 378
    :sswitch_2
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    .line 379
    goto :goto_1

    .line 400
    :cond_3
    iget-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    .line 405
    :cond_4
    iget v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 406
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    .line 408
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_5
    iget-object v3, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4

    .line 402
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "attributeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 421
    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 422
    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->beg:I

    .line 423
    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->end:I

    .line 424
    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->cur:I

    .line 425
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    .line 426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "attType":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v3, v2

    .line 477
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 432
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-ge v4, v5, :cond_3

    .line 433
    const-string v1, ""

    .line 435
    .local v1, "attValue":Ljava/lang/String;
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 448
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_2
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->length:I

    if-lt v4, v5, :cond_4

    .end local v1    # "attValue":Ljava/lang/String;
    :cond_3
    move-object v3, v2

    .line 477
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 437
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "attValue":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    .line 438
    goto :goto_1

    .line 440
    :sswitch_2
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    .line 441
    goto :goto_1

    .line 465
    :cond_4
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_6

    .line 470
    :cond_5
    iget v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    .line 471
    invoke-direct {p0}, Ljavax/net/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 472
    if-nez v0, :cond_0

    .line 473
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_6
    iget-object v4, p0, Ljavax/net/ssl/DistinguishedNameParser;->chars:[C

    iget v5, p0, Ljavax/net/ssl/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_5

    .line 467
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljavax/net/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
