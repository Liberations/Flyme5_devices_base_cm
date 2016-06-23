.class public final Lorg/apache/harmony/security/pkcs7/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final DATA:[I

.field public static final DIGESTED_DATA:[I

.field public static final ENCRYPTED_DATA:[I

.field public static final ENVELOPED_DATA:[I

.field public static final SIGNED_AND_ENVELOPED_DATA:[I

.field public static final SIGNED_DATA:[I


# instance fields
.field private final content:Ljava/lang/Object;

.field private encoding:[B

.field private final oid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x7

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENVELOPED_DATA:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_AND_ENVELOPED_DATA:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DIGESTED_DATA:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENCRYPTED_DATA:[I

    .line 106
    new-instance v0, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    .line 48
    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    .line 49
    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    .line 50
    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    .line 51
    :array_5
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data
.end method

.method private constructor <init>([ILjava/lang/Object;[B)V
    .locals 0
    .param p1, "oid"    # [I
    .param p2, "content"    # Ljava/lang/Object;
    .param p3, "encoding"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    .line 59
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    .line 61
    return-void
.end method

.method synthetic constructor <init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lorg/apache/harmony/security/pkcs7/ContentInfo$1;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentType()[I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    return-object v0
.end method

.method public getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    sget-object v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v4, "res":Ljava/lang/StringBuilder;
    const-string v5, "==== ContentInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v5, "\n== ContentType (OID): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 93
    .local v1, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    const-string v5, "\n== Content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v5, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 98
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v5, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    const-string v5, "\n== Content End"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, "\n==== ContentInfo End\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
