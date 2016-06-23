.class public final Lorg/apache/harmony/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralNames$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralNames$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "generalNames":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "generalNames":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/apache/harmony/security/x509/GeneralNames$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/GeneralNames;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addName(Lorg/apache/harmony/security/x509/GeneralName;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x509/GeneralName;

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v2, :cond_1

    .line 130
    :cond_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    .line 126
    .local v0, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPairsList()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    iget-object v5, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v5, :cond_1

    .line 100
    :cond_0
    return-object v4

    .line 86
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    .line 93
    .local v1, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    .local v0, "genNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "genNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 95
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
