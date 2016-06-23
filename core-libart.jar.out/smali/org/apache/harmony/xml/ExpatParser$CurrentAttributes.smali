.class Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAttributes"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatParser;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/harmony/xml/ExpatParser;
    .param p2, "x1"    # Lorg/apache/harmony/xml/ExpatParser$1;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    # getter for: Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$1100(Lorg/apache/harmony/xml/ExpatParser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    # getter for: Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$1300(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0
.end method

.method public getParserPointer()J
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    # getter for: Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$1000(Lorg/apache/harmony/xml/ExpatParser;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    # getter for: Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$1100(Lorg/apache/harmony/xml/ExpatParser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    # getter for: Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$1200(Lorg/apache/harmony/xml/ExpatParser;)J

    move-result-wide v0

    return-wide v0
.end method
