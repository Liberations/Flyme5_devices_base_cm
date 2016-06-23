.class public Lorg/apache/harmony/security/utils/AlgNameMapper;
.super Ljava/lang/Object;
.source "AlgNameMapper.java"


# static fields
.field private static final alg2OidMap:Ljava/util/Map;
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

.field private static final algAliasesMap:Ljava/util/Map;
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

.field private static volatile cacheVersion:I

.field private static final knownAlgMappings:[[Ljava/lang/String;

.field private static final oid2AlgMap:Ljava/util/Map;
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

.field private static final serviceName:[Ljava/lang/String;

.field private static source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 41
    const/4 v5, 0x0

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    .line 43
    const/4 v5, -0x1

    sput v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I

    .line 46
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "Cipher"

    aput-object v6, v5, v9

    const-string v6, "AlgorithmParameters"

    aput-object v6, v5, v10

    const-string v6, "Signature"

    aput-object v6, v5, v11

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    .line 56
    const/16 v5, 0x13

    new-array v5, v5, [[Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "1.2.840.10040.4.1"

    aput-object v7, v6, v9

    const-string v7, "DSA"

    aput-object v7, v6, v10

    aput-object v6, v5, v9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "1.2.840.10040.4.3"

    aput-object v7, v6, v9

    const-string v7, "SHA1withDSA"

    aput-object v7, v6, v10

    aput-object v6, v5, v10

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.1.1"

    aput-object v7, v6, v9

    const-string v7, "RSA"

    aput-object v7, v6, v10

    aput-object v6, v5, v11

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.1.4"

    aput-object v7, v6, v9

    const-string v7, "MD5withRSA"

    aput-object v7, v6, v10

    aput-object v6, v5, v8

    const/4 v6, 0x4

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.1.5"

    aput-object v8, v7, v9

    const-string v8, "SHA1withRSA"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.3.1"

    aput-object v8, v7, v9

    const-string v8, "DiffieHellman"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.5.3"

    aput-object v8, v7, v9

    const-string v8, "pbeWithMD5AndDES-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.12.1.3"

    aput-object v8, v7, v9

    const-string v8, "pbeWithSHAAnd3-KeyTripleDES-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.12.1.6"

    aput-object v8, v7, v9

    const-string v8, "pbeWithSHAAnd40BitRC2-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.2"

    aput-object v8, v7, v9

    const-string v8, "RC2-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xa

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.3"

    aput-object v8, v7, v9

    const-string v8, "RC2-EBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xb

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.4"

    aput-object v8, v7, v9

    const-string v8, "RC4"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xc

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.5"

    aput-object v8, v7, v9

    const-string v8, "RC4WithMAC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xd

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.6"

    aput-object v8, v7, v9

    const-string v8, "DESx-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xe

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.7"

    aput-object v8, v7, v9

    const-string v8, "TripleDES-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0xf

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.8"

    aput-object v8, v7, v9

    const-string v8, "rc5CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0x10

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.9"

    aput-object v8, v7, v9

    const-string v8, "RC5-CBC"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0x11

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.3.10"

    aput-object v8, v7, v9

    const-string v8, "DESCDMF"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    const/16 v6, 0x12

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "2.23.42.9.11.4.1"

    aput-object v8, v7, v9

    const-string v8, "ECDSA"

    aput-object v8, v7, v10

    aput-object v7, v5, v6

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    .line 82
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    .line 89
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    .local v1, "arr$":[[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 90
    .local v2, "element":[Ljava/lang/String;
    aget-object v5, v2, v10

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "algUC":Ljava/lang/String;
    sget-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    aget-object v6, v2, v9

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    aget-object v6, v2, v9

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    aget-object v6, v2, v10

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "algUC":Ljava/lang/String;
    .end local v2    # "element":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static declared-synchronized checkCacheVersion()V
    .locals 8

    .prologue
    .line 103
    const-class v7, Lorg/apache/harmony/security/utils/AlgNameMapper;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v4

    .line 104
    .local v4, "newCacheVersion":I
    sget v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I

    if-eq v4, v6, :cond_1

    .line 111
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v5

    .line 112
    .local v5, "pl":[Ljava/security/Provider;
    move-object v0, v5

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 113
    .local v1, "element":Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->selectEntries(Ljava/security/Provider;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "element":Ljava/security/Provider;
    :cond_0
    sput v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->cacheVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "arr$":[Ljava/security/Provider;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pl":[Ljava/security/Provider;
    :cond_1
    monitor-exit v7

    return-void

    .line 103
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static getStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "algName"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isOID(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->isOID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static map2AlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lorg/apache/harmony/security/utils/AlgNameMapper;->checkCacheVersion()V

    .line 153
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "algUC":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    :goto_0
    return-object v2

    .line 160
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    .line 161
    .local v1, "s":Lorg/apache/harmony/security/utils/AlgNameMapperSource;
    if-eqz v1, :cond_1

    .line 162
    invoke-interface {v1, p0}, Lorg/apache/harmony/security/utils/AlgNameMapperSource;->mapOidToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static map2OID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "algName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lorg/apache/harmony/security/utils/AlgNameMapper;->checkCacheVersion()V

    .line 129
    sget-object v2, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    .line 136
    .local v1, "s":Lorg/apache/harmony/security/utils/AlgNameMapperSource;
    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v1, p0}, Lorg/apache/harmony/security/utils/AlgNameMapperSource;->mapNameToOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "oid":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static selectEntries(Ljava/security/Provider;)V
    .locals 16
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 185
    .local v5, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    sget-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_7

    aget-object v13, v4, v7

    .line 186
    .local v13, "service":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alg.Alias."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "keyPrfix2find":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7    # "i$":I
    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 188
    .local v11, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 189
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 190
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "alg":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "algUC":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 194
    const-string v14, "OID."

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 195
    const/4 v14, 0x4

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_1
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 199
    .local v12, "oid2AlgContains":Z
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 200
    .local v1, "alg2OidContains":Z
    if-eqz v12, :cond_2

    if-nez v1, :cond_0

    .line 201
    :cond_2
    if-nez v12, :cond_3

    .line 202
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_3
    if-nez v1, :cond_4

    .line 205
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_4
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 211
    .end local v1    # "alg2OidContains":Z
    .end local v12    # "oid2AlgContains":Z
    :cond_5
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 212
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    .end local v0    # "alg":Ljava/lang/String;
    .end local v2    # "algUC":Ljava/lang/String;
    .end local v3    # "alias":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_0

    .line 217
    .end local v9    # "keyPrfix2find":Ljava/lang/String;
    .end local v13    # "service":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public static setSource(Lorg/apache/harmony/security/utils/AlgNameMapperSource;)V
    .locals 0
    .param p0, "source"    # Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    .prologue
    .line 242
    sput-object p0, Lorg/apache/harmony/security/utils/AlgNameMapper;->source:Lorg/apache/harmony/security/utils/AlgNameMapperSource;

    .line 243
    return-void
.end method
