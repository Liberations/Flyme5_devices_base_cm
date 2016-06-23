.class public final Ljava/lang/IntegralToString;
.super Ljava/lang/Object;
.source "IntegralToString.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final DIGITS:[C

.field private static final MOD_10_TABLE:[C

.field private static final ONES:[C

.field private static final SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

.field private static final TENS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x24

    const/16 v1, 0x64

    .line 46
    new-instance v0, Ljava/lang/IntegralToString$1;

    invoke-direct {v0}, Ljava/lang/IntegralToString$1;-><init>()V

    sput-object v0, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    .line 65
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/IntegralToString;->TENS:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/lang/IntegralToString;->ONES:[C

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    .line 104
    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    .line 111
    new-array v0, v2, [C

    fill-array-data v0, :array_4

    sput-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    return-void

    .line 65
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 79
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 97
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x7s
        0x8s
        0x8s
        0x9s
        0x0s
    .end array-data

    .line 104
    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 111
    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    .prologue
    .line 458
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    .line 459
    .local v0, "digits":[C
    :goto_0
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    return-object p0

    .line 458
    .end local v0    # "digits":[C
    :cond_0
    sget-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static appendInt(Ljava/lang/AbstractStringBuilder;I)V
    .locals 0
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "i"    # I

    .prologue
    .line 173
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    .line 174
    return-void
.end method

.method public static appendLong(Ljava/lang/AbstractStringBuilder;J)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "l"    # J

    .prologue
    .line 307
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    .line 308
    return-void
.end method

.method public static byteToHexString(BZ)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 465
    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    .line 466
    .local v1, "digits":[C
    :goto_0
    new-array v0, v5, [C

    .line 467
    .local v0, "buf":[C
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v4

    .line 468
    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 469
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v2

    .line 465
    .end local v0    # "buf":[C
    .end local v1    # "digits":[C
    :cond_0
    sget-object v1, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "upperCase"    # Z

    .prologue
    .line 473
    if-eqz p1, :cond_0

    sget-object v5, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    .line 474
    .local v5, "digits":[C
    :goto_0
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v2, v8, [C

    .line 475
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 476
    .local v3, "c":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v4, v3

    .end local v3    # "c":I
    .local v4, "c":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-byte v1, v0, v6

    .line 477
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "c":I
    .restart local v3    # "c":I
    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v4

    .line 478
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "c":I
    .restart local v4    # "c":I
    and-int/lit8 v8, v1, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v3

    .line 476
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 473
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "buf":[C
    .end local v4    # "c":I
    .end local v5    # "digits":[C
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0

    .line 480
    .restart local v0    # "arr$":[B
    .restart local v2    # "buf":[C
    .restart local v4    # "c":I
    .restart local v5    # "digits":[C
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method

.method private static convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "i"    # I

    .prologue
    const/16 v8, 0xa

    const/16 v13, 0x2d

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "negative":Z
    const/4 v5, 0x0

    .line 183
    .local v5, "quickResult":Ljava/lang/String;
    if-gez p1, :cond_4

    .line 184
    const/4 v3, 0x1

    .line 185
    neg-int p1, p1

    .line 186
    const/16 v7, 0x64

    if-ge p1, v7, :cond_0

    .line 187
    if-gez p1, :cond_2

    .line 189
    const-string v5, "-2147483648"

    .line 207
    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    .line 208
    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0, v5}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 210
    const/4 v5, 0x0

    .line 246
    .end local v5    # "quickResult":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 191
    .restart local v5    # "quickResult":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    .line 192
    if-nez v5, :cond_0

    .line 193
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_3

    new-array v8, v12, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v7, p1

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    new-array v8, v8, [C

    aput-char v13, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v12

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 199
    :cond_4
    const/16 v7, 0x64

    if-ge p1, v7, :cond_0

    .line 200
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    aget-object v5, v7, p1

    .line 201
    if-nez v5, :cond_0

    .line 202
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    if-ge p1, v8, :cond_5

    new-array v8, v11, [C

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v7, p1

    goto :goto_0

    :cond_5
    new-array v8, v12, [C

    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v10

    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v9, v9, p1

    aput-char v9, v8, v11

    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 215
    :cond_6
    const/16 v1, 0xb

    .line 216
    .local v1, "bufLen":I
    if-eqz p0, :cond_7

    sget-object v7, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    .line 217
    .local v0, "buf":[C
    :goto_4
    move v2, v1

    .line 220
    .local v2, "cursor":I
    :goto_5
    const/high16 v7, 0x10000

    if-lt p1, v7, :cond_8

    .line 222
    const-wide/32 v8, 0x51eb851f

    int-to-long v10, p1

    mul-long/2addr v8, v10

    const/16 v7, 0x25

    ushr-long/2addr v8, v7

    long-to-int v4, v8

    .line 223
    .local v4, "q":I
    mul-int/lit8 v7, v4, 0x64

    sub-int v6, p1, v7

    .line 224
    .local v6, "r":I
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 225
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 226
    move p1, v4

    .line 227
    goto :goto_5

    .line 216
    .end local v0    # "buf":[C
    .end local v2    # "cursor":I
    .end local v4    # "q":I
    .end local v6    # "r":I
    :cond_7
    new-array v0, v1, [C

    goto :goto_4

    .line 230
    .restart local v0    # "buf":[C
    .restart local v2    # "cursor":I
    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 232
    const v7, 0xcccd

    mul-int/2addr v7, p1

    ushr-int/lit8 v4, v7, 0x13

    .line 233
    .restart local v4    # "q":I
    mul-int/lit8 v7, v4, 0xa

    sub-int v6, p1, v7

    .line 234
    .restart local v6    # "r":I
    add-int/lit8 v2, v2, -0x1

    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v7, v7, v6

    aput-char v7, v0, v2

    .line 235
    move p1, v4

    .line 236
    goto :goto_6

    .line 238
    .end local v4    # "q":I
    .end local v6    # "r":I
    :cond_9
    if-eqz v3, :cond_a

    .line 239
    add-int/lit8 v2, v2, -0x1

    aput-char v13, v0, v2

    .line 242
    :cond_a
    if-eqz p0, :cond_b

    .line 243
    sub-int v7, v1, v2

    invoke-virtual {p0, v0, v2, v7}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    .line 244
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 246
    :cond_b
    new-instance v5, Ljava/lang/String;

    .end local v5    # "quickResult":Ljava/lang/String;
    sub-int v7, v1, v2

    invoke-direct {v5, v2, v7, v0}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_1
.end method

.method private static convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;
    .locals 19
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "n"    # J

    .prologue
    .line 315
    move-wide/from16 v0, p1

    long-to-int v6, v0

    .line 316
    .local v6, "i":I
    int-to-long v14, v6

    cmp-long v13, v14, p1

    if-nez v13, :cond_1

    .line 317
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object v11

    .line 389
    :cond_0
    :goto_0
    return-object v11

    .line 320
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_2

    const/4 v10, 0x1

    .line 321
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 322
    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    .line 323
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_3

    .line 325
    const-string v11, "-9223372036854775808"

    .line 326
    .local v11, "quickResult":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 328
    const/4 v11, 0x0

    goto :goto_0

    .line 320
    .end local v10    # "negative":Z
    .end local v11    # "quickResult":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 334
    .restart local v10    # "negative":Z
    :cond_3
    const/16 v3, 0x14

    .line 335
    .local v3, "bufLen":I
    if-eqz p0, :cond_4

    sget-object v13, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [C

    move-object v2, v13

    .line 337
    .local v2, "buf":[C
    :goto_2
    const-wide/32 v14, 0x3b9aca00

    rem-long v14, p1, v14

    long-to-int v8, v14

    .line 338
    .local v8, "low":I
    invoke-static {v2, v3, v8}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    .line 341
    .local v4, "cursor":I
    :goto_3
    const/16 v13, 0xb

    if-eq v4, v13, :cond_5

    .line 342
    add-int/lit8 v4, v4, -0x1

    const/16 v13, 0x30

    aput-char v13, v2, v4

    goto :goto_3

    .line 335
    .end local v2    # "buf":[C
    .end local v4    # "cursor":I
    .end local v8    # "low":I
    :cond_4
    new-array v2, v3, [C

    goto :goto_2

    .line 350
    .restart local v2    # "buf":[C
    .restart local v4    # "cursor":I
    .restart local v8    # "low":I
    :cond_5
    int-to-long v14, v8

    sub-long v14, p1, v14

    const/16 v13, 0x9

    ushr-long/2addr v14, v13

    const-wide v16, -0x71b831bdc5d16393L    # -7.140265903029408E-240

    mul-long p1, v14, v16

    .line 358
    const-wide v14, -0x100000000L

    and-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_7

    .line 359
    move-wide/from16 v0, p1

    long-to-int v13, v0

    invoke-static {v2, v4, v13}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    .line 382
    :goto_4
    if-eqz v10, :cond_6

    .line 383
    add-int/lit8 v4, v4, -0x1

    const/16 v13, 0x2d

    aput-char v13, v2, v4

    .line 385
    :cond_6
    if-eqz p0, :cond_9

    .line 386
    sub-int v13, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v13}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    .line 387
    const/4 v11, 0x0

    goto :goto_0

    .line 364
    :cond_7
    move-wide/from16 v0, p1

    long-to-int v7, v0

    .line 365
    .local v7, "lo32":I
    const/16 v13, 0x20

    ushr-long v14, p1, v13

    long-to-int v5, v14

    .line 368
    .local v5, "hi32":I
    sget-object v13, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    const v14, 0x19999999

    mul-int/2addr v14, v7

    ushr-int/lit8 v15, v7, 0x1

    add-int/2addr v14, v15

    ushr-int/lit8 v15, v7, 0x3

    add-int/2addr v14, v15

    ushr-int/lit8 v14, v14, 0x1c

    aget-char v9, v13, v14

    .line 371
    .local v9, "midDigit":I
    shl-int/lit8 v13, v5, 0x2

    sub-int/2addr v9, v13

    .line 372
    if-gez v9, :cond_8

    .line 373
    add-int/lit8 v9, v9, 0xa

    .line 375
    :cond_8
    add-int/lit8 v4, v4, -0x1

    sget-object v13, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v13, v13, v9

    aput-char v13, v2, v4

    .line 378
    int-to-long v14, v9

    sub-long v14, p1, v14

    const/4 v13, 0x1

    ushr-long/2addr v14, v13

    long-to-int v13, v14

    const v14, -0x33333333

    mul-int v12, v13, v14

    .line 379
    .local v12, "rest":I
    invoke-static {v2, v4, v12}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    move-result v4

    goto :goto_4

    .line 389
    .end local v5    # "hi32":I
    .end local v7    # "lo32":I
    .end local v9    # "midDigit":I
    .end local v12    # "rest":I
    :cond_9
    new-instance v11, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v11, v4, v13, v2}, Ljava/lang/String;-><init>(II[C)V

    goto/16 :goto_0
.end method

.method private static intIntoCharArray([CII)I
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "cursor"    # I
    .param p2, "n"    # I

    .prologue
    .line 402
    :goto_0
    const/high16 v2, -0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 410
    const-wide/32 v2, 0x51eb851f

    ushr-int/lit8 v4, p2, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const/16 v4, 0x23

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    .line 411
    .local v0, "q":I
    mul-int/lit8 v2, v0, 0x64

    sub-int v1, p2, v2

    .line 412
    .local v1, "r":I
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->ONES:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 413
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->TENS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 414
    move p2, v0

    .line 415
    goto :goto_0

    .line 418
    .end local v0    # "q":I
    .end local v1    # "r":I
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 420
    const v2, 0xcccd

    mul-int/2addr v2, p2

    ushr-int/lit8 v0, v2, 0x13

    .line 421
    .restart local v0    # "q":I
    mul-int/lit8 v2, v0, 0xa

    sub-int v1, p2, v2

    .line 422
    .restart local v1    # "r":I
    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/lang/IntegralToString;->DIGITS:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p1

    .line 423
    move p2, v0

    .line 424
    goto :goto_1

    .line 425
    .end local v0    # "q":I
    .end local v1    # "r":I
    :cond_1
    return p1
.end method

.method public static intToBinaryString(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    .prologue
    .line 429
    const/16 v1, 0x20

    .line 430
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 431
    .local v0, "buf":[C
    move v2, v1

    .line 434
    .local v2, "cursor":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x1

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 435
    ushr-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    .line 437
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToHexString(IZI)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "upperCase"    # Z
    .param p2, "minWidth"    # I

    .prologue
    .line 484
    const/16 v1, 0x8

    .line 485
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 486
    .local v0, "buf":[C
    move v2, v1

    .line 488
    .local v2, "cursor":I
    if-eqz p1, :cond_1

    sget-object v3, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    .line 490
    .local v3, "digits":[C
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v3, v4

    aput-char v4, v0, v2

    .line 491
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    sub-int v4, v1, v2

    if-lt v4, p2, :cond_0

    .line 493
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v4

    .line 488
    .end local v3    # "digits":[C
    :cond_1
    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    goto :goto_0
.end method

.method public static intToOctalString(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    .prologue
    .line 514
    const/16 v1, 0xb

    .line 515
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 516
    .local v0, "buf":[C
    move v2, v1

    .line 519
    .local v2, "cursor":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    and-int/lit8 v4, p0, 0x7

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 520
    ushr-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    .line 522
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3
.end method

.method public static intToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .prologue
    .line 125
    const/4 v5, 0x2

    if-lt p1, v5, :cond_0

    const/16 v5, 0x24

    if-le p1, v5, :cond_1

    .line 126
    :cond_0
    const/16 p1, 0xa

    .line 128
    :cond_1
    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    .line 129
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    :goto_0
    return-object v5

    .line 138
    :cond_2
    const/4 v3, 0x0

    .line 139
    .local v3, "negative":Z
    if-gez p0, :cond_5

    .line 140
    const/4 v3, 0x1

    .line 145
    :goto_1
    const/16 v5, 0x8

    if-ge p1, v5, :cond_6

    const/16 v1, 0x21

    .line 146
    .local v1, "bufLen":I
    :goto_2
    new-array v0, v1, [C

    .line 147
    .local v0, "buf":[C
    move v2, v1

    .line 150
    .local v2, "cursor":I
    :cond_3
    div-int v4, p0, p1

    .line 151
    .local v4, "q":I
    add-int/lit8 v2, v2, -0x1

    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    mul-int v6, p1, v4

    sub-int/2addr v6, p0

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 152
    move p0, v4

    .line 153
    if-nez p0, :cond_3

    .line 155
    if-eqz v3, :cond_4

    .line 156
    add-int/lit8 v2, v2, -0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v2

    .line 159
    :cond_4
    new-instance v5, Ljava/lang/String;

    sub-int v6, v1, v2

    invoke-direct {v5, v2, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0

    .line 142
    .end local v0    # "buf":[C
    .end local v1    # "bufLen":I
    .end local v2    # "cursor":I
    .end local v4    # "q":I
    :cond_5
    neg-int p0, p0

    goto :goto_1

    .line 145
    :cond_6
    const/16 v1, 0xc

    goto :goto_2
.end method

.method public static longToBinaryString(J)Ljava/lang/String;
    .locals 8
    .param p0, "v"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 441
    long-to-int v3, p0

    .line 442
    .local v3, "i":I
    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 443
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 454
    :goto_0
    return-object v4

    .line 446
    :cond_0
    const/16 v1, 0x40

    .line 447
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 448
    .local v0, "buf":[C
    move v2, v1

    .line 451
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 452
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_1

    .line 454
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToHexString(J)Ljava/lang/String;
    .locals 10
    .param p0, "v"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 497
    long-to-int v3, p0

    .line 498
    .local v3, "i":I
    cmp-long v4, p0, v8

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 499
    invoke-static {v3, v6, v6}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v4

    .line 510
    :goto_0
    return-object v4

    .line 502
    :cond_0
    const/16 v1, 0x10

    .line 503
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 504
    .local v0, "buf":[C
    move v2, v1

    .line 507
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 508
    const/4 v4, 0x4

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v8

    if-nez v4, :cond_1

    .line 510
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToOctalString(J)Ljava/lang/String;
    .locals 8
    .param p0, "v"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 526
    long-to-int v3, p0

    .line 527
    .local v3, "i":I
    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    int-to-long v4, v3

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 528
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v4

    .line 538
    :goto_0
    return-object v4

    .line 530
    :cond_0
    const/16 v1, 0x16

    .line 531
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 532
    .local v0, "buf":[C
    move v2, v1

    .line 535
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0x7

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 536
    const/4 v4, 0x3

    ushr-long/2addr p0, v4

    cmp-long v4, p0, v6

    if-nez v4, :cond_1

    .line 538
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static longToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static longToString(JI)Ljava/lang/String;
    .locals 12
    .param p0, "v"    # J
    .param p2, "radix"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 254
    long-to-int v3, p0

    .line 255
    .local v3, "i":I
    int-to-long v8, v3

    cmp-long v5, v8, p0

    if-nez v5, :cond_0

    .line 256
    invoke-static {v3, p2}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v5

    .line 293
    :goto_0
    return-object v5

    .line 259
    :cond_0
    const/4 v5, 0x2

    if-lt p2, v5, :cond_1

    const/16 v5, 0x24

    if-le p2, v5, :cond_2

    .line 260
    :cond_1
    const/16 p2, 0xa

    .line 262
    :cond_2
    const/16 v5, 0xa

    if-ne p2, v5, :cond_3

    .line 263
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 272
    :cond_3
    const/4 v4, 0x0

    .line 273
    .local v4, "negative":Z
    cmp-long v5, p0, v10

    if-gez v5, :cond_6

    .line 274
    const/4 v4, 0x1

    .line 279
    :goto_1
    const/16 v5, 0x8

    if-ge p2, v5, :cond_7

    const/16 v1, 0x41

    .line 280
    .local v1, "bufLen":I
    :goto_2
    new-array v0, v1, [C

    .line 281
    .local v0, "buf":[C
    move v2, v1

    .line 284
    .local v2, "cursor":I
    :cond_4
    int-to-long v8, p2

    div-long v6, p0, v8

    .line 285
    .local v6, "q":J
    add-int/lit8 v2, v2, -0x1

    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    int-to-long v8, p2

    mul-long/2addr v8, v6

    sub-long/2addr v8, p0

    long-to-int v8, v8

    aget-char v5, v5, v8

    aput-char v5, v0, v2

    .line 286
    move-wide p0, v6

    .line 287
    cmp-long v5, p0, v10

    if-nez v5, :cond_4

    .line 289
    if-eqz v4, :cond_5

    .line 290
    add-int/lit8 v2, v2, -0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v2

    .line 293
    :cond_5
    new-instance v5, Ljava/lang/String;

    sub-int v8, v1, v2

    invoke-direct {v5, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0

    .line 276
    .end local v0    # "buf":[C
    .end local v1    # "bufLen":I
    .end local v2    # "cursor":I
    .end local v6    # "q":J
    :cond_6
    neg-long p0, p0

    goto :goto_1

    .line 279
    :cond_7
    const/16 v1, 0x17

    goto :goto_2
.end method

.method private static varargs stringOf([C)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [C

    .prologue
    .line 548
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>(II[C)V

    return-object v0
.end method
