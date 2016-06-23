.class public final Llibcore/reflect/AnnotationAccess;
.super Ljava/lang/Object;
.source "AnnotationAccess.java"


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_BUILD:B = 0x0t

.field private static final VISIBILITY_RUNTIME:B = 0x1t

.field private static final VISIBILITY_SYSTEM:B = 0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Llibcore/reflect/AnnotationAccess;->NO_ARGUMENTS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;
    .locals 11
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 636
    :cond_0
    return-object v6

    .line 618
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v4

    .line 619
    .local v4, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v4, p1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v7

    .line 620
    .local v7, "setIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v8

    .line 621
    .local v8, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 624
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 625
    .local v3, "annotationOffset":I
    invoke-virtual {v4, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v2

    .line 626
    .local v2, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v2}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    move-result-object v0

    .line 627
    .local v0, "annotation":Lcom/android/dex/Annotation;
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getVisibility()B

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 623
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 630
    :cond_3
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    move-result v9

    invoke-static {p0, v4, v9}, Llibcore/reflect/AnnotationAccess;->getAnnotationClass(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v1

    .line 632
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v1, :cond_2

    .line 633
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    move-result-object v9

    invoke-static {p0, v4, v1, v9}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;
    .locals 19
    .param p2, "dex"    # Lcom/android/dex/Dex;
    .param p3, "reader"    # Lcom/android/dex/EncodedValueReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "Lcom/android/dex/EncodedValueReader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 672
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readArray()I

    move-result v15

    .line 673
    .local v15, "size":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 674
    .local v6, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 675
    .local v5, "array":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 676
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v6, v1, v2}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v13, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 675
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 679
    .end local v5    # "array":Ljava/lang/Object;
    .end local v6    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i":I
    .end local v15    # "size":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 680
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    move-result v11

    .line 681
    .local v11, "fieldIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dex/FieldId;

    .line 682
    .local v10, "fieldId":Lcom/android/dex/FieldId;
    invoke-virtual/range {p2 .. p2}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v10}, Lcom/android/dex/FieldId;->getNameIndex()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 685
    .local v12, "fieldName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 686
    .local v9, "field":Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 721
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldId":Lcom/android/dex/FieldId;
    .end local v11    # "fieldIndex":I
    .end local v12    # "fieldName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 687
    .restart local v10    # "fieldId":Lcom/android/dex/FieldId;
    .restart local v11    # "fieldIndex":I
    .restart local v12    # "fieldName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 688
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    new-instance v8, Ljava/lang/NoSuchFieldError;

    invoke-direct {v8}, Ljava/lang/NoSuchFieldError;-><init>()V

    .line 689
    .local v8, "error":Ljava/lang/NoSuchFieldError;
    invoke-virtual {v8, v7}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 690
    throw v8

    .line 691
    .end local v7    # "e":Ljava/lang/NoSuchFieldException;
    .end local v8    # "error":Ljava/lang/NoSuchFieldError;
    :catch_1
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/IllegalAccessError;

    invoke-direct {v8}, Ljava/lang/IllegalAccessError;-><init>()V

    .line 693
    .local v8, "error":Ljava/lang/IllegalAccessError;
    invoke-virtual {v8, v7}, Ljava/lang/IllegalAccessError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 694
    throw v8

    .line 696
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .end local v8    # "error":Ljava/lang/IllegalAccessError;
    .end local v10    # "fieldId":Lcom/android/dex/FieldId;
    .end local v11    # "fieldIndex":I
    .end local v12    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 698
    move-object/from16 v4, p1

    .line 699
    .local v4, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v4, v2}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    goto :goto_1

    .line 700
    .end local v4    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    const-class v16, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 701
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readString()I

    move-result v14

    .line 702
    .local v14, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 703
    .end local v14    # "index":I
    :cond_4
    const-class v16, Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 704
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readType()I

    move-result v14

    .line 705
    .restart local v14    # "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 706
    .end local v14    # "index":I
    :cond_5
    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 707
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readByte()B

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_1

    .line 708
    :cond_6
    sget-object v16, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 709
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readShort()S

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_1

    .line 710
    :cond_7
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 711
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_1

    .line 712
    :cond_8
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 713
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_1

    .line 714
    :cond_9
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 715
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto/16 :goto_1

    .line 716
    :cond_a
    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 717
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_1

    .line 718
    :cond_b
    sget-object v16, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 719
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readChar()C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto/16 :goto_1

    .line 720
    :cond_c
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 721
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_1

    .line 724
    :cond_d
    new-instance v16, Ljava/lang/AssertionError;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected annotation value type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16
