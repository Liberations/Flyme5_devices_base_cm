.class public final Ljava/util/Locale$Builder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keywords:Ljava/util/Map;
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

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    .line 322
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    .line 323
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    .line 324
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 304
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 304
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Ljava/util/Locale$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 304
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_1

    .line 479
    # invokes: Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z
    invoke-static {p0}, Ljava/util/Locale;->access$300(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 482
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 483
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 484
    .local v0, "firstChar":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    # invokes: Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z
    invoke-static {p0}, Ljava/util/Locale;->access$300(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "firstChar":C
    :cond_2
    move v1, v2

    .line 489
    goto :goto_0
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 350
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    :cond_0
    const-string v0, ""

    .line 363
    :cond_1
    :goto_0
    return-object v0

    .line 354
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    # invokes: Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->access$000(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    if-eqz p1, :cond_3

    .line 357
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_3
    const-string v0, "und"

    goto :goto_0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v2, 0x2

    .line 414
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    :cond_0
    const-string v0, ""

    .line 428
    :cond_1
    :goto_0
    return-object v0

    .line 418
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "uppercaseRegion":Ljava/lang/String;
    # invokes: Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->access$000(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    # invokes: Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z
    invoke-static {v0}, Ljava/util/Locale;->access$200(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    if-eqz p1, :cond_3

    .line 422
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "script"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v1, 0x4

    .line 512
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    const-string v0, ""

    .line 524
    :goto_0
    return-object v0

    .line 516
    :cond_1
    # invokes: Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z
    invoke-static {p0, v1, v1}, Ljava/util/Locale;->access$000(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    if-eqz p1, :cond_2

    .line 518
    new-instance v0, Ljava/util/IllformedLocaleException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 524
    :cond_3
    # invokes: Ljava/util/Locale;->titleCaseAsciiWord(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0}, Ljava/util/Locale;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    .line 456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 457
    :cond_0
    const-string v3, ""

    .line 471
    :cond_1
    return-object v3

    .line 462
    :cond_2
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "normalizedVariant":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "subTags":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 466
    .local v4, "subTag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 467
    new-instance v6, Ljava/util/IllformedLocaleException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid variant: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attribute == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "lowercaseAttribute":Ljava/lang/String;
    const/4 v1, 0x3

    const/16 v2, 0x8

    # invokes: Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->access$800(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid locale attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_1
    iget-object v1, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    return-object p0
.end method

.method public build()Ljava/util/Locale;
    .locals 9

    .prologue
    .line 798
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    iget-object v6, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    iget-object v7, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public clear()Ljava/util/Locale$Builder;
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Ljava/util/Locale$Builder;->clearExtensions()Ljava/util/Locale$Builder;

    .line 785
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    .line 787
    return-object p0
.end method

.method public clearExtensions()Ljava/util/Locale$Builder;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 723
    iget-object v0, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 724
    iget-object v0, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 725
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attribute == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "lowercaseAttribute":Ljava/lang/String;
    const/4 v1, 0x3

    const/16 v2, 0x8

    # invokes: Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->access$800(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid locale attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_1
    iget-object v1, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 637
    return-object p0
.end method

.method public setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .locals 10
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 680
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 681
    :cond_0
    iget-object v7, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :goto_0
    return-object p0

    .line 685
    :cond_1
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "normalizedValue":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, "subtags":[Ljava/lang/String;
    const/16 v7, 0x78

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 693
    .local v3, "minimumLength":I
    :goto_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 694
    .local v5, "subtag":Ljava/lang/String;
    const/16 v7, 0x8

    # invokes: Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z
    invoke-static {v5, v3, v7}, Ljava/util/Locale;->access$800(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 695
    new-instance v7, Ljava/util/IllformedLocaleException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid private use extension : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 692
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "minimumLength":I
    .end local v5    # "subtag":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 693
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "minimumLength":I
    .restart local v5    # "subtag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 702
    .end local v5    # "subtag":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x75

    if-ne p1, v7, :cond_5

    .line 704
    iget-object v7, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 705
    iget-object v7, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 707
    iget-object v7, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    iget-object v8, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-static {v6, v7, v8}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0

    .line 709
    :cond_5
    iget-object v7, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 381
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale$Builder;->clear()Ljava/util/Locale$Builder;

    .line 394
    :goto_0
    return-object p0

    .line 386
    :cond_1
    const/4 v1, 0x1

    # invokes: Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;
    invoke-static {p1, v1}, Ljava/util/Locale;->access$100(Ljava/lang/String;Z)Ljava/util/Locale;

    move-result-object v0

    .line 389
    .local v0, "fromIcu":Ljava/util/Locale;
    if-nez v0, :cond_2

    .line 390
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid languageTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "locale == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    .line 548
    .local v0, "backupLanguage":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    .line 549
    .local v1, "backupRegion":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    .line 552
    .local v2, "backupVariant":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 553
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 554
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    .line 568
    iget-object v4, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 569
    iget-object v4, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    # getter for: Ljava/util/Locale;->extensions:Ljava/util/Map;
    invoke-static {p1}, Ljava/util/Locale;->access$500(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 571
    iget-object v4, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 572
    iget-object v4, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    # getter for: Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;
    invoke-static {p1}, Ljava/util/Locale;->access$600(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 574
    iget-object v4, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 575
    iget-object v4, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    # getter for: Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;
    invoke-static {p1}, Ljava/util/Locale;->access$700(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 577
    return-object p0

    .line 555
    :catch_0
    move-exception v3

    .line 556
    .local v3, "ifle":Ljava/util/IllformedLocaleException;
    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    .line 557
    iput-object v1, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    .line 558
    iput-object v2, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    .line 560
    throw v3
.end method

.method public setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    .line 508
    return-object p0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 751
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 755
    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :goto_0
    return-object p0

    .line 759
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "lowerCaseKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    # invokes: Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z
    invoke-static {v0}, Ljava/util/Locale;->access$300(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 762
    :cond_2
    new-instance v2, Ljava/util/IllformedLocaleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid unicode locale keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 769
    :cond_3
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "lowerCaseType":Ljava/lang/String;
    # invokes: Ljava/util/Locale;->isValidTypeList(Ljava/lang/String;)Z
    invoke-static {v1}, Ljava/util/Locale;->access$900(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 771
    new-instance v2, Ljava/util/IllformedLocaleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid unicode locale type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 775
    :cond_4
    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {p1}, Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    .line 452
    return-object p0
.end method
