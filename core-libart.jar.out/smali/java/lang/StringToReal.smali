.class final Ljava/lang/StringToReal;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringToReal$1;,
        Ljava/lang/StringToReal$StringExponentPair;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;
    .locals 24
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "isDouble"    # Z

    .prologue
    .line 74
    new-instance v18, Ljava/lang/StringToReal$StringExponentPair;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringToReal$StringExponentPair;-><init>(Ljava/lang/StringToReal$1;)V

    .line 75
    .local v18, "result":Ljava/lang/StringToReal$StringExponentPair;
    if-nez p1, :cond_0

    .line 76
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 78
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 82
    add-int/lit8 v20, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 83
    .local v6, "c":C
    const/16 v20, 0x44

    move/from16 v0, v20

    if-eq v6, v0, :cond_1

    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v6, v0, :cond_1

    const/16 v20, 0x46

    move/from16 v0, v20

    if-eq v6, v0, :cond_1

    const/16 v20, 0x66

    move/from16 v0, v20

    if-ne v6, v0, :cond_3

    .line 84
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 85
    if-nez p1, :cond_3

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 78
    .end local v6    # "c":C
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 90
    .restart local v6    # "c":C
    :cond_3
    const/16 v20, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 91
    .local v10, "end":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_f

    .line 93
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 94
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 98
    :cond_4
    add-int/lit8 v12, v10, 0x1

    .line 99
    .local v12, "exponentOffset":I
    const/16 v17, 0x0

    .line 100
    .local v17, "negativeExponent":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 101
    .local v14, "firstExponentChar":C
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v14, v0, :cond_6

    .line 102
    :cond_5
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v14, v0, :cond_7

    const/16 v17, 0x1

    .line 103
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 107
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, "exponentString":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 102
    .end local v13    # "exponentString":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 111
    .restart local v13    # "exponentString":Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_b

    .line 112
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 113
    .local v7, "ch":C
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v7, v0, :cond_9

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v7, v0, :cond_a

    .line 114
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 111
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 120
    .end local v7    # "ch":C
    :cond_b
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 121
    if-eqz v17, :cond_c

    .line 122
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_c
    :goto_3
    const/16 v19, 0x0

    .line 141
    .local v19, "start":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 142
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    .line 143
    add-int/lit8 v19, v19, 0x1

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 150
    :cond_d
    :goto_4
    if-nez p1, :cond_11

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 124
    .end local v19    # "start":I
    .restart local v12    # "exponentOffset":I
    .restart local v13    # "exponentString":Ljava/lang/String;
    .restart local v14    # "firstExponentChar":C
    .restart local v15    # "i":I
    .restart local v17    # "negativeExponent":Z
    :catch_0
    move-exception v11

    .line 127
    .local v11, "ex":Ljava/lang/NumberFormatException;
    if-eqz v17, :cond_e

    .line 128
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto :goto_3

    .line 130
    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto :goto_3

    .line 137
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_f
    move/from16 v10, p1

    goto :goto_3

    .line 146
    .restart local v19    # "start":I
    :cond_10
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-ne v6, v0, :cond_d

    .line 147
    add-int/lit8 v19, v19, 0x1

    .line 148
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 155
    :cond_11
    const/4 v9, -0x1

    .line 156
    .local v9, "decimal":I
    move/from16 v15, v19

    .restart local v15    # "i":I
    :goto_5
    if-ge v15, v10, :cond_16

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 158
    .local v16, "mc":C
    const/16 v20, 0x2e

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 159
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_12

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 162
    :cond_12
    move v9, v15

    .line 156
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 163
    :cond_14
    const/16 v20, 0x30

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    const/16 v20, 0x39

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 164
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 167
    .end local v16    # "mc":C
    :cond_16
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v9, v0, :cond_17

    .line 168
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    sub-int v22, v10, v9

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 169
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 175
    if-nez p1, :cond_18

    .line 176
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 171
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 181
    :cond_18
    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    move/from16 v20, v0

    if-nez v20, :cond_19

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 224
    :cond_19
    :goto_7
    return-object v18

    .line 185
    :cond_1a
    move/from16 v10, p1

    .line 186
    :goto_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_1b

    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 187
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    .line 190
    :cond_1b
    const/16 v19, 0x0

    .line 191
    :goto_9
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 192
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 195
    :cond_1c
    move/from16 v0, p1

    if-ne v10, v0, :cond_1d

    if-eqz v19, :cond_1e

    .line 196
    :cond_1d
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    sub-int v22, p1, v10

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 203
    :cond_1e
    const/16 v4, -0x167

    .line 204
    .local v4, "APPROX_MIN_MAGNITUDE":I
    const/16 v5, 0x34

    .line 205
    .local v5, "MAX_DIGITS":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 206
    const/16 v20, 0x34

    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_1f

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x167

    cmp-long v20, v20, v22

    if-gez v20, :cond_1f

    .line 207
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, -0x167

    move/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 208
    .local v8, "d":I
    const/16 v20, 0x0

    sub-int v21, p1, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 209
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    int-to-long v0, v8

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 215
    .end local v8    # "d":I
    :cond_1f
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x400

    cmp-long v20, v20, v22

    if-gez v20, :cond_20

    .line 216
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto/16 :goto_7

    .line 218
    :cond_20
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x400

    cmp-long v20, v20, v22

    if-lez v20, :cond_21

    .line 219
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto/16 :goto_7

    .line 223
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    .prologue
    .line 63
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "double"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "float"

    goto :goto_0
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 266
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 267
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 271
    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "last":C
    const/16 v3, 0x79

    if-eq v1, v3, :cond_1

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_3

    .line 273
    :cond_1
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    float-to-double v4, v3

    .line 290
    :cond_2
    :goto_0
    return-wide v4

    .line 278
    :cond_3
    const-string v3, "0x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_4

    const-string v3, "0X"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 279
    :cond_4
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_0

    .line 282
    :cond_5
    invoke-static {p0, v2, v10}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 283
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v3, :cond_6

    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v3, :cond_7

    .line 284
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    float-to-double v4, v3

    goto :goto_0

    .line 286
    :cond_7
    iget-object v3, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/StringToReal;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v4

    .line 287
    .local v4, "result":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_8

    .line 288
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 290
    :cond_8
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v3, :cond_2

    neg-double v4, v4

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 307
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 308
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 312
    :cond_0
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 313
    .local v1, "last":C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_3

    .line 314
    :cond_1
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    .line 331
    :cond_2
    :goto_0
    return v3

    .line 319
    :cond_3
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_4

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_5

    .line 320
    :cond_4
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {p0, v2, v8}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 324
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v4, :cond_7

    .line 325
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    goto :goto_0

    .line 327
    :cond_7
    iget-object v4, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Ljava/lang/StringToReal;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 328
    .local v3, "result":F
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 329
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 331
    :cond_8
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v4, :cond_2

    neg-float v3, v3

    goto :goto_0
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseName(Ljava/lang/String;Z)F
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 230
    const/4 v8, 0x0

    .line 231
    .local v8, "negative":Z
    const/4 v2, 0x0

    .line 232
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 233
    .local v7, "length":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 234
    .local v6, "firstChar":C
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_1

    .line 235
    const/4 v8, 0x1

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    add-int/lit8 v7, v7, -0x1

    .line 243
    :cond_0
    :goto_0
    if-ne v7, v5, :cond_3

    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    if-eqz v8, :cond_2

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 247
    :goto_1
    return v0

    .line 238
    :cond_1
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_0

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 244
    :cond_2
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    .line 246
    :cond_3
    if-ne v7, v9, :cond_4

    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_1

    .line 249
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
