.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:J

.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 622
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    sput-object v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor <init>(JJI)V
    .locals 1
    .param p1, "parserPointer"    # J
    .param p3, "pointer"    # J
    .param p5, "length"    # I

    .prologue
    .line 636
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    .line 637
    iput-wide p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    .line 638
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    .line 639
    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    .line 640
    return-void
.end method

.method synthetic constructor <init>(JJILorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # I
    .param p6, "x3"    # Lorg/apache/harmony/xml/ExpatParser$1;

    .prologue
    .line 620
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    return-void
.end method

.method static synthetic access$400()Lorg/xml/sax/Attributes;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 659
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 660
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(J)V

    .line 661
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 659
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public getParserPointer()J
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    .prologue
    .line 649
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    return-wide v0
.end method
