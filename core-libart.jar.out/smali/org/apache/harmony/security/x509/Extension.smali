.class public final Lorg/apache/harmony/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/security/cert/Extension;


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field static final AUTHORITY_INFO_ACCESS:[I

.field static final AUTH_KEY_ID:[I

.field static final BASIC_CONSTRAINTS:[I

.field static final CERTIFICATE_ISSUER:[I

.field static final CERTIFICATE_POLICIES:[I

.field public static final CRITICAL:Z = true

.field static final CRL_DISTR_POINTS:[I

.field static final CRL_NUMBER:[I

.field static final EXTENDED_KEY_USAGE:[I

.field static final FRESHEST_CRL:[I

.field static final INHIBIT_ANY_POLICY:[I

.field static final INVALIDITY_DATE:[I

.field static final ISSUER_ALTERNATIVE_NAME:[I

.field static final ISSUING_DISTR_POINT:[I

.field static final ISSUING_DISTR_POINTS:[I

.field static final KEY_USAGE:[I

.field static final NAME_CONSTRAINTS:[I

.field public static final NON_CRITICAL:Z

.field static final POLICY_CONSTRAINTS:[I

.field static final POLICY_MAPPINGS:[I

.field static final PRIVATE_KEY_USAGE_PERIOD:[I

.field static final REASON_CODE:[I

.field static final SUBJECT_ALT_NAME:[I

.field static final SUBJECT_INFO_ACCESS:[I

.field static final SUBJ_DIRECTORY_ATTRS:[I

.field static final SUBJ_KEY_ID:[I


# instance fields
.field private final critical:Z

.field private encoding:[B

.field private final extnID:[I

.field private extnID_str:Ljava/lang/String;

.field private final extnValue:[B

.field protected extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

.field private rawExtnValue:[B

.field private volatile valueDecoded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x4

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->FRESHEST_CRL:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    .line 76
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    .line 78
    new-array v0, v2, [I

    fill-array-data v0, :array_11

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINT:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_13

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_15

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    .line 363
    new-instance v0, Lorg/apache/harmony/security/x509/Extension$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/harmony/security/x509/Extension$1;

    invoke-direct {v3}, Lorg/apache/harmony/security/x509/Extension$1;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 60
    :array_0
    .array-data 4
        0x2
        0x5
        0x1d
        0x9
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x2
        0x5
        0x1d
        0xe
    .end array-data

    .line 62
    :array_2
    .array-data 4
        0x2
        0x5
        0x1d
        0xf
    .end array-data

    .line 63
    :array_3
    .array-data 4
        0x2
        0x5
        0x1d
        0x10
    .end array-data

    .line 64
    :array_4
    .array-data 4
        0x2
        0x5
        0x1d
        0x11
    .end array-data

    .line 65
    :array_5
    .array-data 4
        0x2
        0x5
        0x1d
        0x12
    .end array-data

    .line 66
    :array_6
    .array-data 4
        0x2
        0x5
        0x1d
        0x13
    .end array-data

    .line 67
    :array_7
    .array-data 4
        0x2
        0x5
        0x1d
        0x1e
    .end array-data

    .line 68
    :array_8
    .array-data 4
        0x2
        0x5
        0x1d
        0x1f
    .end array-data

    .line 69
    :array_9
    .array-data 4
        0x2
        0x5
        0x1d
        0x20
    .end array-data

    .line 70
    :array_a
    .array-data 4
        0x2
        0x5
        0x1d
        0x21
    .end array-data

    .line 71
    :array_b
    .array-data 4
        0x2
        0x5
        0x1d
        0x23
    .end array-data

    .line 72
    :array_c
    .array-data 4
        0x2
        0x5
        0x1d
        0x24
    .end array-data

    .line 73
    :array_d
    .array-data 4
        0x2
        0x5
        0x1d
        0x25
    .end array-data

    .line 74
    :array_e
    .array-data 4
        0x2
        0x5
        0x1d
        0x2e
    .end array-data

    .line 75
    :array_f
    .array-data 4
        0x2
        0x5
        0x1d
        0x36
    .end array-data

    .line 76
    :array_10
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    .line 78
    :array_11
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    .line 81
    :array_12
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data

    .line 83
    :array_13
    .array-data 4
        0x2
        0x5
        0x1d
        0x14
    .end array-data

    .line 84
    :array_14
    .array-data 4
        0x2
        0x5
        0x1d
        0x1d
    .end array-data

    .line 85
    :array_15
    .array-data 4
        0x2
        0x5
        0x1d
        0x18
    .end array-data

    .line 86
    :array_16
    .array-data 4
        0x2
        0x5
        0x1d
        0x15
    .end array-data

    .line 87
    :array_17
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValueObject"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 107
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 109
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 110
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 112
    invoke-virtual {p3}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 118
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 119
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "extnValue"    # [B

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    .line 130
    return-void
.end method

.method public constructor <init>([IZ[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 123
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 124
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 125
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 126
    return-void
.end method

.method private constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B
    .param p4, "rawExtnValue"    # [B
    .param p5, "encoding"    # [B
    .param p6, "decodedExtValue"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 140
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 141
    iput-object p5, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 142
    iput-object p6, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 143
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Z
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # [B
    .param p6, "x5"    # Lorg/apache/harmony/security/x509/ExtensionValue;
    .param p7, "x6"    # Lorg/apache/harmony/security/x509/Extension$1;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "extnValue"    # [B

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 134
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/Extension;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/Extension;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/Extension;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/Extension;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method private decodeExtensionValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 295
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    new-instance v0, Lorg/apache/harmony/security/x509/KeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 259
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 262
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 264
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->decode([B)Lorg/apache/harmony/security/x509/NameConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 266
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_1

    .line 268
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 270
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 272
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 273
    new-instance v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 274
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 275
    new-instance v0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 276
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 277
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 278
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 280
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 282
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 283
    new-instance v0, Lorg/apache/harmony/security/x509/InvalidityDate;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 284
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 286
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 287
    new-instance v0, Lorg/apache/harmony/security/x509/CRLNumber;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLNumber;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 288
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 289
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 290
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 291
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1

    .line 292
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_1
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    .line 299
    const-string v0, "OID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Critical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 302
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 357
    :goto_1
    return-void

    .line 311
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "Subject Directory Attributes Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unparsed Extension Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 314
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    const-string v0, "Subject Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    const-string v0, "Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    const-string v0, "Private Key Usage Period Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 320
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    const-string v0, "Subject Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 322
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    const-string v0, "Issuer Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 324
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 325
    const-string v0, "Basic Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 326
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    const-string v0, "Name Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 328
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 329
    const-string v0, "CRL Distribution Points Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 330
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 331
    const-string v0, "Certificate Policies Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 332
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    const-string v0, "Policy Mappings Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 334
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 335
    const-string v0, "Authority Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 336
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 337
    const-string v0, "Policy Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 338
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    const-string v0, "Extended Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 340
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 341
    const-string v0, "Inhibit Any-Policy Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 342
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 343
    const-string v0, "Authority Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 344
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 345
    const-string v0, "Subject Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 346
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 347
    const-string v0, "Invalidity Date Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 348
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 349
    const-string v0, "CRL Number Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 350
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 351
    const-string v0, "Reason Code Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 353
    :cond_15
    const-string v0, "Unknown Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 303
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 197
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ext"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extension;

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 203
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 204
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    iget-boolean v3, v0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    .line 244
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/KeyUsage;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    check-cast v0, Lorg/apache/harmony/security/x509/KeyUsage;

    .line 230
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getRawExtnValue()[B
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method
