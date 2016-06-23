.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 77
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-gez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 84
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 88
    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 89
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 90
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->_getChars(II[CI)V

    .line 91
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5
    .param p1, "min"    # I

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 95
    .local v0, "newCount":I
    if-le p1, v0, :cond_0

    .end local p1    # "min":I
    :goto_0
    new-array v1, p1, [C

    .line 96
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 97
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 98
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 99
    return-void

    .end local v1    # "newData":[C
    .restart local p1    # "min":I
    :cond_0
    move p1, v0

    .line 95
    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private move(II)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 377
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_1

    .line 378
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p2, p1

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 394
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v2

    .line 388
    .local v0, "newCount":I
    :goto_1
    new-array v1, v0, [C

    .line 389
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v5, v1, v5, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 391
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p2, p1

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 392
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 393
    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 385
    .end local v0    # "newCount":I
    .end local v1    # "newData":[C
    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "newCount":I
    goto :goto_1
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method


# virtual methods
.method final append0(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 132
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 136
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string p1, "null"

    .line 156
    :cond_0
    or-int v6, p2, p3

    if-ltz v6, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le p3, v6, :cond_2

    .line 157
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 160
    :cond_2
    sub-int v3, p3, p2

    .line 161
    .local v3, "length":I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v4, v6, v3

    .line 162
    .local v4, "newCount":I
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v6, v6

    if-le v4, v6, :cond_5

    .line 163
    invoke-direct {p0, v4}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 169
    :cond_3
    :goto_0
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 170
    check-cast p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v6, v7}, Ljava/lang/String;->_getChars(II[CI)V

    .line 181
    :cond_4
    :goto_1
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 182
    return-void

    .line 164
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_5
    iget-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v6, :cond_3

    .line 165
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v6}, [C->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 166
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 171
    :cond_6
    instance-of v6, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v6, :cond_7

    move-object v5, p1

    .line 172
    check-cast v5, Ljava/lang/AbstractStringBuilder;

    .line 173
    .local v5, "other":Ljava/lang/AbstractStringBuilder;
    iget-object v6, v5, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v6, p2, v7, v8, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    .line 175
    .end local v5    # "other":Ljava/lang/AbstractStringBuilder;
    :cond_7
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 176
    .local v1, "j":I
    move v0, p2

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_2
    if-ge v0, p3, :cond_4

    .line 177
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v6, v2

    .line 176
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_2
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    .local v0, "length":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 145
    .local v1, "newCount":I
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 146
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 148
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->_getChars(II[CI)V

    .line 149
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0
.end method

.method final append0([C)V
    .locals 5
    .param p1, "chars"    # [C

    .prologue
    .line 113
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v2, p1

    add-int v0, v1, v2

    .line 114
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 115
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 117
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 118
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 119
    return-void
.end method

.method final append0([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 122
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 123
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v1, p3

    .line 124
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 125
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 127
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 128
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 129
    return-void
.end method

.method final appendNull()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 102
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v1, 0x4

    .line 103
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 107
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 108
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 109
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 110
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 200
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 203
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 820
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 821
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 823
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 840
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 841
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 843
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 864
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 865
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 867
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method final delete0(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_0

    .line 219
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 222
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v2, :cond_1

    if-le p1, p2, :cond_2

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 229
    :cond_2
    if-ne p2, p1, :cond_3

    .line 247
    :goto_0
    return-void

    .line 234
    :cond_3
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v2, p2

    .line 235
    .local v0, "length":I
    if-ltz v0, :cond_4

    .line 236
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_5

    .line 237
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 246
    :cond_4
    :goto_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    .line 239
    :cond_5
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 240
    .local v1, "newData":[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 241
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 242
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 243
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1
.end method

.method final deleteCharAt0(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 250
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 254
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->delete0(II)V

    .line 255
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 270
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 271
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 272
    .local v0, "ourMin":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 274
    .end local v0    # "ourMin":I
    :cond_0
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dst"    # [C
    .param p4, "dstStart"    # I

    .prologue
    .line 296
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 300
    return-void
.end method

.method final getValue()[C
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v6, -0x1

    .line 686
    if-gez p2, :cond_0

    .line 687
    const/4 p2, 0x0

    .line 689
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 690
    .local v5, "subCount":I
    if-lez v5, :cond_9

    .line 691
    add-int v7, v5, p2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_2

    move v2, v6

    .line 718
    :cond_1
    :goto_0
    return v2

    .line 695
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 697
    .local v0, "firstChar":C
    :goto_1
    move v2, p2

    .line 698
    .local v2, "i":I
    const/4 v1, 0x0

    .line 699
    .local v1, "found":Z
    :goto_2
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v2, v7, :cond_3

    .line 700
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_5

    .line 701
    const/4 v1, 0x1

    .line 705
    :cond_3
    if-eqz v1, :cond_4

    add-int v7, v5, v2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_6

    :cond_4
    move v2, v6

    .line 706
    goto :goto_0

    .line 699
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 708
    :cond_6
    move v3, v2

    .local v3, "o1":I
    const/4 v4, 0x0

    .line 709
    .local v4, "o2":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_8

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    .line 712
    :cond_8
    if-eq v4, v5, :cond_1

    .line 715
    add-int/lit8 p2, v2, 0x1

    .line 716
    goto :goto_1

    .line 718
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_9
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p2, v6, :cond_a

    if-nez p2, :cond_b

    :cond_a
    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_0

    :cond_b
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3
.end method

.method final insert0(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 331
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 335
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 336
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 337
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 338
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 357
    if-nez p2, :cond_0

    .line 358
    const-string p2, "null"

    .line 360
    :cond_0
    or-int v0, p1, p3

    or-int/2addr v0, p4

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 363
    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    .line 364
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 341
    if-ltz p1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v1, :cond_2

    .line 342
    if-nez p2, :cond_0

    .line 343
    const-string p2, "null"

    .line 345
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 346
    .local v0, "min":I
    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 348
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 349
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 354
    :cond_1
    return-void

    .line 352
    .end local v0    # "min":I
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method final insert0(I[C)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .prologue
    .line 303
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 306
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 307
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 308
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 309
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 311
    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    .prologue
    .line 314
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    .line 316
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    .line 317
    if-eqz p4, :cond_0

    .line 318
    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 319
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 320
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 322
    :cond_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; chars.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 735
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v6, -0x1

    .line 754
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 755
    .local v5, "subCount":I
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt v5, v7, :cond_9

    if-ltz p2, :cond_9

    .line 756
    if-lez v5, :cond_7

    .line 757
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v7, v5

    if-le p2, v7, :cond_0

    .line 758
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int p2, v7, v5

    .line 762
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 764
    .local v0, "firstChar":C
    :goto_0
    move v2, p2

    .line 765
    .local v2, "i":I
    const/4 v1, 0x0

    .line 766
    .local v1, "found":Z
    :goto_1
    if-ltz v2, :cond_1

    .line 767
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_3

    .line 768
    const/4 v1, 0x1

    .line 772
    :cond_1
    if-nez v1, :cond_4

    move v2, v6

    .line 788
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return v2

    .line 766
    .restart local v0    # "firstChar":C
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 775
    :cond_4
    move v3, v2

    .local v3, "o1":I
    const/4 v4, 0x0

    .line 777
    .local v4, "o2":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_6

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_5

    .line 780
    :cond_6
    if-eq v4, v5, :cond_2

    .line 783
    add-int/lit8 p2, v2, -0x1

    .line 784
    goto :goto_0

    .line 786
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_7
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p2, v6, :cond_8

    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_2

    :cond_8
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3

    :cond_9
    move v2, v6

    .line 788
    goto :goto_2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 890
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 397
    if-ltz p1, :cond_7

    .line 398
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v3, :cond_0

    .line 399
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 401
    :cond_0
    if-le p2, p1, :cond_5

    .line 402
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 403
    .local v2, "stringLength":I
    sub-int v3, p2, p1

    sub-int v0, v3, v2

    .line 404
    .local v0, "diff":I
    if-lez v0, :cond_3

    .line 405
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v3, :cond_2

    .line 407
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 425
    :cond_1
    :goto_0
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 426
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, v0

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 434
    .end local v0    # "diff":I
    .end local v2    # "stringLength":I
    :goto_1
    return-void

    .line 410
    .restart local v0    # "diff":I
    .restart local v2    # "stringLength":I
    :cond_2
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    new-array v1, v3, [C

    .line 411
    .local v1, "newData":[C
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 413
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v2

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 415
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 416
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 418
    .end local v1    # "newData":[C
    :cond_3
    if-gez v0, :cond_4

    .line 420
    neg-int v3, v0

    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    goto :goto_0

    .line 421
    :cond_4
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 423
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 429
    .end local v0    # "diff":I
    .end local v2    # "stringLength":I
    :cond_5
    if-ne p1, p2, :cond_7

    .line 430
    if-nez p3, :cond_6

    .line 431
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "string == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_6
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_7
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3
.end method

.method final reverse0()V
    .locals 17

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v15, :cond_b

    .line 445
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v15, -0x1

    .line 446
    .local v3, "end":I
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/16 v16, 0x0

    aget-char v6, v15, v16

    .line 447
    .local v6, "frontHigh":C
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v5, v15, v3

    .line 448
    .local v5, "endLow":C
    const/4 v2, 0x1

    .local v2, "allowFrontSur":Z
    const/4 v1, 0x1

    .line 449
    .local v1, "allowEndSur":Z
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    div-int/lit8 v11, v15, 0x2

    .end local v2    # "allowFrontSur":Z
    .local v11, "mid":I
    :goto_1
    if-ge v9, v11, :cond_8

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v7, v15, v16

    .line 451
    .local v7, "frontLow":C
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aget-char v4, v15, v16

    .line 452
    .local v4, "endHigh":C
    if-eqz v2, :cond_3

    const v15, 0xdc00

    if-lt v7, v15, :cond_3

    const v15, 0xdfff

    if-gt v7, v15, :cond_3

    const v15, 0xd800

    if-lt v6, v15, :cond_3

    const v15, 0xdbff

    if-gt v6, v15, :cond_3

    const/4 v14, 0x1

    .line 455
    .local v14, "surAtFront":Z
    :goto_2
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 458
    :cond_2
    if-eqz v1, :cond_4

    const v15, 0xd800

    if-lt v4, v15, :cond_4

    const v15, 0xdbff

    if-gt v4, v15, :cond_4

    const v15, 0xdc00

    if-lt v5, v15, :cond_4

    const v15, 0xdfff

    if-gt v5, v15, :cond_4

    const/4 v13, 0x1

    .line 461
    .local v13, "surAtEnd":Z
    :goto_3
    const/4 v1, 0x1

    move v2, v1

    .line 462
    .local v2, "allowFrontSur":I
    if-ne v14, v13, :cond_6

    .line 463
    if-eqz v14, :cond_5

    .line 465
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    .line 466
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aput-char v6, v15, v16

    .line 467
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aput-char v5, v15, v16

    .line 469
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x2

    aget-char v6, v15, v16

    .line 470
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x2

    aget-char v5, v15, v16

    .line 471
    add-int/lit8 v9, v9, 0x1

    .line 472
    add-int/lit8 v3, v3, -0x1

    .line 449
    .end local v2    # "allowFrontSur":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 452
    .end local v13    # "surAtEnd":Z
    .end local v14    # "surAtFront":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 458
    .restart local v14    # "surAtFront":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 475
    .restart local v2    # "allowFrontSur":I
    .restart local v13    # "surAtEnd":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    .line 477
    move v6, v7

    .line 478
    move v5, v4

    goto :goto_4

    .line 481
    :cond_6
    if-eqz v14, :cond_7

    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    .line 485
    move v5, v4

    .line 486
    const/4 v2, 0x0

    .local v2, "allowFrontSur":Z
    goto :goto_4

    .line 489
    .local v2, "allowFrontSur":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    .line 490
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    .line 491
    move v6, v7

    .line 492
    const/4 v1, 0x0

    goto :goto_4

    .line 496
    .end local v2    # "allowFrontSur":I
    .end local v4    # "endHigh":C
    .end local v7    # "frontLow":C
    .end local v13    # "surAtEnd":Z
    .end local v14    # "surAtFront":Z
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    .line 497
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    if-eqz v2, :cond_a

    .end local v5    # "endLow":C
    :goto_5
    aput-char v5, v15, v3

    goto/16 :goto_0

    .restart local v5    # "endLow":C
    :cond_a
    move v5, v6

    goto :goto_5

    .line 500
    .end local v1    # "allowEndSur":Z
    .end local v3    # "end":I
    .end local v5    # "endLow":C
    .end local v6    # "frontHigh":C
    .end local v9    # "i":I
    .end local v11    # "mid":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v15, v15

    new-array v12, v15, [C

    .line 501
    .local v12, "newData":[C
    const/4 v9, 0x0

    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget v3, v0, Ljava/lang/AbstractStringBuilder;->count:I

    .restart local v3    # "end":I
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v9, v15, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v8, v15, v9

    .line 503
    .local v8, "high":C
    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    const v15, 0xd800

    if-lt v8, v15, :cond_c

    const v15, 0xdbff

    if-gt v8, v15, :cond_c

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v10, v15, v16

    .line 505
    .local v10, "low":C
    const v15, 0xdc00

    if-lt v10, v15, :cond_c

    const v15, 0xdfff

    if-gt v10, v15, :cond_c

    .line 506
    add-int/lit8 v3, v3, -0x1

    aput-char v10, v12, v3

    .line 507
    add-int/lit8 v9, v9, 0x1

    .line 510
    .end local v10    # "low":C
    :cond_c
    add-int/lit8 v3, v3, -0x1

    aput-char v8, v12, v3

    .line 501
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 512
    .end local v8    # "high":C
    :cond_d
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 513
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto/16 :goto_0
.end method

.method final set([CI)V
    .locals 2
    .param p1, "val"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object p1, Llibcore/util/EmptyArray;->CHAR:[C

    .line 66
    :cond_0
    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 67
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "count out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 71
    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 72
    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 73
    return-void
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 529
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 530
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 532
    :cond_1
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 536
    :cond_2
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 537
    return-void
.end method

.method public setLength(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 551
    if-gez p1, :cond_0

    .line 552
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_2

    .line 555
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 568
    :cond_1
    :goto_0
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 569
    return-void

    .line 557
    :cond_2
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_3

    .line 558
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 559
    .local v0, "newData":[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 560
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 561
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    .line 563
    .end local v0    # "newData":[C
    :cond_3
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, p1, :cond_1

    .line 564
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_0
.end method

.method final shareValue()[C
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 56
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 654
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 583
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    .line 584
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ne p1, v0, :cond_0

    .line 585
    const-string v0, ""

    .line 589
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 591
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 608
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1

    .line 609
    if-ne p1, p2, :cond_0

    .line 610
    const-string v0, ""

    .line 614
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 616
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-nez v1, :cond_0

    .line 627
    const-string v1, ""

    .line 636
    :goto_0
    return-object v1

    .line 630
    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v1, v2

    .line 631
    .local v0, "wasted":I
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    shr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    .line 633
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 635
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 636
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v1, v4, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 799
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    new-array v0, v1, [C

    .line 800
    .local v0, "newValue":[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 801
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 802
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 804
    .end local v0    # "newValue":[C
    :cond_0
    return-void
.end method
