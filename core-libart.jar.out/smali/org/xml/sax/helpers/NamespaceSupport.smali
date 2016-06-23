.class public Lorg/xml/sax/helpers/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/NamespaceSupport$Context;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field public static final NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private contextPos:I

.field private contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private namespaceDeclUris:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lorg/xml/sax/helpers/NamespaceSupport;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xml/sax/helpers/NamespaceSupport;

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v2, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 447
    .local v0, "allPrefixes":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNamespaceDeclUris()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method public popContext()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->clear()V

    .line 240
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 241
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-gez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 245
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "isAttribute"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v1, p1, p3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "myParts":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 348
    const/4 p2, 0x0

    .line 353
    .end local p2    # "parts":[Ljava/lang/String;
    :goto_0
    return-object p2

    .line 350
    .restart local p2    # "parts":[Ljava/lang/String;
    :cond_0
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 351
    aget-object v1, v0, v3

    aput-object v1, p2, v3

    .line 352
    aget-object v1, v0, v4

    aput-object v1, p2, v4

    goto :goto_0
.end method

.method public pushContext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    array-length v0, v2

    .line 200
    .local v0, "max":I
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-boolean v4, v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 201
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 204
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lt v2, v0, :cond_0

    .line 205
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 206
    .local v1, "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    mul-int/lit8 v0, v0, 0x2

    .line 208
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 212
    .end local v1    # "newContexts":[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    :cond_0
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 213
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v4, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v4, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v4, v2, v3

    .line 218
    :cond_1
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lez v2, :cond_2

    .line 219
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V

    .line 221
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 153
    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 154
    iput v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 155
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 156
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setNamespaceDeclUris(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 490
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 492
    :cond_0
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    if-ne p1, v0, :cond_1

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_1
    iput-boolean p1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 495
    if-eqz p1, :cond_2

    .line 496
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/xmlns/2000/"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 499
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
