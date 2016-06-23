.class public Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentFragmentImpl.java"

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "#document-fragment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xb

    return v0
.end method