.end method

.method private static getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;
    .locals 14
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/android/dex/Annotation;"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v11, 0x0

    .line 185
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    move-result v3

    .line 186
    .local v3, "annotationSetOffset":I
    if-nez v3, :cond_1

    move-object v4, v11

    .line 207
    :cond_0
    :goto_0
    return-object v4

    .line 190
    :cond_1
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v7

    .line 191
    .local v7, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v6

    .line 192
    .local v6, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v6, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v9

    .line 193
    .local v9, "setIn":Lcom/android/dex/Dex$Section;
    invoke-static {p1}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "annotationInternalName":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v9}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v10

    .local v10, "size":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 195
    invoke-virtual {v9}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 196
    .local v2, "annotationOffset":I
    invoke-virtual {v6, v2}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    .line 200
    .local v0, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    move-result-object v4

    .line 201
    .local v4, "candidate":Lcom/android/dex/Annotation;
    invoke-virtual {v6}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/dex/Annotation;->getTypeIndex()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 202
    .local v5, "candidateInternalName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v0    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v2    # "annotationOffset":I
    .end local v4    # "candidate":Lcom/android/dex/Annotation;
    .end local v5    # "candidateInternalName":Ljava/lang/String;
    :cond_2
    move-object v4, v11

    .line 207
    goto :goto_0
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "annotationType == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 73
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 86
    :goto_0
    return-object v2

    .line 77
    :cond_1
    invoke-static {p1}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_3

    .line 79
    invoke-static {v1, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 81
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 86
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getAnnotationClass(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v1

    .line 585
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    new-instance v2, Ljava/lang/IncompatibleClassChangeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected annotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v1    # "result":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ncdfe":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    .end local v0    # "ncdfe":Ljava/lang/NoClassDefFoundError;
    :cond_0
    return-object v1
.end method

.method private static getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;
    .locals 15
    .param p0, "dex"    # Lcom/android/dex/Dex;
    .param p1, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "annotationName"    # Ljava/lang/String;
    .param p3, "expectedFieldCount"    # I

    .prologue
    .line 529
    invoke-static/range {p1 .. p1}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    move-result v4

    .line 530
    .local v4, "annotationSetOffset":I
    if-nez v4, :cond_1

    .line 531
    const/4 v9, 0x0

    .line 562
    :cond_0
    :goto_0
    return-object v9

    .line 534
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v11

    .line 535
    .local v11, "setIn":Lcom/android/dex/Dex$Section;
    const/4 v1, 0x0

    .line 538
    .local v1, "annotation":Lcom/android/dex/Annotation;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v11}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v12

    .local v12, "size":I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 539
    invoke-virtual {v11}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 540
    .local v3, "annotationOffset":I
    invoke-virtual {p0, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v2

    .line 541
    .local v2, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v2}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    move-result-object v5

    .line 542
    .local v5, "candidate":Lcom/android/dex/Annotation;
    invoke-virtual {p0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/dex/Annotation;->getTypeIndex()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 543
    .local v6, "candidateAnnotationName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 544
    move-object v1, v5

    .line 548
    .end local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v3    # "annotationOffset":I
    .end local v5    # "candidate":Lcom/android/dex/Annotation;
    .end local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 549
    const/4 v9, 0x0

    goto :goto_0

    .line 538
    .restart local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .restart local v3    # "annotationOffset":I
    .restart local v5    # "candidate":Lcom/android/dex/Annotation;
    .restart local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 552
    .end local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v3    # "annotationOffset":I
    .end local v5    # "candidate":Lcom/android/dex/Annotation;
    .end local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    move-result-object v9

    .line 553
    .local v9, "reader":Lcom/android/dex/EncodedValueReader;
    invoke-virtual {v9}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v7

    .line 554
    .local v7, "fieldCount":I
    invoke-virtual {p0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 555
    .local v10, "readerAnnotationName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 556
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 558
    :cond_5
    move/from16 v0, p3

    if-eq v7, v0, :cond_0

    .line 559
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I
    .locals 14
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;

    .prologue
    const/4 v12, 0x0

    .line 214
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v4

    .line 215
    .local v4, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDexAnnotationDirectoryOffset()I

    move-result v6

    .line 216
    .local v6, "directoryOffset":I
    if-nez v6, :cond_1

    move v0, v12

    .line 256
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_0
    :goto_0
    return v0

    .line 220
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v5

    .line 221
    .local v5, "directoryIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 222
    .local v3, "classSetOffset":I
    instance-of v13, p0, Ljava/lang/Class;

    if-eqz v13, :cond_2

    move v0, v3

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v8

    .line 227
    .local v8, "fieldsSize":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v11

    .line 228
    .local v11, "methodsSize":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 230
    instance-of v13, p0, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_4

    .line 231
    check-cast p0, Ljava/lang/reflect/Field;

    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDexFieldIndex()I

    move-result v7

    .line 232
    .local v7, "fieldIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 233
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 234
    .local v1, "candidateFieldIndex":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 235
    .local v0, "annotationSetOffset":I
    if-eq v1, v7, :cond_0

    .line 232
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v0    # "annotationSetOffset":I
    .end local v1    # "candidateFieldIndex":I
    :cond_3
    move v0, v12

    .line 240
    goto :goto_0

    .line 244
    .end local v7    # "fieldIndex":I
    .end local v9    # "i":I
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_4
    mul-int/lit8 v13, v8, 0x8

    invoke-virtual {v5, v13}, Lcom/android/dex/Dex$Section;->skip(I)V

    .line 246
    instance-of v13, p0, Ljava/lang/reflect/Method;

    if-eqz v13, :cond_5

    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDexMethodIndex()I

    move-result v10

    .line 248
    .local v10, "methodIndex":I
    :goto_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v11, :cond_6

    .line 249
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 250
    .local v2, "candidateMethodIndex":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "annotationSetOffset":I
    if-eq v2, v10, :cond_0

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 246
    .end local v0    # "annotationSetOffset":I
    .end local v2    # "candidateMethodIndex":I
    .end local v9    # "i":I
    .end local v10    # "methodIndex":I
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_5
    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDexMethodIndex()I

    move-result v10

    goto :goto_2

    .restart local v9    # "i":I
    .restart local v10    # "methodIndex":I
    :cond_6
    move v0, v12

    .line 256
    goto :goto_0
.end method

.method public static getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 112
    .local v2, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .local v5, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v5, :cond_3

    .line 115
    invoke-static {v5}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 116
    .restart local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 114
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 125
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    return-object v6
.end method

.method public static getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;

    move-result-object v0

    .line 170
    .local v0, "a":Lcom/android/dex/Annotation;
    if-eqz v0, :cond_0

    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, v0}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;
    .locals 2
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    move-result v0

    .line 161
    .local v0, "offset":I
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/reflect/AnnotationAccess;->annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v8, 0x0

    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 344
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    .line 345
    .local v2, "dex":Lcom/android/dex/Dex;
    const-string v9, "Ldalvik/annotation/AnnotationDefault;"

    invoke-static {v2, v0, v9}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v6

    .line 347
    .local v6, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v6, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v8

    .line 351
    :cond_1
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v3

    .line 352
    .local v3, "fieldCount":I
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/Class;->getDexTypeIndex()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 353
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "annotation value type != annotation class"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 356
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/dex/Dex;->findStringIndex(Ljava/lang/String;)I

    move-result v5

    .line 357
    .local v5, "methodNameIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 358
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v1

    .line 359
    .local v1, "candidateNameIndex":I
    if-ne v1, v5, :cond_3

    .line 360
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 361
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v7, v2, v6}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 363
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .locals 1
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 265
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :goto_0
    return-object p0

    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_0
    check-cast p0, Ljava/lang/reflect/Member;

    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 382
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v2, "Ldalvik/annotation/EnclosingClass;"

    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 384
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    .line 385
    const/4 v2, 0x0

    .line 387
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readType()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method

.method public static getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/AccessibleObject;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 400
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v2, "Ldalvik/annotation/EnclosingMethod;"

    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 402
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    .line 403
    const/4 v2, 0x0

    .line 405
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    move-result v2

    invoke-static {p0, v0, v2}, Llibcore/reflect/AnnotationAccess;->indexToMethod(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    goto :goto_0
.end method

.method public static getExceptions(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/Class;
    .locals 4
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v1

    .line 457
    .local v1, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 458
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v3, "Ldalvik/annotation/Throws;"

    invoke-static {v0, p0, v3}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v2

    .line 460
    .local v2, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v2, :cond_0

    .line 461
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 463
    :goto_0
    return-object v3

    :cond_0
    const-class v3, [Ljava/lang/Class;

    invoke-static {v1, v3, v0, v2}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    check-cast v3, [Ljava/lang/Class;

    goto :goto_0
.end method

.method public static getInnerClassFlags(Ljava/lang/Class;I)I
    .locals 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 472
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v2, "Ldalvik/annotation/InnerClass;"

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 474
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    .line 478
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 477
    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 478
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    move-result p1

    goto :goto_0
.end method

.method public static getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 487
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v3, "Ldalvik/annotation/InnerClass;"

    const/4 v4, 0x2

    invoke-static {v0, p0, v3, v4}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 489
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-object v2

    .line 492
    :cond_1
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 493
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    .line 494
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 495
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_0

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2, v0, v1}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 417
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v2, "Ldalvik/annotation/MemberClasses;"

    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 419
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    .line 420
    sget-object v2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 422
    :goto_0
    return-object v2

    :cond_0
    const-class v2, [Ljava/lang/Class;

    invoke-static {p0, v2, v0, v1}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    check-cast v2, [Ljava/lang/Class;

    goto :goto_0
.end method

.method private static getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;
    .locals 2
    .param p0, "dex"    # Lcom/android/dex/Dex;
    .param p1, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "annotationName"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    move-result-object v0

    .line 572
    .local v0, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 576
    .end local v0    # "reader":Lcom/android/dex/EncodedValueReader;
    :goto_0
    return-object v0

    .line 575
    .restart local v0    # "reader":Lcom/android/dex/EncodedValueReader;
    :cond_0
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    goto :goto_0
.end method

.method public static getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
    .locals 24
    .param p1, "methodDexIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)[[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v6

    .line 276
    .local v6, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v6}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/dex/MethodId;

    invoke-virtual/range {v22 .. v22}, Lcom/android/dex/MethodId;->getProtoIndex()I

    move-result v17

    .line 277
    .local v17, "protoIndex":I
    invoke-virtual {v6}, Lcom/android/dex/Dex;->protoIds()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/dex/ProtoId;

    .line 278
    .local v16, "proto":Lcom/android/dex/ProtoId;
    invoke-virtual/range {v16 .. v16}, Lcom/android/dex/ProtoId;->getParametersOffset()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    move-result-object v14

    .line 279
    .local v14, "parametersList":Lcom/android/dex/TypeList;
    invoke-virtual {v14}, Lcom/android/dex/TypeList;->getTypes()[S

    move-result-object v20

    .line 280
    .local v20, "types":[S
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 282
    .local v21, "typesCount":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDexAnnotationDirectoryOffset()I

    move-result v8

    .line 283
    .local v8, "directoryOffset":I
    if-nez v8, :cond_0

    .line 284
    const/16 v22, 0x0

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v22

    const-class v23, Ljava/lang/annotation/Annotation;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[Ljava/lang/annotation/Annotation;

    .line 322
    :goto_0
    return-object v22

    .line 287
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v7

    .line 288
    .local v7, "directoryIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 289
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v9

    .line 290
    .local v9, "fieldsSize":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v11

    .line 291
    .local v11, "methodsSize":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v15

    .line 293
    .local v15, "parametersSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 294
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 295
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 293
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 298
    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_2

    .line 299
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 300
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    .line 298
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 303
    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_5

    .line 304
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 305
    .local v5, "candidateMethodDexIndex":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 306
    .local v3, "annotationSetRefListOffset":I
    move/from16 v0, p1

    if-eq v5, v0, :cond_3

    .line 303
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 310
    :cond_3
    invoke-virtual {v6, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v18

    .line 311
    .local v18, "refList":Lcom/android/dex/Dex$Section;
    invoke-virtual/range {v18 .. v18}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v13

    .line 312
    .local v13, "parameterCount":I
    new-array v0, v13, [[Ljava/lang/annotation/Annotation;

    move-object/from16 v19, v0

    .line 313
    .local v19, "result":[[Ljava/lang/annotation/Annotation;
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_4
    if-ge v12, v13, :cond_4

    .line 314
    invoke-virtual/range {v18 .. v18}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 315
    .local v2, "annotationSetOffset":I
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Llibcore/reflect/AnnotationAccess;->annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 317
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/annotation/Annotation;

    aput-object v22, v19, v12

    .line 313
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v2    # "annotationSetOffset":I
    .end local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :cond_4
    move-object/from16 v22, v19

    .line 319
    goto :goto_0

    .line 322
    .end local v3    # "annotationSetRefListOffset":I
    .end local v5    # "candidateMethodDexIndex":I
    .end local v12    # "p":I
    .end local v13    # "parameterCount":I
    .end local v18    # "refList":Lcom/android/dex/Dex$Section;
    .end local v19    # "result":[[Ljava/lang/annotation/Annotation;
    :cond_5
    const/16 v22, 0x0

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v22

    const-class v23, Ljava/lang/annotation/Annotation;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[Ljava/lang/annotation/Annotation;

    goto/16 :goto_0
.end method

.method public static getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 10
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;

    .prologue
    .line 433
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v3

    .line 434
    .local v3, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    .line 435
    .local v2, "dex":Lcom/android/dex/Dex;
    const-string v9, "Ldalvik/annotation/Signature;"

    invoke-static {v2, p0, v9}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    move-result-object v6

    .line 437
    .local v6, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v6, :cond_0

    .line 438
    const/4 v9, 0x0

    .line 445
    :goto_0
    return-object v9

    .line 440
    :cond_0
    const-class v9, [Ljava/lang/String;

    invoke-static {v3, v9, v2, v6}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v1, v9

    check-cast v1, [Ljava/lang/String;

    .line 441
    .local v1, "array":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v7, "result":Ljava/lang/StringBuilder;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    .line 443
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static indexToMethod(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/reflect/AccessibleObject;
    .locals 9
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "methodIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/reflect/AccessibleObject;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->declaringClassIndexFromMethodIndex(I)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    .line 597
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v5

    .line 599
    .local v5, "types":[S
    array-length v6, v5

    new-array v4, v6, [Ljava/lang/Class;

    .line 600
    .local v4, "parametersArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 601
    aget-short v6, v5, v2

    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    :cond_0
    :try_start_0
    const-string v6, "<init>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/IncompatibleClassChangeError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x1

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "annotationType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_1
    :goto_0
    return v1

    .line 141
    :cond_2
    invoke-static {p1}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 143
    invoke-static {v0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 149
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAnonymousClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 506
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string v3, "Ldalvik/annotation/InnerClass;"

    const/4 v4, 0x2

    invoke-static {v0, p0, v3, v4}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    .line 508
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v2

    .line 511
    :cond_1
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 512
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    .line 513
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 514
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInherited(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-static {p0, v0}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;
    .locals 12
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p3, "reader"    # Lcom/android/dex/EncodedValueReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/android/dex/EncodedValueReader;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v1

    .line 648
    .local v1, "fieldCount":I
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v9

    invoke-virtual {p0, p1, v9}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v9

    if-eq p2, v9, :cond_0

    .line 649
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "annotation value type != return type"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 651
    :cond_0
    new-array v3, v1, [Llibcore/reflect/AnnotationMember;

    .line 652
    .local v3, "members":[Llibcore/reflect/AnnotationMember;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 653
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v5

    .line 654
    .local v5, "name":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 657
    .local v6, "nameString":Ljava/lang/String;
    :try_start_0
    sget-object v9, Llibcore/reflect/AnnotationAccess;->NO_ARGUMENTS:[Ljava/lang/Class;

    invoke-virtual {p2, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 662
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 663
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v7, p1, p3}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    move-result-object v8

    .line 664
    .local v8, "value":Ljava/lang/Object;
    new-instance v9, Llibcore/reflect/AnnotationMember;

    invoke-direct {v9, v6, v8, v7, v4}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v9, v3, v2

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/IncompatibleClassChangeError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 666
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "name":I
    .end local v6    # "nameString":Ljava/lang/String;
    :cond_1
    invoke-static {p2, v3}, Llibcore/reflect/AnnotationFactory;->createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    return-object v9
.end method

.method private static toAnnotationInstance(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p2, "annotation"    # Lcom/android/dex/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/android/dex/Annotation;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
