.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributedIterator;,
        Ljava/text/AttributedString$Range;
    }
.end annotation


# instance fields
.field attributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;>;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 525
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 526
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot add attributes to empty string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 551
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 553
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 554
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 556
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v2, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    new-instance v3, Ljava/text/AttributedString$Range;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v4, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 561
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 10
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid substring range"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 392
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v2, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 394
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 398
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v1

    .line 400
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez v1, :cond_3

    .line 420
    :cond_2
    return-void

    .line 403
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 406
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 407
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 409
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 410
    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    const v9, 0xffff

    if-eq v8, v9, :cond_4

    .line 411
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    .line 412
    .local v6, "start":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    .line 413
    .local v5, "limit":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v7

    .line 414
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 415
    invoke-virtual {p0, v0, v7, v6, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 417
    :cond_5
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 482
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    .line 483
    return-void
.end method

.method private constructor <init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V
    .locals 8
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "II",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p4, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v6

    if-lt p2, v6, :cond_0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    if-gt p3, v6, :cond_0

    if-le p2, p3, :cond_1

    .line 426
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 429
    :cond_1
    if-nez p4, :cond_3

    .line 460
    :cond_2
    return-void

    .line 433
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 435
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_4

    .line 436
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto :goto_0

    .line 439
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 440
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    .line 443
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 446
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 447
    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_5

    .line 448
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    .line 449
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    .line 450
    .local v4, "runStart":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 451
    .local v3, "limit":I
    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_6

    if-lt v4, p2, :cond_6

    if-le v3, p3, :cond_7

    :cond_6
    if-eqz v5, :cond_9

    instance-of v6, v5, Ljava/text/Annotation;

    if-nez v6, :cond_9

    .line 453
    :cond_7
    if-ge v4, p2, :cond_8

    move v4, p2

    .end local v4    # "runStart":I
    :cond_8
    sub-int v7, v4, p2

    if-le v3, p3, :cond_a

    move v6, p3

    :goto_2
    sub-int/2addr v6, p2

    invoke-virtual {p0, v0, v5, v7, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 457
    :cond_9
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_1

    :cond_a
    move v6, v3

    .line 453
    goto :goto_2
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 2
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 509
    if-nez p4, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    .line 512
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attribute == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 585
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_2

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    .restart local v0    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :goto_0
    new-instance v1, Ljava/text/AttributedString$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    return-void

    .line 589
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 614
    if-nez p1, :cond_0

    .line 615
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "attribute == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 617
    :cond_0
    if-ltz p3, :cond_1

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt p4, v5, :cond_1

    if-lt p3, p4, :cond_2

    .line 618
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 621
    :cond_2
    if-nez p2, :cond_4

    .line 691
    .end local p3    # "start":I
    .end local p4    # "end":I
    :cond_3
    :goto_0
    return-void

    .line 625
    .restart local p3    # "start":I
    .restart local p4    # "end":I
    :cond_4
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 626
    .local v4, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v4, :cond_5

    .line 627
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    .restart local v4    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 632
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 633
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 634
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString$Range;

    .line 635
    .local v3, "range":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_8

    .line 636
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 690
    .end local v3    # "range":Ljava/text/AttributedString$Range;
    :cond_7
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    .restart local v3    # "range":Ljava/text/AttributedString$Range;
    :cond_8
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-lt p3, v5, :cond_9

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-ne p3, v5, :cond_6

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 640
    :cond_9
    const/4 v1, 0x0

    .line 641
    .local v1, "r1":Ljava/text/AttributedString$Range;
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 642
    new-instance v1, Ljava/text/AttributedString$Range;

    .end local v1    # "r1":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v1, v5, p3, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 643
    .restart local v1    # "r1":Ljava/text/AttributedString$Range;
    new-instance v2, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 645
    .local v2, "r3":Ljava/text/AttributedString$Range;
    :cond_a
    :goto_1
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-le p4, v5, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 646
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "range":Ljava/text/AttributedString$Range;
    check-cast v3, Ljava/text/AttributedString$Range;

    .line 647
    .restart local v3    # "range":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-gt p4, v5, :cond_f

    .line 648
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_b

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-ne p4, v5, :cond_a

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 650
    :cond_b
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 651
    new-instance v2, Ljava/text/AttributedString$Range;

    .end local v2    # "r3":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    .line 659
    .restart local v2    # "r3":Ljava/text/AttributedString$Range;
    :cond_c
    iget-object v5, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 660
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 661
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_d

    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    .end local p3    # "start":I
    :cond_d
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v6, p4, :cond_e

    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    .end local p4    # "end":I
    :cond_e
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 655
    .restart local p3    # "start":I
    .restart local p4    # "end":I
    :cond_f
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 664
    :cond_10
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_11

    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    .end local p3    # "start":I
    :cond_11
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 666
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_3

    .line 667
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 671
    .restart local p3    # "start":I
    :cond_12
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 672
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_13

    .line 673
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 675
    :cond_13
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v6, p4, :cond_14

    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    .end local p4    # "end":I
    :cond_14
    iget-object v6, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 678
    .restart local p4    # "end":I
    :cond_15
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_16

    .line 679
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 681
    :cond_16
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 682
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_3

    .line 683
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 4
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 710
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 712
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 716
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 1

    .prologue
    .line 725
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 3
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 741
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 762
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method
