.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieParser;
    }
.end annotation


# static fields
.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 70
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "httponly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 450
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/HttpCookie;->version:I

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "ntrim":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/net/HttpCookie;->isValidName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_0
    iput-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 468
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 469
    return-void
.end method

.method static synthetic access$002(Ljava/net/HttpCookie;I)I
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return p1
.end method

.method static synthetic access$100(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/net/HttpCookie;Z)Z
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return p1
.end method

.method static synthetic access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ljava/net/HttpCookie;Z)Z
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/net/HttpCookie;)J
    .locals 2
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method static synthetic access$502(Ljava/net/HttpCookie;J)J
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpCookie;

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ljava/net/HttpCookie;Z)Z
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpCookie;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return p1
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 751
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 752
    const-string v0, ";$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "domainPattern"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    .line 128
    :cond_1
    :goto_0
    return v2

    .line 97
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "a":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    :cond_3
    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 108
    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_5

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_6
    const-string v4, ".local"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    .prologue
    .line 187
    const/16 v1, 0x2e

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 188
    .local v0, "dotPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 477
    .local v1, "isValid":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 482
    .local v2, "nameChar":C
    if-ltz v2, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    .line 487
    :cond_0
    const/4 v1, 0x0

    .line 492
    .end local v0    # "i":I
    .end local v2    # "nameChar":C
    :cond_1
    return v1

    .line 475
    .end local v1    # "isValid":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 478
    .restart local v0    # "i":I
    .restart local v1    # "isValid":Z
    .restart local v2    # "nameChar":C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static matchablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 169
    const-string p0, "/"

    .line 173
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 170
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/net/HttpCookie$CookieParser;

    invoke-direct {v0, p0}, Ljava/net/HttpCookie$CookieParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie$CookieParser;->parse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 3
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "uriPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "cookiePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExpires(Ljava/util/Date;)V
    .locals 4
    .param p1, "expires"    # Ljava/util/Date;

    .prologue
    .line 630
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 631
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 678
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 690
    if-ne p1, p0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v1

    .line 693
    :cond_1
    instance-of v3, p1, Ljava/net/HttpCookie;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 694
    check-cast v0, Ljava/net/HttpCookie;

    .line 695
    .local v0, "that":Ljava/net/HttpCookie;
    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .end local v0    # "that":Ljava/net/HttpCookie;
    :cond_4
    move v1, v2

    .line 699
    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Ljava/net/HttpCookie;->discard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    .prologue
    .line 527
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 6

    .prologue
    .line 582
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 583
    const/4 v0, 0x0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    const/4 v0, 0x0

    .line 587
    .local v0, "expired":Z
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 588
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 597
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentURL"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    .line 612
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 619
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 620
    return-void

    .line 619
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setMaxAge(J)V
    .locals 1
    .param p1, "deltaSeconds"    # J

    .prologue
    .line 626
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 627
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "portList"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 652
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 653
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 661
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public setVersion(I)V
    .locals 3
    .param p1, "newVersion"    # I

    .prologue
    .line 670
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 734
    iget v1, p0, Ljava/net/HttpCookie;->version:I

    if-nez v1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    :goto_0
    return-object v1

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 744
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Path"

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "Domain"

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "Port"

    iget-object v2, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
