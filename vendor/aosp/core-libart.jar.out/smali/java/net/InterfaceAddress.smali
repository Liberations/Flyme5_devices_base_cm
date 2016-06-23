.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final broadcastAddress:Ljava/net/InetAddress;

.field private final prefixLength:S


# direct methods
.method constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V
    .locals 1
    .param p1, "address"    # Ljava/net/Inet4Address;
    .param p2, "broadcastAddress"    # Ljava/net/Inet4Address;
    .param p3, "mask"    # Ljava/net/Inet4Address;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 44
    iput-object p2, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    .line 45
    invoke-static {p3}, Ljava/net/InterfaceAddress;->countPrefixLength(Ljava/net/Inet4Address;)S

    move-result v0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/net/Inet6Address;S)V
    .locals 1
    .param p1, "address"    # Ljava/net/Inet6Address;
    .param p2, "prefixLength"    # S

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    .line 54
    iput-short p2, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    .line 55
    return-void
.end method

.method private static countPrefixLength(Ljava/net/Inet4Address;)S
    .locals 7
    .param p0, "mask"    # Ljava/net/Inet4Address;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "count":S
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 60
    .local v1, "b":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 61
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 62
    add-int/lit8 v6, v2, 0x1

    int-to-short v2, v6

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "b":B
    .end local v3    # "i":I
    :cond_2
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    instance-of v3, p1, Ljava/net/InterfaceAddress;

    if-nez v3, :cond_2

    move v1, v2

    .line 82
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Ljava/net/InterfaceAddress;

    .line 85
    .local v0, "rhs":Ljava/net/InterfaceAddress;
    iget-object v3, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v3, :cond_4

    iget-object v3, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v3, :cond_3

    :goto_1
    iget-short v3, v0, Ljava/net/InterfaceAddress;->prefixLength:S

    iget-short v4, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_5

    iget-object v3, v0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .locals 1

    .prologue
    .line 127
    iget-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    .local v0, "hashCode":I
    :goto_0
    iget-object v2, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 94
    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    add-int/2addr v0, v1

    .line 95
    return v0

    .line 92
    .end local v0    # "hashCode":I
    :cond_0
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    neg-int v0, v2

    goto :goto_0

    .line 93
    .restart local v0    # "hashCode":I
    :cond_1
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
