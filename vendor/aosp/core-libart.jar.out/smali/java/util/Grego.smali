.class Ljava/util/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I

.field private static final JULIAN_1970_CE:I = 0x253d8c

.field private static final JULIAN_1_CE:I = 0x1a4452

.field public static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MILLIS_PER_DAY:I = 0x5265c00

.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Grego;->MONTH_LENGTH:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/Grego;->DAYS_BEFORE:[I

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 51
    :array_1
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

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeek(J)I
    .locals 6
    .param p0, "day"    # J

    .prologue
    .line 108
    const/4 v2, 0x1

    new-array v1, v2, [J

    .line 109
    .local v1, "remainder":[J
    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5, v1}, Ljava/util/Grego;->floorDivide(JJ[J)J

    .line 110
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v0, v2

    .line 111
    .local v0, "dayOfWeek":I
    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 112
    :cond_0
    return v0
.end method

.method public static dayToFields(J[I)[I
    .locals 26
    .param p0, "day"    # J
    .param p2, "fields"    # [I

    .prologue
    .line 116
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 117
    :cond_0
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 p2, v0

    .line 120
    :cond_1
    const-wide/32 v22, 0xaf93a

    add-long p0, p0, v22

    .line 122
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v11, v0, [J

    .line 123
    .local v11, "rem":[J
    const-wide/32 v22, 0x23ab1

    move-wide/from16 v0, p0

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v18

    .line 124
    .local v18, "n400":J
    const/16 v21, 0x0

    aget-wide v22, v11, v21

    const-wide/32 v24, 0x8eac

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v14

    .line 125
    .local v14, "n100":J
    const/16 v21, 0x0

    aget-wide v22, v11, v21

    const-wide/16 v24, 0x5b5

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v16

    .line 126
    .local v16, "n4":J
    const/16 v21, 0x0

    aget-wide v22, v11, v21

    const-wide/16 v24, 0x16d

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v12

    .line 128
    .local v12, "n1":J
    const-wide/16 v22, 0x190

    mul-long v22, v22, v18

    const-wide/16 v24, 0x64

    mul-long v24, v24, v14

    add-long v22, v22, v24

    const-wide/16 v24, 0x4

    mul-long v24, v24, v16

    add-long v22, v22, v24

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v20, v0

    .line 129
    .local v20, "year":I
    const/16 v21, 0x0

    aget-wide v22, v11, v21

    move-wide/from16 v0, v22

    long-to-int v7, v0

    .line 130
    .local v7, "dayOfYear":I
    const-wide/16 v22, 0x4

    cmp-long v21, v14, v22

    if-eqz v21, :cond_2

    const-wide/16 v22, 0x4

    cmp-long v21, v12, v22

    if-nez v21, :cond_5

    .line 131
    :cond_2
    const/16 v7, 0x16d

    .line 137
    :goto_0
    invoke-static/range {v20 .. v20}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v8

    .line 138
    .local v8, "isLeap":Z
    const/4 v4, 0x0

    .line 139
    .local v4, "correction":I
    if-eqz v8, :cond_6

    const/16 v9, 0x3c

    .line 140
    .local v9, "march1":I
    :goto_1
    if-lt v7, v9, :cond_3

    .line 141
    if-eqz v8, :cond_7

    const/4 v4, 0x1

    .line 143
    :cond_3
    :goto_2
    add-int v21, v7, v4

    mul-int/lit8 v21, v21, 0xc

    add-int/lit8 v21, v21, 0x6

    move/from16 v0, v21

    div-int/lit16 v10, v0, 0x16f

    .line 144
    .local v10, "month":I
    sget-object v22, Ljava/util/Grego;->DAYS_BEFORE:[I

    if-eqz v8, :cond_8

    add-int/lit8 v21, v10, 0xc

    :goto_3
    aget v21, v22, v21

    sub-int v21, v7, v21

    add-int/lit8 v5, v21, 0x1

    .line 145
    .local v5, "dayOfMonth":I
    const-wide/16 v22, 0x2

    add-long v22, v22, p0

    const-wide/16 v24, 0x7

    rem-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v6, v0

    .line 146
    .local v6, "dayOfWeek":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    .line 147
    add-int/lit8 v6, v6, 0x7

    .line 149
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 151
    const/16 v21, 0x0

    aput v20, p2, v21

    .line 152
    const/16 v21, 0x1

    aput v10, p2, v21

    .line 153
    const/16 v21, 0x2

    aput v5, p2, v21

    .line 154
    const/16 v21, 0x3

    aput v6, p2, v21

    .line 155
    const/16 v21, 0x4

    aput v7, p2, v21

    .line 157
    return-object p2

    .line 134
    .end local v4    # "correction":I
    .end local v5    # "dayOfMonth":I
    .end local v6    # "dayOfWeek":I
    .end local v8    # "isLeap":Z
    .end local v9    # "march1":I
    .end local v10    # "month":I
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 139
    .restart local v4    # "correction":I
    .restart local v8    # "isLeap":Z
    :cond_6
    const/16 v9, 0x3b

    goto :goto_1

    .line 141
    .restart local v9    # "march1":I
    :cond_7
    const/4 v4, 0x2

    goto :goto_2

    .restart local v10    # "month":I
    :cond_8
    move/from16 v21, v10

    .line 144
    goto :goto_3
.end method

.method public static fieldsToDay(III)J
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dom"    # I

    .prologue
    .line 94
    add-int/lit8 v2, p0, -0x1

    .line 95
    .local v2, "y":I
    mul-int/lit16 v3, v2, 0x16d

    int-to-long v4, v3

    int-to-long v6, v2

    const-wide/16 v8, 0x4

    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x1a444f

    add-long/2addr v4, v6

    int-to-long v6, v2

    const-wide/16 v8, 0x190

    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    sget-object v6, Ljava/util/Grego;->DAYS_BEFORE:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    :goto_0
    add-int/2addr v3, p1

    aget v3, v6, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, p2

    add-long v0, v4, v6

    .line 99
    .local v0, "julian":J
    const-wide/32 v4, 0x253d8c

    sub-long v4, v0, v4

    return-wide v4

    .line 95
    .end local v0    # "julian":J
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static floorDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static floorDivide(JJ[J)J
    .locals 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J
    .param p4, "remainder"    # [J

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    .line 191
    rem-long v2, p0, p2

    aput-wide v2, p4, v4

    .line 192
    div-long v0, p0, p2

    .line 196
    :goto_0
    return-wide v0

    .line 194
    :cond_0
    add-long v2, p0, v6

    div-long/2addr v2, p2

    sub-long v0, v2, v6

    .line 195
    .local v0, "quotient":J
    mul-long v2, v0, p2

    sub-long v2, p0, v2

    aput-wide v2, p4, v4

    goto :goto_0
.end method

.method public static getDayOfWeekInMonth(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 204
    add-int/lit8 v1, p2, 0x6

    div-int/lit8 v0, v1, 0x7

    .line 205
    .local v0, "weekInMonth":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 206
    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, p1}, Ljava/util/Grego;->monthLength(II)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 207
    const/4 v0, -0x1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 210
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final monthLength(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 72
    sget-object v1, Ljava/util/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    add-int/2addr v0, p1

    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final previousMonthLength(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 82
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Ljava/util/Grego;->monthLength(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method public static timeToFields(J[I)[I
    .locals 6
    .param p0, "time"    # J
    .param p2, "fields"    # [I

    .prologue
    const/4 v4, 0x6

    .line 171
    if-eqz p2, :cond_0

    array-length v3, p2

    if-ge v3, v4, :cond_1

    .line 172
    :cond_0
    new-array p2, v4, [I

    .line 174
    :cond_1
    const/4 v3, 0x1

    new-array v2, v3, [J

    .line 175
    .local v2, "remainder":[J
    const-wide/32 v4, 0x5265c00

    invoke-static {p0, p1, v4, v5, v2}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v0

    .line 176
    .local v0, "day":J
    invoke-static {v0, v1, p2}, Ljava/util/Grego;->dayToFields(J[I)[I

    .line 177
    const/4 v3, 0x5

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    long-to-int v4, v4

    aput v4, p2, v3

    .line 178
    return-object p2
.end method
