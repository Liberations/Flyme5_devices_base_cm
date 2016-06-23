.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final ASCII:[C

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 90
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ASCII:[C

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/String;->ASCII:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 92
    sget-object v1, Ljava/lang/String;->ASCII:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 109
    iput v1, p0, Ljava/lang/String;->offset:I

    .line 110
    iput v1, p0, Ljava/lang/String;->count:I

    .line 111
    return-void
.end method

.method constructor <init>(II[C)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "charCount"    # I
    .param p3, "chars"    # [C

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p3, p0, Ljava/lang/String;->value:[C

    .line 411
    iput p1, p0, Ljava/lang/String;->offset:I

    .line 412
    iput p2, p0, Ljava/lang/String;->count:I

    .line 413
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "toCopy"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iget-object v0, p1, Ljava/lang/String;->value:[C

    array-length v0, v0

    iget v1, p1, Ljava/lang/String;->count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Ljava/lang/String;->value:[C

    :goto_0
    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 425
    iget-object v0, p0, Ljava/lang/String;->value:[C

    array-length v0, v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 426
    return-void

    .line 421
    :cond_0
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget v2, p1, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "stringBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 434
    monitor-enter p1

    .line 435
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 436
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 437
    monitor-exit p1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringBuilder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 484
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 485
    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 486
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 120
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "high"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 137
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 149
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 150
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "high"    # I
    .param p3, "offset"    # I
    .param p4, "byteCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    or-int v2, p3, p4

    if-ltz v2, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p4, v2, :cond_1

    .line 166
    :cond_0
    array-length v2, p1

    invoke-direct {p0, v2, p3, p4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 168
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    .line 169
    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 170
    iput p4, p0, Ljava/lang/String;->count:I

    .line 171
    shl-int/lit8 p2, p2, 0x8

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_2

    .line 173
    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "offset":I
    .local v1, "offset":I
    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0

    .line 175
    :cond_2
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p4}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 192
    return-void
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 29
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 224
    or-int v24, p2, p3

    if-ltz v24, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, p2

    move/from16 v0, p3

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 225
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v24

    throw v24

    .line 230
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "canonicalCharsetName":Ljava/lang/String;
    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 232
    move-object/from16 v9, p1

    .line 233
    .local v9, "d":[B
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 235
    .local v20, "v":[C
    move/from16 v12, p2

    .line 236
    .local v12, "idx":I
    add-int v14, p2, p3

    .line 237
    .local v14, "last":I
    const/16 v16, 0x0

    .local v16, "s":I
    move/from16 v17, v16

    .end local v16    # "s":I
    .local v17, "s":I
    move v13, v12

    .line 239
    .end local v12    # "idx":I
    .local v13, "idx":I
    :goto_0
    if-ge v13, v14, :cond_f

    .line 240
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v6, v9, v13

    .line 241
    .local v6, "b0":B
    and-int/lit16 v0, v6, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 244
    and-int/lit16 v0, v6, 0xff

    move/from16 v21, v0

    .line 245
    .local v21, "val":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v17

    .end local v21    # "val":I
    :goto_1
    move/from16 v17, v16

    .end local v16    # "s":I
    .restart local v17    # "s":I
    move v13, v12

    .line 322
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_0

    .line 246
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    :cond_2
    and-int/lit16 v0, v6, 0xe0

    move/from16 v24, v0

    const/16 v25, 0xc0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xf0

    move/from16 v24, v0

    const/16 v25, 0xe0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xf8

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xfc

    move/from16 v24, v0

    const/16 v25, 0xf8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xfe

    move/from16 v24, v0

    const/16 v25, 0xfc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 248
    :cond_3
    const/16 v19, 0x1

    .line 249
    .local v19, "utfCount":I
    and-int/lit16 v0, v6, 0xf0

    move/from16 v24, v0

    const/16 v25, 0xe0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v19, 0x2

    .line 261
    :cond_4
    :goto_2
    add-int v24, v12, v19

    move/from16 v0, v24

    if-le v0, v14, :cond_8

    .line 262
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    const v24, 0xfffd

    aput-char v24, v20, v17

    move/from16 v17, v16

    .end local v16    # "s":I
    .restart local v17    # "s":I
    move v13, v12

    .line 263
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_0

    .line 250
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    :cond_5
    and-int/lit16 v0, v6, 0xf8

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const/16 v19, 0x3

    goto :goto_2

    .line 251
    :cond_6
    and-int/lit16 v0, v6, 0xfc

    move/from16 v24, v0

    const/16 v25, 0xf8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v19, 0x4

    goto :goto_2

    .line 252
    :cond_7
    and-int/lit16 v0, v6, 0xfe

    move/from16 v24, v0

    const/16 v25, 0xfc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v19, 0x5

    goto :goto_2

    .line 267
    :cond_8
    const/16 v24, 0x1f

    add-int/lit8 v25, v19, -0x1

    shr-int v24, v24, v25

    and-int v21, v6, v24

    .line 268
    .restart local v21    # "val":I
    const/4 v11, 0x0

    .local v11, "i":I
    move v13, v12

    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_a

    .line 269
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v5, v9, v13

    .line 270
    .local v5, "b":B
    and-int/lit16 v0, v5, 0xc0

    move/from16 v24, v0

    const/16 v25, 0x80

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 271
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    const v24, 0xfffd

    aput-char v24, v20, v17

    .line 272
    add-int/lit8 v12, v12, -0x1

    move/from16 v17, v16

    .end local v16    # "s":I
    .restart local v17    # "s":I
    move v13, v12

    .line 273
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto/16 :goto_0

    .line 276
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    :cond_9
    shl-int/lit8 v21, v21, 0x6

    .line 277
    and-int/lit8 v24, v5, 0x3f

    or-int v21, v21, v24

    .line 268
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_3

    .line 295
    .end local v5    # "b":B
    :cond_a
    const/16 v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const v24, 0xd800

    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    const v24, 0xdfff

    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_b

    .line 296
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    const v24, 0xfffd

    aput-char v24, v20, v17

    move/from16 v17, v16

    .line 297
    .end local v16    # "s":I
    .restart local v17    # "s":I
    goto/16 :goto_0

    .line 301
    :cond_b
    const v24, 0x10ffff

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 302
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    const v24, 0xfffd

    aput-char v24, v20, v17

    move/from16 v17, v16

    .line 303
    .end local v16    # "s":I
    .restart local v17    # "s":I
    goto/16 :goto_0

    .line 307
    :cond_c
    const/high16 v24, 0x10000

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 308
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v20, v17

    :goto_4
    move v12, v13

    .line 318
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    goto/16 :goto_1

    .line 310
    .end local v12    # "idx":I
    .end local v16    # "s":I
    .restart local v13    # "idx":I
    .restart local v17    # "s":I
    :cond_d
    const v24, 0xffff

    and-int v23, v21, v24

    .line 311
    .local v23, "x":I
    shr-int/lit8 v24, v21, 0x10

    and-int/lit8 v18, v24, 0x1f

    .line 312
    .local v18, "u":I
    add-int/lit8 v24, v18, -0x1

    const v25, 0xffff

    and-int v22, v24, v25

    .line 313
    .local v22, "w":I
    const v24, 0xd800

    shl-int/lit8 v25, v22, 0x6

    or-int v24, v24, v25

    shr-int/lit8 v25, v23, 0xa

    or-int v10, v24, v25

    .line 314
    .local v10, "hi":I
    const v24, 0xdc00

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v25, v0

    or-int v15, v24, v25

    .line 315
    .local v15, "lo":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    int-to-char v0, v10

    move/from16 v24, v0

    aput-char v24, v20, v17

    .line 316
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "s":I
    .restart local v17    # "s":I
    int-to-char v0, v15

    move/from16 v24, v0

    aput-char v24, v20, v16

    move/from16 v16, v17

    .end local v17    # "s":I
    .restart local v16    # "s":I
    goto :goto_4

    .line 320
    .end local v10    # "hi":I
    .end local v11    # "i":I
    .end local v13    # "idx":I
    .end local v15    # "lo":I
    .end local v16    # "s":I
    .end local v18    # "u":I
    .end local v19    # "utfCount":I
    .end local v21    # "val":I
    .end local v22    # "w":I
    .end local v23    # "x":I
    .restart local v12    # "idx":I
    .restart local v17    # "s":I
    :cond_e
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "s":I
    .restart local v16    # "s":I
    const v24, 0xfffd

    aput-char v24, v20, v17

    goto/16 :goto_1

    .line 324
    .end local v6    # "b0":B
    .end local v12    # "idx":I
    .end local v16    # "s":I
    .restart local v13    # "idx":I
    .restart local v17    # "s":I
    :cond_f
    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    .line 326
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 327
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 328
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 362
    .end local v9    # "d":[B
    .end local v13    # "idx":I
    .end local v14    # "last":I
    .end local v17    # "s":I
    .end local v20    # "v":[C
    :goto_5
    return-void

    .line 331
    .restart local v9    # "d":[B
    .restart local v13    # "idx":I
    .restart local v14    # "last":I
    .restart local v17    # "s":I
    .restart local v20    # "v":[C
    :cond_10
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 332
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 333
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 334
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_5

    .line 336
    .end local v9    # "d":[B
    .end local v13    # "idx":I
    .end local v14    # "last":I
    .end local v17    # "s":I
    .end local v20    # "v":[C
    :cond_11
    const-string v24, "ISO-8859-1"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 337
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 338
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 339
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->isoLatin1BytesToChars([BII[C)V

    goto :goto_5

    .line 341
    :cond_12
    const-string v24, "US-ASCII"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 342
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 343
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 344
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->asciiBytesToChars([BII[C)V

    goto/16 :goto_5

    .line 347
    :cond_13
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 348
    .local v8, "cb":Ljava/nio/CharBuffer;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 349
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v24, v0

    if-lez v24, :cond_14

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 357
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v28, v0

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_5

    .line 359
    :cond_14
    sget-object v24, Llibcore/util/EmptyArray;->CHAR:[C

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_5
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 207
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 371
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 372
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "data"    # [C

    .prologue
    .line 382
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 383
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "charCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 397
    :cond_0
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 399
    :cond_1
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 400
    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 401
    iput p3, p0, Ljava/lang/String;->count:I

    .line 402
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 403
    return-void
.end method

.method public constructor <init>([III)V
    .locals 5
    .param p1, "codePoints"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "codePoints == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    .line 458
    :cond_1
    array-length v3, p1

    invoke-direct {p0, v3, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 460
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    .line 461
    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 462
    add-int v1, p2, p3

    .line 463
    .local v1, "end":I
    const/4 v0, 0x0

    .line 464
    .local v0, "c":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 465
    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_3
    iput v0, p0, Ljava/lang/String;->count:I

    .line 468
    return-void
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [C

    .prologue
    .line 604
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 619
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .param p1, "arrayLength"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private foldCase(C)C
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 516
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 517
    const/16 v0, 0x41

    if-gt v0, p1, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 518
    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    .line 522
    .end local p1    # "ch":C
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "ch":C
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1777
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1798
    if-nez p1, :cond_0

    .line 1799
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "format == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1801
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v0, v3, v2

    .line 1802
    .local v0, "bufferSize":I
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1803
    .local v1, "f":Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1801
    .end local v0    # "bufferSize":I
    .end local v1    # "f":Ljava/util/Formatter;
    :cond_1
    array-length v2, p2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .locals 14
    .param p0, "haystackString"    # Ljava/lang/String;
    .param p1, "needleString"    # Ljava/lang/String;
    .param p2, "cache"    # I
    .param p3, "md2"    # I
    .param p4, "lastChar"    # C
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    .line 1819
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1820
    .local v1, "haystack":[C
    iget v4, p0, Ljava/lang/String;->offset:I

    .line 1821
    .local v4, "haystackOffset":I
    iget v3, p0, Ljava/lang/String;->count:I

    .line 1822
    .local v3, "haystackLength":I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1823
    .local v7, "needle":[C
    iget v10, p1, Ljava/lang/String;->offset:I

    .line 1824
    .local v10, "needleOffset":I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 1825
    .local v8, "needleLength":I
    add-int/lit8 v9, v8, -0x1

    .line 1826
    .local v9, "needleLengthMinus1":I
    add-int v2, v4, v3

    .line 1827
    .local v2, "haystackEnd":I
    add-int v5, v4, v9

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 1828
    aget-char v12, v1, v5

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 1829
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v9, :cond_2

    .line 1830
    add-int v12, v6, v10

    aget-char v12, v7, v12

    add-int v13, v5, v6

    sub-int/2addr v13, v9

    aget-char v13, v1, v13

    if-eq v12, v13, :cond_1

    .line 1832
    const/4 v11, 0x1

    .line 1833
    .local v11, "skip":I
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_0

    .line 1834
    add-int/2addr v11, v6

    .line 1836
    :cond_0
    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v5, v12

    .line 1837
    goto :goto_0

    .line 1829
    .end local v11    # "skip":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1840
    :cond_2
    sub-int v12, v5, v9

    sub-int/2addr v12, v4

    .line 1848
    .end local v6    # "j":I
    :goto_2
    return v12

    .line 1843
    :cond_3
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_4

    .line 1844
    add-int/2addr v5, v9

    .line 1846
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1848
    :cond_5
    const/4 v12, -0x1

    goto :goto_2
.end method

.method private indexOfSupplementary(II)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "start"    # I

    .prologue
    .line 872
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    const/4 v2, -0x1

    .line 877
    :goto_0
    return v2

    .line 875
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 876
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 877
    .local v1, "needle":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "start"    # I

    .prologue
    .line 1030
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    const/4 v2, -0x1

    .line 1035
    :goto_0
    return v2

    .line 1033
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1034
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1035
    .local v1, "needle":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # C

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1459
    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ASCII:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .line 1464
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iput p0, v0, Ljava/lang/String;->hashCode:I

    .line 1465
    return-object v0

    .line 1462
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 1472
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 1479
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1486
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 1493
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 1506
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 1519
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [C

    .prologue
    .line 1437
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buffer"    # [C
    .param p4, "index"    # I

    .prologue
    .line 825
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 826
    return-void
.end method

.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 493
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 496
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public codePointAt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1682
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    .line 1683
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1685
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1696
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_1

    .line 1697
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1699
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1717
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 1718
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1720
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 12
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 560
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, "o1":I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 561
    .local v5, "o2":I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v9, v11, :cond_0

    iget v9, p0, Ljava/lang/String;->count:I

    :goto_0
    add-int v2, v10, v9

    .line 563
    .local v2, "end":I
    iget-object v8, p1, Ljava/lang/String;->value:[C

    .local v8, "target":[C
    move v6, v5

    .end local v5    # "o2":I
    .local v6, "o2":I
    move v4, v3

    .line 564
    .end local v3    # "o1":I
    .local v4, "o1":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 565
    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "o1":I
    .restart local v3    # "o1":I
    aget-char v0, v9, v4

    .local v0, "c1":C
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "o2":I
    .restart local v5    # "o2":I
    aget-char v1, v8, v6

    .local v1, "c2":C
    if-ne v0, v1, :cond_1

    move v6, v5

    .end local v5    # "o2":I
    .restart local v6    # "o2":I
    move v4, v3

    .line 566
    .end local v3    # "o1":I
    .restart local v4    # "o1":I
    goto :goto_1

    .line 561
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "end":I
    .end local v4    # "o1":I
    .end local v6    # "o2":I
    .end local v8    # "target":[C
    .restart local v3    # "o1":I
    .restart local v5    # "o2":I
    :cond_0
    iget v9, p1, Ljava/lang/String;->count:I

    goto :goto_0

    .line 568
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "end":I
    .restart local v8    # "target":[C
    :cond_1
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v0

    .line 569
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v1

    .line 570
    sub-int v7, v0, v1

    .local v7, "result":I
    if-eqz v7, :cond_3

    .line 574
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v7    # "result":I
    :goto_2
    return v7

    .end local v3    # "o1":I
    .end local v5    # "o2":I
    .restart local v4    # "o1":I
    .restart local v6    # "o2":I
    :cond_2
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int v7, v9, v10

    move v5, v6

    .end local v6    # "o2":I
    .restart local v5    # "o2":I
    move v3, v4

    .end local v4    # "o1":I
    .restart local v3    # "o1":I
    goto :goto_2

    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v7    # "result":I
    :cond_3
    move v6, v5

    .end local v5    # "o2":I
    .restart local v6    # "o2":I
    move v4, v3

    .end local v3    # "o1":I
    .restart local v4    # "o1":I
    goto :goto_1
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 586
    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    .line 587
    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 588
    .local v0, "buffer":[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 589
    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 590
    new-instance p1, Ljava/lang/String;

    .end local p1    # "string":Ljava/lang/String;
    array-length v1, v0

    invoke-direct {p1, v5, v1, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 592
    .end local v0    # "buffer":[C
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    if-eqz v1, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1729
    if-nez p1, :cond_0

    .line 1730
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1732
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1547
    if-nez p1, :cond_0

    .line 1548
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cs == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1551
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1553
    .local v0, "len":I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v0, v2, :cond_1

    .line 1561
    :goto_0
    return v1

    .line 1557
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Ljava/lang/String;->count:I

    if-nez v2, :cond_2

    .line 1558
    const/4 v1, 0x1

    goto :goto_0

    .line 1561
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x0

    .line 1531
    monitor-enter p1

    .line 1532
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1533
    .local v0, "size":I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v2, v0, :cond_0

    .line 1534
    monitor-exit p1

    .line 1536
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_0

    .line 1537
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 630
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 639
    if-ne p1, p0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v7

    .line 642
    :cond_1
    instance-of v9, p1, Ljava/lang/String;

    if-eqz v9, :cond_5

    move-object v4, p1

    .line 643
    check-cast v4, Ljava/lang/String;

    .line 644
    .local v4, "s":Ljava/lang/String;
    iget v0, p0, Ljava/lang/String;->count:I

    .line 645
    .local v0, "count":I
    iget v9, v4, Ljava/lang/String;->count:I

    if-eq v9, v0, :cond_2

    move v7, v8

    .line 646
    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v9, v10, :cond_3

    move v7, v8

    .line 655
    goto :goto_0

    .line 657
    :cond_3
    iget-object v5, p0, Ljava/lang/String;->value:[C

    .line 658
    .local v5, "value1":[C
    iget v2, p0, Ljava/lang/String;->offset:I

    .line 659
    .local v2, "offset1":I
    iget-object v6, v4, Ljava/lang/String;->value:[C

    .line 660
    .local v6, "value2":[C
    iget v3, v4, Ljava/lang/String;->offset:I

    .line 661
    .local v3, "offset2":I
    add-int v1, v2, v0

    .local v1, "end":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 662
    aget-char v9, v5, v2

    aget-char v10, v6, v3

    if-eq v9, v10, :cond_4

    move v7, v8

    .line 663
    goto :goto_0

    .line 665
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "end":I
    .end local v2    # "offset1":I
    .end local v3    # "offset2":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "value1":[C
    .end local v6    # "value2":[C
    :cond_5
    move v7, v8

    .line 670
    goto :goto_0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "ES_COMPARING_PARAMETER_STRING_WITH_EQ"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 683
    if-ne p1, p0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v8

    .line 686
    :cond_1
    if-eqz p1, :cond_2

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 687
    goto :goto_0

    .line 689
    :cond_3
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, "o1":I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 690
    .local v5, "o2":I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v11, p0, Ljava/lang/String;->count:I

    add-int v2, v10, v11

    .line 691
    .local v2, "end":I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .local v7, "target":[C
    move v6, v5

    .end local v5    # "o2":I
    .local v6, "o2":I
    move v4, v3

    .line 692
    .end local v3    # "o1":I
    .local v4, "o1":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 693
    iget-object v10, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "o1":I
    .restart local v3    # "o1":I
    aget-char v0, v10, v4

    .line 694
    .local v0, "c1":C
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "o2":I
    .restart local v5    # "o2":I
    aget-char v1, v7, v6

    .line 695
    .local v1, "c2":C
    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v10

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v11

    if-eq v10, v11, :cond_4

    move v8, v9

    .line 696
    goto :goto_0

    :cond_4
    move v6, v5

    .end local v5    # "o2":I
    .restart local v6    # "o2":I
    move v4, v3

    .line 698
    .end local v3    # "o1":I
    .restart local v4    # "o1":I
    goto :goto_1
.end method

.method public getBytes(II[BI)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 723
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v3, p0, Ljava/lang/String;->count:I

    if-gt p2, v3, :cond_0

    .line 724
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v3

    .line 726
    :try_start_0
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int v0, v3, p1

    .local v0, "i":I
    move v2, p4

    .end local p4    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 727
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "index":I
    .restart local p4    # "index":I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    add-int/lit8 v0, v0, 0x1

    move v2, p4

    .end local p4    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 729
    .end local v0    # "i":I
    .end local v2    # "index":I
    .restart local p4    # "index":I
    :catch_0
    move-exception v1

    .line 730
    .local v1, "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    array-length v3, p3

    sub-int v4, p2, p1

    invoke-direct {p0, v3, p4, v4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 733
    .end local v1    # "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 735
    .end local p4    # "index":I
    .restart local v0    # "i":I
    .restart local v2    # "index":I
    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 746
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 7
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 773
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "canonicalCharsetName":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toUtf8Bytes([CII)[B

    move-result-object v1

    .line 787
    :goto_0
    return-object v1

    .line 776
    :cond_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toIsoLatin1Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 778
    :cond_1
    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 779
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toAsciiBytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_2
    const-string v4, "UTF-16BE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 781
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toBigEndianUtf16Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 783
    :cond_3
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 784
    .local v3, "chars":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 785
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    .line 786
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buffer"    # [C
    .param p4, "index"    # I

    .prologue
    .line 811
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    .line 812
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 817
    return-void

    .line 815
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 829
    iget v2, p0, Ljava/lang/String;->hashCode:I

    .line 830
    .local v2, "hash":I
    if-nez v2, :cond_2

    .line 831
    iget v4, p0, Ljava/lang/String;->count:I

    if-nez v4, :cond_0

    .line 832
    const/4 v4, 0x0

    .line 841
    :goto_0
    return v4

    .line 834
    :cond_0
    iget v4, p0, Ljava/lang/String;->count:I

    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v4, v5

    .line 835
    .local v1, "end":I
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 836
    .local v0, "chars":[C
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 837
    mul-int/lit8 v4, v2, 0x1f

    aget-char v5, v0, v3

    add-int v2, v4, v5

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 839
    :cond_1
    iput v2, p0, Ljava/lang/String;->hashCode:I

    .end local v0    # "chars":[C
    .end local v1    # "end":I
    .end local v3    # "i":I
    :cond_2
    move v4, v2

    .line 841
    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "c"    # I

    .prologue
    const/4 v1, 0x0

    .line 851
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 852
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 854
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "c"    # I
    .param p2, "start"    # I

    .prologue
    .line 863
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 864
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 866
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 14
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 889
    const/4 v7, 0x0

    .line 890
    .local v7, "start":I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 891
    .local v8, "subCount":I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 892
    .local v0, "_count":I
    if-lez v8, :cond_6

    .line 893
    if-le v8, v0, :cond_1

    move v4, v11

    .line 916
    .end local v0    # "_count":I
    :cond_0
    :goto_0
    return v4

    .line 896
    .restart local v0    # "_count":I
    :cond_1
    iget-object v10, p1, Ljava/lang/String;->value:[C

    .line 897
    .local v10, "target":[C
    iget v9, p1, Ljava/lang/String;->offset:I

    .line 898
    .local v9, "subOffset":I
    aget-char v3, v10, v9

    .line 899
    .local v3, "firstChar":C
    add-int v2, v9, v8

    .line 901
    .local v2, "end":I
    :goto_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 902
    .local v4, "i":I
    if-eq v4, v11, :cond_2

    add-int v12, v8, v4

    if-le v12, v0, :cond_3

    :cond_2
    move v4, v11

    .line 903
    goto :goto_0

    .line 905
    :cond_3
    iget v12, p0, Ljava/lang/String;->offset:I

    add-int v5, v12, v4

    .local v5, "o1":I
    move v6, v9

    .line 906
    .local v6, "o2":I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 907
    .local v1, "_value":[C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    aget-char v12, v1, v5

    aget-char v13, v10, v6

    if-eq v12, v13, :cond_4

    .line 910
    :cond_5
    if-eq v6, v2, :cond_0

    .line 913
    add-int/lit8 v7, v4, 0x1

    .line 914
    goto :goto_1

    .line 916
    .end local v1    # "_value":[C
    .end local v2    # "end":I
    .end local v3    # "firstChar":C
    .end local v4    # "i":I
    .end local v5    # "o1":I
    .end local v6    # "o2":I
    .end local v9    # "subOffset":I
    .end local v10    # "target":[C
    :cond_6
    if-ge v7, v0, :cond_7

    move v0, v7

    .end local v0    # "_count":I
    :cond_7
    move v4, v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 13
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v10, -0x1

    .line 928
    if-gez p2, :cond_0

    .line 929
    const/4 p2, 0x0

    .line 931
    :cond_0
    iget v7, p1, Ljava/lang/String;->count:I

    .line 932
    .local v7, "subCount":I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 933
    .local v0, "_count":I
    if-lez v7, :cond_7

    .line 934
    add-int v11, v7, p2

    if-le v11, v0, :cond_2

    move v4, v10

    .line 957
    .end local v0    # "_count":I
    :cond_1
    :goto_0
    return v4

    .line 937
    .restart local v0    # "_count":I
    :cond_2
    iget-object v9, p1, Ljava/lang/String;->value:[C

    .line 938
    .local v9, "target":[C
    iget v8, p1, Ljava/lang/String;->offset:I

    .line 939
    .local v8, "subOffset":I
    aget-char v3, v9, v8

    .line 940
    .local v3, "firstChar":C
    add-int v2, v8, v7

    .line 942
    .local v2, "end":I
    :goto_1
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 943
    .local v4, "i":I
    if-eq v4, v10, :cond_3

    add-int v11, v7, v4

    if-le v11, v0, :cond_4

    :cond_3
    move v4, v10

    .line 944
    goto :goto_0

    .line 946
    :cond_4
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    .local v5, "o1":I
    move v6, v8

    .line 947
    .local v6, "o2":I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 948
    .local v1, "_value":[C
    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v9, v6

    if-eq v11, v12, :cond_5

    .line 951
    :cond_6
    if-eq v6, v2, :cond_1

    .line 954
    add-int/lit8 p2, v4, 0x1

    .line 955
    goto :goto_1

    .line 957
    .end local v1    # "_value":[C
    .end local v2    # "end":I
    .end local v3    # "firstChar":C
    .end local v4    # "i":I
    .end local v5    # "o1":I
    .end local v6    # "o2":I
    .end local v8    # "subOffset":I
    .end local v9    # "target":[C
    :cond_7
    if-ge p2, v0, :cond_8

    move v0, p2

    .end local v0    # "_count":I
    :cond_8
    move v4, v0

    goto :goto_0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Ljava/lang/String;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(I)I
    .locals 5
    .param p1, "c"    # I

    .prologue
    .line 990
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 991
    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1001
    :goto_0
    return v4

    .line 993
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 994
    .local v0, "_count":I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 995
    .local v1, "_offset":I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 996
    .local v2, "_value":[C
    add-int v4, v1, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 997
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_1

    .line 998
    sub-int v4, v3, v1

    goto :goto_0

    .line 996
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1001
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(II)I
    .locals 5
    .param p1, "c"    # I
    .param p2, "start"    # I

    .prologue
    .line 1010
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 1011
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1026
    :goto_0
    return v4

    .line 1013
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1014
    .local v0, "_count":I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1015
    .local v1, "_offset":I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1016
    .local v2, "_value":[C
    if-ltz p2, :cond_3

    .line 1017
    if-lt p2, v0, :cond_1

    .line 1018
    add-int/lit8 p2, v0, -0x1

    .line 1020
    :cond_1
    add-int v3, v1, p2

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 1021
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_2

    .line 1022
    sub-int v4, v3, v1

    goto :goto_0

    .line 1020
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1026
    .end local v3    # "i":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 11
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v8, -0x1

    .line 1061
    iget v5, p1, Ljava/lang/String;->count:I

    .line 1062
    .local v5, "subCount":I
    iget v9, p0, Ljava/lang/String;->count:I

    if-gt v5, v9, :cond_7

    if-ltz p2, :cond_7

    .line 1063
    if-lez v5, :cond_5

    .line 1064
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int/2addr v9, v5

    if-le p2, v9, :cond_0

    .line 1065
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int p2, v9, v5

    .line 1068
    :cond_0
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1069
    .local v7, "target":[C
    iget v6, p1, Ljava/lang/String;->offset:I

    .line 1070
    .local v6, "subOffset":I
    aget-char v1, v7, v6

    .line 1071
    .local v1, "firstChar":C
    add-int v0, v6, v5

    .line 1073
    .local v0, "end":I
    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 1074
    .local v2, "i":I
    if-ne v2, v8, :cond_2

    move v2, v8

    .line 1089
    .end local v0    # "end":I
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    .end local v6    # "subOffset":I
    .end local v7    # "target":[C
    :cond_1
    :goto_1
    return v2

    .line 1077
    .restart local v0    # "end":I
    .restart local v1    # "firstChar":C
    .restart local v2    # "i":I
    .restart local v6    # "subOffset":I
    .restart local v7    # "target":[C
    :cond_2
    iget v9, p0, Ljava/lang/String;->offset:I

    add-int v3, v9, v2

    .local v3, "o1":I
    move v4, v6

    .line 1078
    .local v4, "o2":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v9, v9, v3

    aget-char v10, v7, v4

    if-eq v9, v10, :cond_3

    .line 1081
    :cond_4
    if-eq v4, v0, :cond_1

    .line 1084
    add-int/lit8 p2, v2, -0x1

    .line 1085
    goto :goto_0

    .line 1087
    .end local v0    # "end":I
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    .end local v6    # "subOffset":I
    .end local v7    # "target":[C
    :cond_5
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_6

    move v8, p2

    :goto_2
    move v2, v8

    goto :goto_1

    :cond_6
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_2

    :cond_7
    move v2, v8

    .line 1089
    goto :goto_1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Ljava/lang/String;->count:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;

    .prologue
    .line 1581
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 1751
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    .line 1752
    .local v1, "s":I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    .line 1753
    .local v0, "r":I
    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 9
    .param p1, "thisStart"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1112
    if-nez p2, :cond_0

    .line 1113
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "string == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1115
    :cond_0
    if-ltz p3, :cond_1

    iget v7, p2, Ljava/lang/String;->count:I

    sub-int/2addr v7, p3

    if-ge v7, p4, :cond_3

    :cond_1
    move v5, v6

    .line 1132
    :cond_2
    :goto_0
    return v5

    .line 1118
    :cond_3
    if-ltz p1, :cond_4

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p1

    if-ge v7, p4, :cond_5

    :cond_4
    move v5, v6

    .line 1119
    goto :goto_0

    .line 1121
    :cond_5
    if-lez p4, :cond_2

    .line 1124
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int v1, v7, p1

    .local v1, "o1":I
    iget v7, p2, Ljava/lang/String;->offset:I

    add-int v2, v7, p3

    .line 1125
    .local v2, "o2":I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    .line 1126
    .local v3, "value1":[C
    iget-object v4, p2, Ljava/lang/String;->value:[C

    .line 1127
    .local v4, "value2":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 1128
    add-int v7, v1, v0

    aget-char v7, v3, v7

    add-int v8, v2, v0

    aget-char v8, v4, v8

    if-eq v7, v8, :cond_6

    move v5, v6

    .line 1129
    goto :goto_0

    .line 1127
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 9
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 1155
    if-nez p1, :cond_1

    .line 1156
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    .line 1178
    :cond_0
    :goto_0
    return v6

    .line 1158
    :cond_1
    if-nez p3, :cond_2

    .line 1159
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "string == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1161
    :cond_2
    if-ltz p2, :cond_0

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p2

    if-gt p5, v7, :cond_0

    .line 1164
    if-ltz p4, :cond_0

    iget v7, p3, Ljava/lang/String;->count:I

    sub-int/2addr v7, p4

    if-gt p5, v7, :cond_0

    .line 1167
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v7

    .line 1168
    iget v7, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v7

    .line 1169
    add-int v2, p2, p5

    .line 1170
    .local v2, "end":I
    iget-object v4, p3, Ljava/lang/String;->value:[C

    .local v4, "target":[C
    move v3, p4

    .end local p4    # "start":I
    .local v3, "start":I
    move v5, p2

    .line 1171
    .end local p2    # "thisStart":I
    .local v5, "thisStart":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 1172
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    .end local v5    # "thisStart":I
    .restart local p2    # "thisStart":I
    aget-char v0, v7, v5

    .line 1173
    .local v0, "c1":C
    add-int/lit8 p4, v3, 0x1

    .end local v3    # "start":I
    .restart local p4    # "start":I
    aget-char v1, v4, v3

    .line 1174
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v7

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v8

    if-ne v7, v8, :cond_0

    :cond_3
    move v3, p4

    .end local p4    # "start":I
    .restart local v3    # "start":I
    move v5, p2

    .line 1177
    .end local p2    # "thisStart":I
    .restart local v5    # "thisStart":I
    goto :goto_1

    .line 1178
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_4
    const/4 v6, 0x1

    move p4, v3

    .end local v3    # "start":I
    .restart local p4    # "start":I
    move p2, v5

    .end local v5    # "thisStart":I
    .restart local p2    # "thisStart":I
    goto :goto_0
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 10
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .prologue
    const/4 v9, 0x0

    .line 1185
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1186
    .local v2, "buffer":[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1187
    .local v1, "_offset":I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1189
    .local v0, "_count":I
    move v4, v1

    .line 1190
    .local v4, "idx":I
    add-int v5, v1, v0

    .line 1191
    .local v5, "last":I
    const/4 v3, 0x0

    .line 1192
    .local v3, "copied":Z
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1193
    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1

    .line 1194
    if-nez v3, :cond_0

    .line 1195
    new-array v6, v0, [C

    .line 1196
    .local v6, "newBuffer":[C
    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1197
    move-object v2, v6

    .line 1198
    sub-int/2addr v4, v1

    .line 1199
    sub-int/2addr v5, v1

    .line 1200
    const/4 v3, 0x1

    .line 1202
    .end local v6    # "newBuffer":[C
    :cond_0
    aput-char p2, v2, v4

    .line 1204
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1207
    :cond_2
    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v7

    .end local p0    # "this":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 13
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, -0x1

    .line 1219
    if-nez p1, :cond_0

    .line 1220
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "target == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1222
    :cond_0
    if-nez p2, :cond_1

    .line 1223
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "replacement == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1226
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1227
    .local v8, "targetString":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1228
    .local v2, "matchStart":I
    if-ne v2, v12, :cond_2

    .line 1264
    .end local p0    # "this":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1233
    .restart local p0    # "this":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1236
    .local v3, "replacementString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 1237
    .local v7, "targetLength":I
    if-nez v7, :cond_4

    .line 1241
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p0, Ljava/lang/String;->count:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/2addr v10, v11

    add-int v5, v9, v10

    .line 1242
    .local v5, "resultLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1243
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    iget v9, p0, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->count:I

    add-int v0, v9, v10

    .line 1245
    .local v0, "end":I
    iget v1, p0, Ljava/lang/String;->offset:I

    .local v1, "i":I
    :goto_1
    if-eq v1, v0, :cond_3

    .line 1246
    iget-object v9, p0, Ljava/lang/String;->value:[C

    aget-char v9, v9, v1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1249
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1252
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "resultLength":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    iget v9, p0, Ljava/lang/String;->count:I

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1253
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1256
    .local v6, "searchStart":I
    :cond_5
    iget-object v9, p0, Ljava/lang/String;->value:[C

    iget v10, p0, Ljava/lang/String;->offset:I

    add-int/2addr v10, v6

    sub-int v11, v2, v6

    invoke-virtual {v4, v9, v10, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    add-int v6, v2, v7

    .line 1261
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v12, :cond_5

    .line 1263
    iget-object v9, p0, Ljava/lang/String;->value:[C

    iget v10, p0, Ljava/lang/String;->offset:I

    add-int/2addr v10, v6

    iget v11, p0, Ljava/lang/String;->count:I

    sub-int/2addr v11, v6

    invoke-virtual {v4, v9, v10, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 1600
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;

    .prologue
    .line 1639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 1657
    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1658
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 1296
    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1671
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 1307
    if-nez p1, :cond_0

    .line 1311
    .end local p0    # "this":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1310
    .restart local p0    # "this":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_1

    .line 1311
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1313
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1326
    if-nez p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_0

    .line 1331
    .end local p0    # "this":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1330
    .restart local p0    # "this":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1

    .line 1331
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1333
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toCharArray()[C
    .locals 5

    .prologue
    .line 1342
    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    .line 1343
    .local v0, "buffer":[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1344
    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1354
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1371
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .prologue
    .line 1379
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1389
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1406
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 1414
    iget v2, p0, Ljava/lang/String;->offset:I

    .local v2, "start":I
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 1415
    .local v1, "last":I
    move v0, v1

    .line 1416
    .local v0, "end":I
    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_0

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1419
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_1

    .line 1420
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1422
    :cond_1
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 1425
    .end local p0    # "this":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "this":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v3

    goto :goto_2
.end method
