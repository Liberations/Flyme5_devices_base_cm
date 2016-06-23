.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfo$1;,
        Llibcore/util/ZoneInfo$CheckedArithmeticException;,
        Llibcore/util/ZoneInfo$OffsetInterval;,
        Llibcore/util/ZoneInfo$WallTime;
    }
.end annotation


# static fields
.field private static final LEAP:[I

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mDstSavings:I

.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[I

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[I[B[I[B)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitions"    # [I
    .param p3, "types"    # [B
    .param p4, "gmtOffsets"    # [I
    .param p5, "isDsts"    # [B

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    .line 104
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[I

    .line 105
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    .line 106
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    .line 107
    invoke-virtual/range {p0 .. p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    .line 110
    const/4 v9, 0x0

    .line 111
    .local v9, "lastStd":I
    const/4 v6, 0x0

    .line 112
    .local v6, "haveStd":Z
    const/4 v8, 0x0

    .line 113
    .local v8, "lastDst":I
    const/4 v5, 0x0

    .line 114
    .local v5, "haveDst":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v12, v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "i":I
    :goto_0
    if-eqz v6, :cond_0

    if-nez v5, :cond_3

    :cond_0
    if-ltz v7, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v12, v12, v7

    and-int/lit16 v10, v12, 0xff

    .line 116
    .local v10, "type":I
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v12, v12, v10

    if-nez v12, :cond_1

    .line 117
    const/4 v6, 0x1

    .line 118
    move v9, v7

    .line 120
    :cond_1
    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v12, v12, v10

    if-eqz v12, :cond_2

    .line 121
    const/4 v5, 0x1

    .line 122
    move v8, v7

    .line 114
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 127
    .end local v10    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v12, v12

    if-lt v9, v12, :cond_5

    .line 128
    const/4 v12, 0x0

    aget v12, p4, v12

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 135
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v12, v12

    if-lt v8, v12, :cond_6

    .line 136
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    .line 143
    :goto_2
    const/4 v4, -0x1

    .line 144
    .local v4, "firstStd":I
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v12, v12

    if-ge v7, v12, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    if-nez v12, :cond_7

    .line 146
    move v4, v7

    .line 150
    :cond_4
    const/4 v12, -0x1

    if-eq v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v12, v12, v4

    and-int/lit16 v12, v12, 0xff

    aget v3, p4, v12

    .line 154
    .local v3, "earliestRawOffset":I
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    .line 155
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    array-length v12, v12

    if-ge v7, v12, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v13, v12, v7

    move-object/from16 v0, p0

    iget v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    sub-int/2addr v13, v14

    aput v13, v12, v7

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 130
    .end local v3    # "earliestRawOffset":I
    .end local v4    # "firstStd":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, p4, v12

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_1

    .line 138
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, p4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    aget v13, p4, v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    goto :goto_2

    .line 144
    .restart local v4    # "firstStd":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 150
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_4

    .line 165
    .restart local v3    # "earliestRawOffset":I
    :cond_9
    const/4 v11, 0x0

    .line 166
    .local v11, "usesDst":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v2, v12

    .line 167
    .local v2, "currentUnixTimeSeconds":I
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v12, v12

    add-int/lit8 v7, v12, -0x1

    .line 168
    :goto_6
    if-ltz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v12, v12, v7

    if-lt v12, v2, :cond_a

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v13, v13, v7

    aget-byte v12, v12, v13

    if-lez v12, :cond_b

    .line 170
    const/4 v11, 0x1

    .line 175
    :cond_a
    move-object/from16 v0, p0

    iput-boolean v11, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    .line 178
    move-object/from16 v0, p0

    iget v12, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v12, v12, 0x3e8

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 179
    mul-int/lit16 v12, v3, 0x3e8

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 180
    return-void

    .line 173
    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_6
.end method

.method static synthetic access$000(Llibcore/util/ZoneInfo;)I
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 37
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method static synthetic access$100(Llibcore/util/ZoneInfo;)[I
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 37
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    return-object v0
.end method

.method static synthetic access$200(Llibcore/util/ZoneInfo;)[B
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 37
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    return-object v0
.end method

.method static synthetic access$300(Llibcore/util/ZoneInfo;)[I
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 37
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    return-object v0
.end method

.method static synthetic access$400(Llibcore/util/ZoneInfo;)[B
    .locals 1
    .param p0, "x0"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 37
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    return-object v0
.end method

.method static synthetic access$500(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0, p1}, Llibcore/util/ZoneInfo;->checkedAdd(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0, p1}, Llibcore/util/ZoneInfo;->checkedSubtract(II)I

    move-result v0

    return v0
.end method

.method private static checkedAdd(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 957
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 958
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 959
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$1;)V

    throw v2

    .line 961
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method private static checkedSubtract(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 971
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 972
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 973
    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$1;)V

    throw v2

    .line 975
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Llibcore/io/BufferIterator;

    .prologue
    const/4 v9, 0x0

    .line 66
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    const v1, 0x545a6966

    if-eq v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 74
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    .line 75
    .local v7, "tzh_timecnt":I
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v8

    .line 77
    .local v8, "tzh_typecnt":I
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 79
    new-array v2, v7, [I

    .line 80
    .local v2, "transitions":[I
    array-length v0, v2

    invoke-virtual {p1, v2, v9, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    .line 82
    new-array v3, v7, [B

    .line 83
    .local v3, "type":[B
    array-length v0, v3

    invoke-virtual {p1, v3, v9, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 85
    new-array v4, v8, [I

    .line 86
    .local v4, "gmtOffsets":[I
    new-array v5, v8, [B

    .line 87
    .local v5, "isDsts":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 88
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    aput v0, v4, v6

    .line 89
    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readByte()B

    move-result v0

    aput-byte v0, v5, v6

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    :cond_1
    new-instance v0, Llibcore/util/ZoneInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[I[B[I[B)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 280
    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 283
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 284
    .local v0, "other":Llibcore/util/ZoneInfo;
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .prologue
    .line 188
    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    .line 189
    .local v0, "calc":J
    rem-int/lit16 p2, p2, 0x190

    .line 191
    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 192
    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 194
    if-lez p2, :cond_0

    .line 195
    add-int/lit8 v4, p2, -0x1

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_2

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 199
    .local v2, "isLeap":Z
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    .line 201
    .local v3, "mlen":[I
    :goto_1
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 202
    add-int/lit8 v4, p4, -0x1

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 203
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 205
    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 206
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 208
    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    .line 198
    .end local v2    # "isLeap":Z
    .end local v3    # "mlen":[I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 199
    .restart local v2    # "isLeap":Z
    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 5
    .param p1, "when"    # J

    .prologue
    .line 213
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 214
    .local v1, "unix":I
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 215
    .local v0, "transition":I
    if-gez v0, :cond_0

    .line 216
    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 217
    if-gez v0, :cond_0

    .line 221
    iget v2, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    .line 224
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    instance-of v3, p1, Llibcore/util/ZoneInfo;

    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 264
    check-cast v0, Llibcore/util/ZoneInfo;

    .line 265
    .local v0, "other":Llibcore/util/ZoneInfo;
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v4, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-ne v3, v4, :cond_0

    .line 268
    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v3, :cond_3

    .line 269
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 271
    :cond_3
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 289
    const/16 v0, 0x1f

    .line 290
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 291
    .local v1, "result":I
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 292
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 293
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 294
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    .line 295
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 296
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 297
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    .line 298
    return v1

    .line 297
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 8
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 229
    .local v2, "when":J
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v1, v6

    .line 230
    .local v1, "unix":I
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 231
    .local v0, "transition":I
    if-gez v0, :cond_0

    .line 232
    xor-int/lit8 v6, v0, -0x1

    add-int/lit8 v0, v6, -0x1

    .line 233
    if-gez v0, :cond_0

    .line 241
    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v7, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-ne v6, v4, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "off"    # I

    .prologue
    .line 249
    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    .line 250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEarliestRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUseDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
