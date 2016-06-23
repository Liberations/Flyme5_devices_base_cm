.class public Ljava/security/cert/CertificateRevokedException;
.super Ljava/security/cert/CertificateException;
.source "CertificateRevokedException.java"


# static fields
.field private static final serialVersionUID:J = 0x6ccd4365f915b433L


# instance fields
.field private final authority:Ljavax/security/auth/x500/X500Principal;

.field private transient extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/security/cert/CRLReason;

.field private final revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V
    .locals 0
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # Ljava/security/cert/CRLReason;
    .param p3, "authority"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/CRLReason;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 57
    iput-object p1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 58
    iput-object p2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    .line 59
    iput-object p3, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    .line 60
    iput-object p4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 131
    .local v3, "size":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "oid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    .line 135
    .local v0, "critical":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 136
    .local v5, "valueLen":I
    new-array v4, v5, [B

    .line 137
    .local v4, "value":[B
    invoke-virtual {p1, v4}, Ljava/io/ObjectInputStream;->read([B)I

    .line 138
    iget-object v6, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    new-instance v7, Lorg/apache/harmony/security/x509/Extension;

    invoke-direct {v7, v2, v0, v4}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "critical":Z
    .end local v2    # "oid":Ljava/lang/String;
    .end local v4    # "value":[B
    .end local v5    # "valueLen":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 146
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 147
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Extension;

    .line 148
    .local v0, "e":Ljava/security/cert/Extension;
    invoke-interface {v0}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 149
    invoke-interface {v0}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 150
    invoke-interface {v0}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v2

    .line 151
    .local v2, "value":[B
    array-length v3, v2

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 152
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->write([B)V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/security/cert/Extension;
    .end local v2    # "value":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthorityName()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidityDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v3

    .line 86
    :cond_1
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    const-string v5, "2.5.29.24"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Extension;

    .line 87
    .local v2, "invalidityDateExtension":Ljava/security/cert/Extension;
    if-eqz v2, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x509/InvalidityDate;

    invoke-interface {v2}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    .line 93
    .local v1, "invalidityDate":Lorg/apache/harmony/security/x509/InvalidityDate;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/InvalidityDate;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 94
    .end local v1    # "invalidityDate":Lorg/apache/harmony/security/x509/InvalidityDate;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Certificate was revoked"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 105
    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_0
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    if-eqz v1, :cond_1

    .line 108
    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    return-object v0
.end method
