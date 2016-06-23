.class final Lorg/apache/harmony/security/x509/GeneralSubtree$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "GeneralSubtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralSubtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 3
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 104
    new-array v0, v2, [B

    aput-byte v1, v0, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setDefault(Ljava/lang/Object;I)V

    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setOptional(I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    const/4 v3, 0x2

    .line 109
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 110
    .local v1, "values":[Ljava/lang/Object;
    const/4 v0, -0x1

    .line 111
    .local v0, "maximum":I
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 112
    aget-object v2, v1, v3

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v0

    .line 114
    :cond_0
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, v2, v4, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;-><init>(Lorg/apache/harmony/security/x509/GeneralName;II)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 121
    .local v0, "gs":Lorg/apache/harmony/security/x509/GeneralSubtree;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$000(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 122
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$100(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 123
    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$200(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 124
    const/4 v1, 0x2

    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$200(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 126
    :cond_0
    return-void
.end method
