.class public Ljava/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Proxy$Type;
    }
.end annotation


# static fields
.field public static final NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Proxy.Type or SocketAddress argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 65
    iput-object p2, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    .line 66
    return-void
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    instance-of v3, p1, Ljava/net/Proxy;

    if-nez v3, :cond_2

    move v1, v2

    .line 134
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 136
    check-cast v0, Ljava/net/Proxy;

    .line 138
    .local v0, "another":Ljava/net/Proxy;
    iget-object v3, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    iget-object v4, v0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    iget-object v4, v0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ret":I
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Ljava/net/Proxy$Type;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method
