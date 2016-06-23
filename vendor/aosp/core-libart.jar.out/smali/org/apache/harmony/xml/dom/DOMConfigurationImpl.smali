.class public final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    }
.end annotation


# static fields
.field private static final PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cdataSections:Z

.field private comments:Z

.field private datatypeNormalization:Z

.field private entities:Z

.field private errorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private namespaces:Z

.field private schemaLocation:Ljava/lang/String;

.field private schemaType:Ljava/lang/String;

.field private splitCdataSections:Z

.field private validate:Z

.field private wellFormed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    .line 54
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "canonical-form"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "cdata-sections"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "check-character-normalization"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "comments"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "datatype-normalization"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "element-content-whitespace"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "entities"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "error-handler"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "infoset"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "namespaces"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "namespace-declarations"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "normalize-characters"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "schema-location"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "schema-type"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "split-cdata-sections"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "validate"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "validate-if-schema"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    const-string v1, "well-formed"

    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;

    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    .line 288
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    .line 289
    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    .line 290
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    .line 292
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    .line 296
    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    .line 297
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    .line 324
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    return v0
.end method

.method static synthetic access$002(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    return p1
.end method

.method static synthetic access$100(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    return p1
.end method

.method static synthetic access$102(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    return v0
.end method

.method static synthetic access$402(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Lorg/w3c/dom/DOMErrorHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Lorg/w3c/dom/DOMErrorHandler;)Lorg/w3c/dom/DOMErrorHandler;
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Lorg/w3c/dom/DOMErrorHandler;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    return v0
.end method

.method static synthetic access$602(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    return p1
.end method

.method static synthetic access$700(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    return v0
.end method

.method static synthetic access$702(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    return p1
.end method

.method static synthetic access$800(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    return-object p1
.end method

.method private checkTextValidity(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x2

    const-string v1, "wf-invalid-character"

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 463
    :cond_0
    return-void
.end method

.method private isValid(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 471
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 473
    .local v0, "c":C
    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    const/16 v5, 0x20

    if-lt v0, v5, :cond_0

    const v5, 0xd7ff

    if-le v0, v5, :cond_1

    :cond_0
    const v5, 0xe000

    if-lt v0, v5, :cond_2

    const v5, 0xfffd

    if-gt v0, v5, :cond_2

    :cond_1
    move v2, v4

    .line 476
    .local v2, "valid":Z
    :goto_1
    if-nez v2, :cond_3

    .line 480
    .end local v0    # "c":C
    .end local v2    # "valid":Z
    :goto_2
    return v3

    .restart local v0    # "c":C
    :cond_2
    move v2, v3

    .line 473
    goto :goto_1

    .line 470
    .restart local v2    # "valid":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    .end local v2    # "valid":Z
    :cond_4
    move v3, v4

    .line 480
    goto :goto_2
.end method

.method private report(SLjava/lang/String;)V
    .locals 2
    .param p1, "severity"    # S
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMErrorImpl;

    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DOMErrorImpl;-><init>(SLjava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 488
    :cond_0
    return-void
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 331
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 332
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 352
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 353
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-nez v0, :cond_0

    .line 354
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 356
    :cond_0
    invoke-interface {v0, p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 3

    .prologue
    .line 360
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 361
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;-><init>(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;[Ljava/lang/String;)V

    return-object v1
.end method

.method public normalize(Lorg/w3c/dom/Node;)V
    .locals 12
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x2

    .line 383
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 454
    new-instance v8, Lorg/w3c/dom/DOMException;

    const/16 v9, 0x9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported node type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :pswitch_0
    move-object v1, p1

    .line 385
    check-cast v1, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    .line 386
    .local v1, "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    if-eqz v8, :cond_3

    .line 387
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    if-eqz v8, :cond_2

    .line 389
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->split()V

    .line 390
    const/4 v8, 0x1

    const-string v9, "cdata-sections-splitted"

    invoke-direct {p0, v8, v9}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    iget-object v8, v1, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    .line 457
    .end local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 392
    .restart local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :cond_2
    const-string v8, "wf-invalid-character"

    invoke-direct {p0, v9, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object p1

    .end local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :pswitch_2
    move-object v7, p1

    .line 402
    check-cast v7, Lorg/apache/harmony/xml/dom/TextImpl;

    .line 403
    .local v7, "text":Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {v7}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v7

    .line 404
    if-eqz v7, :cond_1

    .line 405
    iget-object v8, v7, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v7    # "text":Lorg/apache/harmony/xml/dom/TextImpl;
    :pswitch_3
    move-object v3, p1

    .line 410
    check-cast v3, Lorg/apache/harmony/xml/dom/CommentImpl;

    .line 411
    .local v3, "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    if-nez v8, :cond_4

    .line 412
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/CommentImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 415
    :cond_4
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/CommentImpl;->containsDashDash()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 416
    const-string v8, "wf-invalid-character"

    invoke-direct {p0, v9, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 418
    :cond_5
    iget-object v8, v3, Lorg/apache/harmony/xml/dom/CommentImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v3    # "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    :pswitch_4
    move-object v8, p1

    .line 422
    check-cast v8, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    move-object v8, p1

    .line 426
    check-cast v8, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_6
    move-object v4, p1

    .line 430
    check-cast v4, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 431
    .local v4, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 432
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 433
    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    .line 432
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 440
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v5    # "i":I
    :cond_6
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .local v2, "child":Lorg/w3c/dom/Node;
    :goto_3
    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 443
    .local v6, "next":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    .line 440
    move-object v2, v6

    goto :goto_3

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x11

    .line 336
    sget-object v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 337
    .local v1, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-nez v1, :cond_0

    .line 338
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 341
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lorg/w3c/dom/DOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 345
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/w3c/dom/DOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method
