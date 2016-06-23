.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final addr:Ljava/net/InetAddress;

.field private final hostname:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 41
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 42
    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/InetSocketAddress;->port:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "needResolved"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 98
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const v1, 0xffff

    if-le p2, v1, :cond_1

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz p3, :cond_2

    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    const/4 p1, 0x0

    .line 110
    :cond_2
    :goto_0
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 111
    iput-object p1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 112
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 113
    return-void

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 70
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .end local p1    # "address":Ljava/net/InetAddress;
    :cond_2
    iput-object p1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 75
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 76
    return-void
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 130
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 234
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "socketAddr"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 197
    const/4 v1, 0x1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 202
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 205
    .local v0, "iSockAddr":Ljava/net/InetSocketAddress;
    iget v2, p0, Ljava/net/InetSocketAddress;->port:I

    iget v3, v0, Ljava/net/InetSocketAddress;->port:I

    if-ne v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    .line 212
    iget-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 221
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iget-object v2, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getHostString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ljava/net/InetSocketAddress;->port:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final isUnresolved()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_0
.end method
