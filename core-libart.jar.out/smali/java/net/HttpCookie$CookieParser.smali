.class Ljava/net/HttpCookie$CookieParser;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieParser"
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME_TERMINATORS:Ljava/lang/String; = ",;= \t"

.field private static final WHITESPACE:Ljava/lang/String; = " \t"


# instance fields
.field hasExpires:Z

.field hasMaxAge:Z

.field hasVersion:Z

.field private final input:Ljava/lang/String;

.field private final inputLowerCase:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 227
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 228
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 229
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 232
    iput-object p1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    .line 233
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    .line 234
    return-void
.end method

.method private find(Ljava/lang/String;)I
    .locals 3
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 422
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 427
    .end local v0    # "c":I
    :goto_1
    return v0

    .line 422
    .restart local v0    # "c":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private readAttributeName(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnLowerCase"    # Z

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 369
    const-string v3, ",;= \t"

    invoke-direct {p0, v3}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, "c":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    .line 371
    .local v1, "forSubstring":Ljava/lang/String;
    :goto_0
    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    if-ge v3, v0, :cond_1

    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "result":Ljava/lang/String;
    :goto_1
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 373
    return-object v2

    .line 370
    .end local v1    # "forSubstring":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    goto :goto_0

    .line 371
    .restart local v1    # "forSubstring":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private readAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "terminators"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 400
    iget v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v5, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2

    .line 401
    :cond_0
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 402
    .local v2, "quoteCharacter":C
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 403
    .local v1, "closeQuote":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unterminated string literal in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    :cond_1
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "result":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 414
    .end local v1    # "closeQuote":I
    .end local v2    # "quoteCharacter":C
    :goto_0
    return-object v3

    .line 411
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, "c":I
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 413
    .restart local v3    # "result":Ljava/lang/String;
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_0
.end method

.method private readEqualsSign()Z
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 381
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v1, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 382
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    .line 319
    const-string v4, "comment"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$100(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 320
    # setter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .end local p3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local p3    # "value":Ljava/lang/String;
    :cond_1
    const-string v4, "commenturl"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    # getter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$200(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 322
    # setter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 323
    :cond_2
    const-string v4, "discard"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    # setter for: Ljava/net/HttpCookie;->discard:Z
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->access$302(Ljava/net/HttpCookie;Z)Z

    goto :goto_0

    .line 325
    :cond_3
    const-string v4, "domain"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    # getter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$400(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 326
    # setter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_4
    const-string v4, "expires"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 328
    iput-boolean v6, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 329
    # getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 330
    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 331
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_5

    .line 332
    # invokes: Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V
    invoke-static {p1, v0}, Ljava/net/HttpCookie;->access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V

    goto :goto_0

    .line 334
    :cond_5
    const-wide/16 v4, 0x0

    # setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v4, v5}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J

    goto :goto_0

    .line 337
    .end local v0    # "date":Ljava/util/Date;
    :cond_6
    const-string v4, "max-age"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    # getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 344
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 345
    .local v2, "maxAge":J
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 346
    # setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v2, v3}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v2    # "maxAge":J
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid max-age: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v4, "path"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    # getter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$700(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 351
    # setter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 352
    :cond_8
    const-string v4, "port"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    # getter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$800(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 353
    if-eqz p3, :cond_9

    .end local p3    # "value":Ljava/lang/String;
    :goto_1
    # setter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .restart local p3    # "value":Ljava/lang/String;
    :cond_9
    const-string p3, ""

    goto :goto_1

    .line 354
    :cond_a
    const-string v4, "secure"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 355
    # setter for: Ljava/net/HttpCookie;->secure:Z
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->access$902(Ljava/net/HttpCookie;Z)Z

    goto/16 :goto_0

    .line 356
    :cond_b
    const-string v4, "httponly"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 357
    # setter for: Ljava/net/HttpCookie;->httpOnly:Z
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->access$1002(Ljava/net/HttpCookie;Z)Z

    goto/16 :goto_0

    .line 358
    :cond_c
    const-string v4, "version"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    if-nez v4, :cond_0

    .line 359
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    # setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {p1, v4}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_0
.end method

.method private skipWhitespace()V
    .locals 3

    .prologue
    .line 431
    :goto_0
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    const-string v0, " \t"

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v2, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 436
    :cond_0
    return-void

    .line 431
    :cond_1
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v5, 0x1

    .line 241
    .local v5, "pre2965":Z
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v11, "set-cookie2:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v11, "set-cookie2:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 243
    const/4 v5, 0x0

    .line 244
    iput-boolean v10, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 254
    :cond_0
    :goto_0
    invoke-direct {p0, v9}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 256
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 257
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No cookies in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 245
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v11, "set-cookie:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 246
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v11, "set-cookie:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_0

    .line 262
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-nez v8, :cond_3

    .line 263
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected \'=\' after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 267
    :cond_3
    if-eqz v5, :cond_5

    const-string v8, ";"

    :goto_1
    invoke-direct {p0, v8}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v4, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v2, "cookie":Ljava/net/HttpCookie;
    if-eqz v5, :cond_6

    move v8, v9

    :goto_2
    # setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v8}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    .line 270
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_4
    :goto_3
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 279
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v11, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v8, v11, :cond_7

    .line 310
    :goto_4
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    if-eqz v8, :cond_d

    .line 311
    # setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v9}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_0

    .line 267
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    const-string v8, ",;"

    goto :goto_1

    .restart local v2    # "cookie":Ljava/net/HttpCookie;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_6
    move v8, v10

    .line 269
    goto :goto_2

    .line 283
    :cond_7
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2c

    if-ne v8, v11, :cond_8

    .line 284
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_4

    .line 286
    :cond_8
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x3b

    if-ne v8, v11, :cond_9

    .line 287
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 290
    :cond_9
    invoke-direct {p0, v10}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 299
    if-nez v5, :cond_a

    const-string v8, "expires"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "port"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_a
    const-string v6, ";"

    .line 303
    .local v6, "terminators":Ljava/lang/String;
    :goto_5
    const/4 v1, 0x0

    .line 304
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 305
    invoke-direct {p0, v6}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_b
    invoke-direct {p0, v2, v0, v1}, Ljava/net/HttpCookie$CookieParser;->setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 299
    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local v6    # "terminators":Ljava/lang/String;
    :cond_c
    const-string v6, ";,"

    goto :goto_5

    .line 312
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_d
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    if-eqz v8, :cond_0

    .line 313
    # setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v10}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_0

    .line 259
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v7    # "value":Ljava/lang/String;
    :cond_e
    return-object v3
.end method
