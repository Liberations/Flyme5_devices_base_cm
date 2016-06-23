.class public final Lorg/apache/harmony/security/x509/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static SUPPORTED_CRITICAL:Ljava/util/List;


# instance fields
.field private volatile critical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasUnsupported:Ljava/lang/Boolean;

.field private volatile noncritical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile oidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2.5.29.15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.5.29.19"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.5.29.32"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.5.29.17"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2.5.29.30"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.5.29.36"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.5.29.37"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.5.29.54"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    .line 390
    new-instance v0, Lorg/apache/harmony/security/x509/Extensions$1;

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extensions$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extensions;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method private static decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;
    .locals 4
    .param p0, "extension"    # Lorg/apache/harmony/security/x509/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/x509/Extension;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 309
    if-nez p0, :cond_0

    move-object v1, v2

    .line 324
    :goto_0
    return-object v1

    .line 313
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/Collection;

    move-result-object v0

    .line 320
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method private makeOidsLists()V
    .locals 8

    .prologue
    .line 131
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v7, :cond_0

    .line 152
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 135
    .local v6, "size":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    .local v2, "localCritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 137
    .local v4, "localNoncritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    .local v3, "localHasUnsupported":Ljava/lang/Boolean;
    iget-object v7, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 139
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "oid":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->isCritical()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    sget-object v7, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 142
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v0    # "extension":Lorg/apache/harmony/security/x509/Extension;
    .end local v5    # "oid":Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    .line 150
    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 151
    iput-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 385
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v2, 0x1

    .line 381
    .local v2, "num":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 382
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/Extension;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v2, v3

    .line 384
    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 359
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 362
    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    .line 363
    .local v0, "that":Lorg/apache/harmony/security/x509/Extensions;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCriticalExtensions()Ljava/util/Set;
    .locals 1
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
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    .line 98
    .local v0, "resultCritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 100
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    .line 102
    :cond_0
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    if-nez v0, :cond_0

    .line 353
    sget-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    return-object v0
.end method

.method public getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;
    .locals 4
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v3, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 169
    :goto_0
    return-object v3

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    .line 162
    .local v2, "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    if-nez v2, :cond_2

    .line 163
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    .restart local v2    # "localOidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/security/x509/Extension;>;"
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 165
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v0    # "extension":Lorg/apache/harmony/security/x509/Extension;
    :cond_1
    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    .line 169
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/Extension;

    goto :goto_0
.end method

.method public getNonCriticalExtensions()Ljava/util/Set;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 110
    .local v0, "resultNoncritical":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 114
    :cond_0
    return-object v0
.end method

.method public hasUnsupportedCritical()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    .line 119
    .local v0, "resultHasUnsupported":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Ljava/lang/Boolean;

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 373
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public valueOfBasicConstraints()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 254
    const-string v3, "2.5.29.19"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v1

    .line 255
    .local v1, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extension;->getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;

    move-result-object v0

    .line 259
    .local v0, "bc":Lorg/apache/harmony/security/x509/BasicConstraints;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getCa()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getPathLenConstraint()I

    move-result v2

    goto :goto_0
.end method

.method public valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const-string v1, "2.5.29.29"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 342
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateIssuer;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const-string v1, "2.5.29.37"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 227
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfIssuerAlternativeName()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "2.5.29.18"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public valueOfKeyUsage()[Z
    .locals 3

    .prologue
    .line 200
    const-string v2, "2.5.29.15"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 202
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;

    move-result-object v1

    .local v1, "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    if-nez v1, :cond_1

    .line 203
    .end local v1    # "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    :cond_0
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .restart local v1    # "kUsage":Lorg/apache/harmony/security/x509/KeyUsage;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/KeyUsage;->getKeyUsage()[Z

    move-result-object v2

    goto :goto_0
.end method

.method public valueOfSubjectAlternativeName()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v0, "2.5.29.17"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->decodeGeneralNames(Lorg/apache/harmony/security/x509/Extension;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
