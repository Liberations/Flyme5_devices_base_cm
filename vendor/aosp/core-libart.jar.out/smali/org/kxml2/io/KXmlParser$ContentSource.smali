.class Lorg/kxml2/io/KXmlParser$ContentSource;
.super Ljava/lang/Object;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentSource"
.end annotation


# instance fields
.field private final buffer:[C

.field private final limit:I

.field private final next:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private final position:I


# direct methods
.method constructor <init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V
    .locals 0
    .param p1, "next"    # Lorg/kxml2/io/KXmlParser$ContentSource;
    .param p2, "buffer"    # [C
    .param p3, "position"    # I
    .param p4, "limit"    # I

    .prologue
    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2150
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    .line 2151
    iput p3, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    .line 2152
    iput p4, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    .line 2153
    return-void
.end method

.method static synthetic access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C
    .locals 1
    .param p0, "x0"    # Lorg/kxml2/io/KXmlParser$ContentSource;

    .prologue
    .line 2143
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    return-object v0
.end method

.method static synthetic access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/kxml2/io/KXmlParser$ContentSource;

    .prologue
    .line 2143
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    return v0
.end method

.method static synthetic access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/kxml2/io/KXmlParser$ContentSource;

    .prologue
    .line 2143
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    return v0
.end method

.method static synthetic access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;
    .locals 1
    .param p0, "x0"    # Lorg/kxml2/io/KXmlParser$ContentSource;

    .prologue
    .line 2143
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    return-object v0
.end method
