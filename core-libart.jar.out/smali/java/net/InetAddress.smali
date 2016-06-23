.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NETID_UNSET:I = 0x0

.field public static final UNSPECIFIED:Ljava/net/InetAddress;

.field private static final addressCache:Ljava/net/AddressCache;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 126
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    .line 143
    new-instance v0, Ljava/net/InetAddress;

    sget v1, Landroid/system/OsConstants;->AF_UNSPEC:I

    invoke-direct {v0, v1, v2, v2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    sput-object v0, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    .line 853
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "address"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "family"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hostName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .param p1, "family"    # I
    .param p2, "ipaddress"    # [B
    .param p3, "hostName"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Ljava/net/InetAddress;->family:I

    .line 152
    iput-object p2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 153
    iput-object p3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method static synthetic access$000(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/net/InetAddress;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/net/InetAddress;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method private static badAddressLength([B)Ljava/net/UnknownHostException;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address is neither 4 or 16 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .param p0, "rawAddresses"    # [[B
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 195
    array-length v2, p0

    new-array v1, v2, [Ljava/net/InetAddress;

    .line 196
    .local v1, "returnedAddresses":[Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 197
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v1, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-object v1
.end method

.method public static clearDnsCache()V
    .locals 1

    .prologue
    .line 467
    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 468
    return-void
.end method

.method private static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 267
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 273
    .end local p1    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method private static getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 252
    :goto_0
    return-object v1

    .line 243
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 244
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_3

    .line 245
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 246
    if-nez v0, :cond_2

    .line 247
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 252
    :cond_3
    invoke-static {p0, p1}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public static getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p0, p1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "ipAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 2
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "ipAddress"    # [B
    .param p2, "scopeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 805
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "ipAddress == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 808
    new-instance v1, Ljava/net/Inet4Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    .line 816
    :goto_0
    return-object v0

    .line 809
    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 813
    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    new-instance v0, Ljava/net/Inet4Address;

    invoke-static {p1}, Ljava/net/InetAddress;->ipv4MappedToIPv4([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 819
    :cond_3
    invoke-static {p1}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "ipAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 780
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {p0, v1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {p0, p1}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 473
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "hostname":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 475
    .end local v1    # "hostname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v0}, Landroid/system/GaiException;->rethrowAsUnknownHostException()Ljava/net/UnknownHostException;

    move-result-object v2

    throw v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 395
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v1

    iget-object v0, v1, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 396
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 533
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v0
.end method

.method private static ipv4MappedToIPv4([B)[B
    .locals 4
    .param p0, "mappedAddress"    # [B

    .prologue
    const/4 v3, 0x4

    .line 846
    new-array v1, v3, [B

    .line 847
    .local v1, "ipv4Address":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 848
    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-object v1
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 6
    .param p0, "ipAddress"    # [B

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 831
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v1

    .line 834
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 835
    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 839
    :cond_2
    aget-byte v2, p0, v5

    if-ne v2, v4, :cond_0

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    .line 842
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 501
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 7
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 755
    invoke-static {v4}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 756
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 758
    .local v2, "reached":Z
    if-eqz p2, :cond_0

    .line 759
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, p2, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 761
    :cond_0
    const/4 v3, 0x7

    invoke-static {v1, p1, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    const/4 v2, 0x1

    .line 770
    :cond_1
    :goto_0
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 772
    return v2

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/system/ErrnoException;

    if-eqz v3, :cond_1

    .line 766
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Landroid/system/ErrnoException;

    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v3, v6, :cond_2

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1
.end method

.method private static lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 12
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v9

    invoke-interface {v9}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 420
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    .line 421
    .local v3, "cachedResult":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 422
    instance-of v9, v3, [Ljava/net/InetAddress;

    if-eqz v9, :cond_0

    .line 424
    check-cast v3, [Ljava/net/InetAddress;

    .end local v3    # "cachedResult":Ljava/lang/Object;
    check-cast v3, [Ljava/net/InetAddress;

    .line 444
    :goto_0
    return-object v3

    .line 427
    .restart local v3    # "cachedResult":Ljava/lang/Object;
    :cond_0
    new-instance v9, Ljava/net/UnknownHostException;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "cachedResult":Ljava/lang/Object;
    invoke-direct {v9, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 431
    .restart local v3    # "cachedResult":Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v6, Landroid/system/StructAddrinfo;

    invoke-direct {v6}, Landroid/system/StructAddrinfo;-><init>()V

    .line 432
    .local v6, "hints":Landroid/system/StructAddrinfo;
    sget v9, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v9, v6, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 433
    sget v9, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v9, v6, Landroid/system/StructAddrinfo;->ai_family:I

    .line 437
    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v9, v6, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 438
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v6, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v1

    .line 440
    .local v1, "addresses":[Ljava/net/InetAddress;
    move-object v2, v1

    .local v2, "arr$":[Ljava/net/InetAddress;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v0, v2, v7

    .line 441
    .local v0, "address":Ljava/net/InetAddress;
    iput-object p0, v0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 440
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 444
    goto :goto_0

    .line 445
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "arr$":[Ljava/net/InetAddress;
    .end local v6    # "hints":Landroid/system/StructAddrinfo;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v5

    .line 449
    .local v5, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v5}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Landroid/system/ErrnoException;

    if-eqz v9, :cond_3

    .line 450
    invoke-virtual {v5}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Landroid/system/ErrnoException;

    iget v9, v9, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->EACCES:I

    if-ne v9, v10, :cond_3

    .line 451
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v9, v10, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 455
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to resolve host \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v11, v5, Landroid/system/GaiException;->error:I

    invoke-interface {v10, v11}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "detailMessage":Ljava/lang/String;
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, p1, v4}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    invoke-virtual {v5, v4}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v9

    throw v9
.end method

.method private static loopbackAddresses()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 256
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 257
    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    .line 259
    :goto_0
    return-object v0

    .line 258
    :cond_0
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 259
    new-instance v0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "numericAddress"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    :cond_0
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 521
    :cond_1
    return-object v0

    .line 516
    :cond_2
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/net/InetAddress;
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 518
    if-nez v0, :cond_1

    .line 519
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 279
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 281
    :cond_0
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    .line 282
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v2, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v2, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "addresses":[Ljava/net/InetAddress;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v1, v3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    if-eqz v0, :cond_1

    aget-object v2, v0, v4

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 873
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 874
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v2, "address"

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    .line 875
    .local v0, "addr":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 876
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v0, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 877
    const-string v2, "hostName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 878
    const-string v2, "family"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/net/InetAddress;->family:I

    .line 879
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 860
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 861
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_0

    .line 862
    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 866
    :goto_0
    const-string v1, "family"

    iget v2, p0, Ljava/net/InetAddress;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 867
    const-string v1, "hostName"

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 870
    return-void

    .line 864
    :cond_0
    const-string v1, "address"

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 167
    instance-of v0, p1, Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 338
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .locals 10
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ttl"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 709
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl < 0 || timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    if-nez p1, :cond_3

    .line 715
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    .line 750
    :cond_2
    :goto_0
    return v0

    .line 720
    :cond_3
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9

    .line 721
    .local v9, "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    move-object v2, p0

    .line 725
    .local v2, "destinationAddress":Ljava/net/InetAddress;
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 726
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 727
    .local v5, "isReachable":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 728
    .local v3, "sourceAddress":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetAddress$1;

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/net/InetAddress$1;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0}, Ljava/net/InetAddress$1;->start()V

    goto :goto_1

    .line 746
    .end local v3    # "sourceAddress":Ljava/net/InetAddress;
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v8

    .line 748
    .local v8, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method
