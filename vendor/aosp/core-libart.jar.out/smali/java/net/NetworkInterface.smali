.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final SYS_CLASS_NET:Ljava/io/File;


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceIndex:I

.field private final name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/net"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interfaceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p4, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 54
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 55
    iput p2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    .line 56
    iput-object p3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    .line 57
    iput-object p4, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    .line 58
    return-void
.end method

.method private static collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p2, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v4, 0x0

    .line 193
    .local v4, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->AF_INET:I

    sget v8, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 194
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->SIOCGIFADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 195
    .local v0, "address":Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->SIOCGIFBRDADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 196
    .local v1, "broadcast":Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Landroid/system/OsConstants;->SIOCGIFNETMASK:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 197
    .local v5, "netmask":Ljava/net/InetAddress;
    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 201
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v6, Ljava/net/InterfaceAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "address":Ljava/net/InetAddress;
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "broadcast":Ljava/net/InetAddress;
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "netmask":Ljava/net/InetAddress;
    invoke-direct {v6, v0, v1, v5}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 215
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_1
    iget v6, v2, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_1

    .line 208
    invoke-static {v2}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    .restart local v2    # "errnoException":Landroid/system/ErrnoException;
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 210
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    .line 211
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 15
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "interfaceIndex"    # I
    .param p4, "ifInet6Lines"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p3, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, "suffix":Ljava/lang/String;
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, v2, v5

    .line 162
    .local v8, "line":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 161
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/16 v13, 0x10

    new-array v1, v13, [B

    .line 168
    .local v1, "addressBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v13, v1

    if-ge v4, v13, :cond_1

    .line 169
    mul-int/lit8 v13, v4, 0x2

    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 174
    :cond_1
    const/16 v11, 0x21

    .line 176
    .local v11, "prefixLengthStart":I
    const/16 v13, 0x20

    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    add-int/lit8 v11, v13, 0x1

    .line 177
    const/16 v13, 0x20

    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 178
    .local v10, "prefixLengthEnd":I
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v9

    .line 180
    .local v9, "prefixLength":S
    new-instance v6, Ljava/net/Inet6Address;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-direct {v6, v1, v13, v0}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    .line 181
    .local v6, "inet6Address":Ljava/net/Inet6Address;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v13, Ljava/net/InterfaceAddress;

    invoke-direct {v13, v6, v9}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet6Address;S)V

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1    # "addressBytes":[B
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "inet6Address":Ljava/net/Inet6Address;
    .end local v7    # "len$":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "prefixLength":S
    .end local v10    # "prefixLengthEnd":I
    .end local v11    # "prefixLengthStart":I
    :catch_0
    move-exception v3

    .line 185
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v13

    throw v13

    .line 187
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    return-void
.end method

.method static forUnboundMulticastSocket()Ljava/net/NetworkInterface;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/InetAddress;

    const/4 v4, 0x0

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 284
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    goto :goto_0
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 261
    if-nez p0, :cond_0

    .line 262
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "address == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 265
    .local v1, "networkInterface":Ljava/net/NetworkInterface;
    iget-object v2, v1, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    .end local v1    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interfaceName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->isValidInterfaceName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/net/NetworkInterface;->readIfInet6Lines()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/NetworkInterface;->getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    goto :goto_0
.end method

.method private static getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 5
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "ifInet6Lines"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ifindex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "interfaceIndex":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-static {p0, v2, v0, v1, p1}, Ljava/net/NetworkInterface;->collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 127
    invoke-static {p0, v0, v1}, Ljava/net/NetworkInterface;->collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 129
    new-instance v3, Ljava/net/NetworkInterface;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkInterfacesList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 303
    sget-object v8, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "interfaceNames":[Ljava/lang/String;
    array-length v8, v5

    new-array v6, v8, [Ljava/net/NetworkInterface;

    .line 305
    .local v6, "interfaces":[Ljava/net/NetworkInterface;
    array-length v8, v6

    new-array v2, v8, [Z

    .line 307
    .local v2, "done":[Z
    invoke-static {}, Ljava/net/NetworkInterface;->readIfInet6Lines()[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "ifInet6Lines":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_1

    .line 309
    aget-object v8, v5, v3

    invoke-static {v8, v4}, Ljava/net/NetworkInterface;->getByNameInternal(Ljava/lang/String;[Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v8

    aput-object v8, v6, v3

    .line 312
    aget-object v8, v6, v3

    if-nez v8, :cond_0

    .line 313
    aput-boolean v11, v2, v3

    .line 308
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_1
    array-length v8, v6

    if-ge v0, v8, :cond_6

    .line 320
    aget-boolean v8, v2, v0

    if-eqz v8, :cond_2

    .line 318
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    move v1, v0

    .local v1, "counter2":I
    :goto_3
    array-length v8, v6

    if-ge v1, v8, :cond_5

    .line 326
    aget-boolean v8, v2, v1

    if-eqz v8, :cond_4

    .line 325
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 329
    :cond_4
    aget-object v8, v6, v1

    iget-object v8, v8, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v0

    iget-object v10, v10, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 330
    aget-object v8, v6, v0

    iget-object v8, v8, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    aget-object v9, v6, v1

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    aget-object v8, v6, v1

    aget-object v9, v6, v0

    iput-object v9, v8, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 332
    aget-object v8, v6, v0

    iget-object v8, v8, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    aget-object v9, v6, v1

    iget-object v9, v9, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    aput-boolean v11, v2, v1

    goto :goto_4

    .line 336
    :cond_5
    aget-object v8, v6, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    aput-boolean v11, v2, v0

    goto :goto_2

    .line 339
    .end local v1    # "counter2":I
    :cond_6
    return-object v7
.end method

.method private hasFlag(I)Z
    .locals 3
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/net/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "flags":I
    and-int v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isValidInterfaceName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "interfaceName"    # Ljava/lang/String;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 219
    sget-object v6, Ljava/net/NetworkInterface;->SYS_CLASS_NET:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "interfaceList":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v5

    .line 226
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 227
    .local v4, "validName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    const/4 v5, 0x1

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static readIfInet6Lines()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    const-string v1, "/proc/net/if_inet6"

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static readIntFile(Ljava/lang/String;)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "s":Ljava/lang/String;
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 240
    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 242
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method private static rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;
    .locals 1
    .param p0, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    .line 249
    .local v0, "result":Ljava/net/SocketException;
    invoke-virtual {v0, p0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 250
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    if-ne p1, p0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 359
    :cond_1
    instance-of v3, p1, Ljava/net/NetworkInterface;

    if-nez v3, :cond_2

    move v1, v2

    .line 360
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 362
    check-cast v0, Ljava/net/NetworkInterface;

    .line 364
    .local v0, "rhs":Ljava/net/NetworkInterface;
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    iget v4, v0, Ljava/net/NetworkInterface;->interfaceIndex:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iget-object v4, v0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareAddress()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/net/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    new-array v2, v4, [B

    .line 490
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 491
    mul-int/lit8 v4, v1, 0x3

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 495
    aget-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 499
    .end local v2    # "result":[B
    :goto_2
    return-object v2

    .line 494
    .restart local v2    # "result":[B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 500
    .end local v1    # "i":I
    .end local v2    # "result":[B
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMTU()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mtu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLoopback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 449
    sget v0, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPointToPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 461
    sget v0, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 438
    sget v0, Landroid/system/OsConstants;->IFF_UP:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMulticast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 471
    sget v0, Landroid/system/OsConstants;->IFF_MULTICAST:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 391
    .local v0, "address":Ljava/net/InetAddress;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 395
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
