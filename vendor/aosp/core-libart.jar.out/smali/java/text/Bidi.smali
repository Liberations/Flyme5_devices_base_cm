.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Bidi$Run;
    }
.end annotation


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final UBIDI_LEVEL_OVERRIDE:I = 0x80

.field private static final UBiDiDirection_UBIDI_LTR:I = 0x0

.field private static final UBiDiDirection_UBIDI_MIXED:I = 0x2

.field private static final UBiDiDirection_UBIDI_RTL:I = 0x1


# instance fields
.field private baseLevel:I

.field private direction:I

.field private length:I

.field private offsetLevel:[B

.field private runs:[Ljava/text/Bidi$Run;

.field private unidirectional:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "pBidi"    # J

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_0

    move-object v1, v3

    :goto_0
    if-nez p1, :cond_1

    move v5, v2

    :goto_1
    move-object v0, p0

    move v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 262
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 18
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "paragraph is null"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    .line 118
    .local v8, "begin":I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v14

    .line 119
    .local v14, "end":I
    sub-int v6, v14, v8

    .line 120
    .local v6, "length":I
    add-int/lit8 v3, v6, 0x1

    new-array v2, v3, [C

    .line 122
    .local v2, "text":[C
    if-eqz v6, :cond_3

    .line 123
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v5

    aput-char v5, v2, v3

    .line 129
    :goto_0
    const/4 v7, -0x2

    .line 130
    .local v7, "flags":I
    sget-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    .line 131
    .local v9, "direction":Ljava/lang/Object;
    if-eqz v9, :cond_1

    instance-of v3, v9, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 132
    sget-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    const/4 v7, 0x0

    .line 140
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 141
    .local v4, "embeddings":[B
    const/16 v17, 0x1

    .local v17, "textLimit":I
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_7

    .line 144
    sget-object v3, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v13

    .line 145
    .local v13, "embedding":Ljava/lang/Object;
    if-eqz v13, :cond_5

    instance-of v3, v13, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 146
    check-cast v13, Ljava/lang/Integer;

    .end local v13    # "embedding":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 148
    .local v12, "embLevel":I
    if-nez v4, :cond_2

    .line 149
    new-array v4, v6, [B

    .line 152
    :cond_2
    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v15

    .line 154
    add-int/lit8 v3, v15, -0x1

    int-to-byte v5, v12

    aput-byte v5, v4, v3

    .line 152
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 125
    .end local v4    # "embeddings":[B
    .end local v7    # "flags":I
    .end local v9    # "direction":Ljava/lang/Object;
    .end local v12    # "embLevel":I
    .end local v15    # "i":I
    .end local v17    # "textLimit":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    goto :goto_0

    .line 135
    .restart local v7    # "flags":I
    .restart local v9    # "direction":Ljava/lang/Object;
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 157
    .restart local v4    # "embeddings":[B
    .restart local v13    # "embedding":Ljava/lang/Object;
    .restart local v15    # "i":I
    .restart local v17    # "textLimit":I
    :cond_5
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v15

    .line 157
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 141
    .end local v13    # "embedding":Ljava/lang/Object;
    :cond_6
    sget-object v3, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    sub-int/2addr v3, v8

    add-int/lit8 v17, v3, 0x1

    goto :goto_2

    .line 164
    :cond_7
    sget-object v3, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v16

    .line 165
    .local v16, "numericShaper":Ljava/lang/Object;
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/awt/font/NumericShaper;

    if-eqz v3, :cond_8

    .line 166
    check-cast v16, Ljava/awt/font/NumericShaper;

    .end local v16    # "numericShaper":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v6}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 169
    :cond_8
    const-wide/16 v10, 0x0

    .line 171
    .local v10, "bidi":J
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {v2 .. v7}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v10

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static {v10, v11}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v3

    invoke-static {v10, v11}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v3
.end method

.method public constructor <init>([CI[BIII)V
    .locals 5
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    if-eqz p1, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, p5, :cond_1

    .line 215
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 218
    :cond_1
    if-eqz p3, :cond_2

    .line 219
    array-length v2, p3

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_2

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 224
    :cond_2
    if-gez p2, :cond_3

    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative textStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_3
    if-gez p4, :cond_4

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative embStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_4
    if-gez p5, :cond_5

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative paragraph length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_5
    const-wide/16 v0, 0x0

    .line 236
    .local v0, "bidi":J
    :try_start_0
    invoke-static/range {p1 .. p6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v0

    .line 237
    invoke-direct {p0, v0, v1}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v2
.end method

.method private createEmptyLineBidi(J)Ljava/text/Bidi;
    .locals 3
    .param p1, "parent"    # J

    .prologue
    const/4 v2, 0x0

    .line 414
    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1, p2}, Ljava/text/Bidi;-><init>(J)V

    .line 415
    .local v0, "result":Ljava/text/Bidi;
    const/4 v1, 0x0

    iput v1, v0, Ljava/text/Bidi;->length:I

    .line 416
    iput-object v2, v0, Ljava/text/Bidi;->offsetLevel:[B

    .line 417
    iput-object v2, v0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/text/Bidi;->unidirectional:Z

    .line 419
    return-object v0
.end method

.method private static createUBiDi([CI[BIII)J
    .locals 14
    .param p0, "text"    # [C
    .param p1, "textStart"    # I
    .param p2, "embeddings"    # [B
    .param p3, "embStart"    # I
    .param p4, "paragraphLength"    # I
    .param p5, "flags"    # I

    .prologue
    .line 267
    const/4 v13, 0x0

    .line 269
    .local v13, "realText":[C
    const/4 v9, 0x0

    .line 271
    .local v9, "realEmbeddings":[B
    if-eqz p0, :cond_0

    array-length v3, p0

    sub-int/2addr v3, p1

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    .line 272
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 274
    :cond_1
    move/from16 v0, p4

    new-array v13, v0, [C

    .line 275
    const/4 v3, 0x0

    move/from16 v0, p4

    invoke-static {p0, p1, v13, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 277
    if-eqz p2, :cond_5

    .line 278
    move-object/from16 v0, p2

    array-length v3, v0

    sub-int v3, v3, p3

    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    .line 279
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 281
    :cond_2
    if-lez p4, :cond_5

    .line 282
    new-instance v2, Ljava/text/Bidi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 283
    .local v2, "temp":Ljava/text/Bidi;
    move/from16 v0, p4

    new-array v9, v0, [B

    .line 284
    iget-object v3, v2, Ljava/text/Bidi;->offsetLevel:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p4

    invoke-static {v3, v6, v9, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 285
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v11, v0, :cond_5

    .line 286
    aget-byte v10, p2, v11

    .line 287
    .local v10, "e":B
    if-gez v10, :cond_3

    .line 288
    rsub-int v3, v10, 0x80

    int-to-byte v3, v3

    aput-byte v3, v9, v11

    .line 285
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 289
    :cond_3
    if-lez v10, :cond_4

    .line 290
    aput-byte v10, v9, v11

    goto :goto_1

    .line 292
    :cond_4
    aget-byte v3, v9, v11

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v9, v11

    goto :goto_1

    .line 298
    .end local v2    # "temp":Ljava/text/Bidi;
    .end local v10    # "e":B
    .end local v11    # "i":I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p5

    if-gt v0, v3, :cond_6

    const/4 v3, -0x2

    move/from16 v0, p5

    if-ge v0, v3, :cond_7

    .line 299
    :cond_6
    const/16 p5, 0x0

    .line 302
    :cond_7
    const-wide/16 v4, 0x0

    .line 303
    .local v4, "bidi":J
    const/4 v12, 0x1

    .line 305
    .local v12, "needsDeletion":Z
    :try_start_0
    invoke-static {}, Ljava/text/Bidi;->ubidi_open()J

    move-result-wide v4

    move-object v6, v13

    move/from16 v7, p4

    move/from16 v8, p5

    .line 306
    invoke-static/range {v4 .. v9}, Ljava/text/Bidi;->ubidi_setPara(J[CII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v12, 0x0

    .line 309
    if-eqz v12, :cond_8

    .line 310
    invoke-static {v4, v5}, Ljava/text/Bidi;->ubidi_close(J)V

    .line 313
    :cond_8
    return-wide v4

    .line 309
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_9

    .line 310
    invoke-static {v4, v5}, Ljava/text/Bidi;->ubidi_close(J)V

    :cond_9
    throw v3
.end method

.method private readBidiInfo(J)V
    .locals 5
    .param p1, "pBidi"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 323
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLength(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->length:I

    .line 325
    iget v1, p0, Ljava/text/Bidi;->length:I

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    .line 327
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getParaLevel(J)B

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->baseLevel:I

    .line 329
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_countRuns(J)I

    move-result v0

    .line 330
    .local v0, "runCount":I
    if-nez v0, :cond_2

    .line 331
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 332
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 345
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getDirection(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->direction:I

    .line 346
    return-void

    .line 325
    .end local v0    # "runCount":I
    :cond_1
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLevels(J)[B

    move-result-object v1

    goto :goto_0

    .line 333
    .restart local v0    # "runCount":I
    :cond_2
    if-gez v0, :cond_3

    .line 334
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    goto :goto_1

    .line 336
    :cond_3
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getRuns(J)[Ljava/text/Bidi$Run;

    move-result-object v1

    iput-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    .line 339
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/text/Bidi$Run;->getLevel()I

    move-result v1

    iget v3, p0, Ljava/text/Bidi;->baseLevel:I

    if-ne v1, v3, :cond_0

    .line 340
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 341
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    goto :goto_1
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 7
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 522
    if-ltz p4, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    array-length v4, p0

    sub-int/2addr v4, p1

    if-gt p4, v4, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-le p4, v4, :cond_1

    .line 525
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ranges (levels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", levelStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objects="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objectStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    :cond_1
    new-array v2, p4, [B

    .line 531
    .local v2, "realLevels":[B
    invoke-static {p0, p1, v2, v5, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 533
    invoke-static {v2, p4}, Ljava/text/Bidi;->ubidi_reorderVisual([BI)[I

    move-result-object v1

    .line 535
    .local v1, "indices":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 537
    aget v4, v1, v0

    add-int/2addr v4, p3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 7
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 561
    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    array-length v1, p0

    if-le p2, v1, :cond_1

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 565
    :cond_1
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    sub-int v5, p2, p1

    move-object v1, p0

    move v2, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 566
    .local v0, "bidi":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private static native ubidi_close(J)V
.end method

.method private static native ubidi_countRuns(J)I
.end method

.method private static native ubidi_getDirection(J)I
.end method

.method private static native ubidi_getLength(J)I
.end method

.method private static native ubidi_getLevels(J)[B
.end method

.method private static native ubidi_getParaLevel(J)B
.end method

.method private static native ubidi_getRuns(J)[Ljava/text/Bidi$Run;
.end method

.method private static native ubidi_open()J
.end method

.method private static native ubidi_reorderVisual([BI)[I
.end method

.method private static native ubidi_setLine(JII)J
.end method

.method private static native ubidi_setPara(J[CII[B)V
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .prologue
    const/4 v5, 0x0

    .line 385
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Ljava/text/Bidi;->length:I

    if-gt p2, v1, :cond_0

    if-le p1, p2, :cond_1

    .line 386
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ranges (start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_1
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v0, v1, [C

    .line 391
    .local v0, "text":[C
    const/16 v1, 0x61

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 392
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v2, v1, [B

    .line 393
    .local v2, "embeddings":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, v2

    if-ge v6, v1, :cond_2

    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    .line 393
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    .local v5, "dir":I
    :goto_1
    const-wide/16 v8, 0x0

    .line 402
    .local v8, "parent":J
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-static/range {v0 .. v5}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v8

    .line 403
    if-ne p1, p2, :cond_4

    .line 404
    invoke-direct {p0, v8, v9}, Ljava/text/Bidi;->createEmptyLineBidi(J)Ljava/text/Bidi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 408
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    :goto_2
    return-object v1

    .line 397
    .end local v5    # "dir":I
    .end local v8    # "parent":J
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 406
    .restart local v5    # "dir":I
    .restart local v8    # "parent":J
    :cond_4
    :try_start_1
    new-instance v1, Ljava/text/Bidi;

    invoke-static {v8, v9, p1, p2}, Ljava/text/Bidi;->ubidi_setLine(JII)J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/text/Bidi;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    throw v1
.end method

.method public getBaseLevel()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Ljava/text/Bidi;->length:I

    return v0
.end method

.method public getLevelAt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, -0x81

    .line 443
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/RuntimeException;
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    goto :goto_0
.end method

.method public getRunCount()I
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    array-length v0, v0

    goto :goto_0
.end method

.method public getRunLevel(I)I
    .locals 1
    .param p1, "run"    # I

    .prologue
    .line 458
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getRunLimit(I)I
    .locals 1
    .param p1, "run"    # I

    .prologue
    .line 465
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/text/Bidi;->length:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLimit()I

    move-result v0

    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 1
    .param p1, "run"    # I

    .prologue
    .line 472
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getStart()I

    move-result v0

    goto :goto_0
.end method

.method public isLeftToRight()Z
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMixed()Z
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Ljava/text/Bidi;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightToLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 495
    iget v1, p0, Ljava/text/Bidi;->direction:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
