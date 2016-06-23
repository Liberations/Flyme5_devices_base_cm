.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;,
        Ljava/text/MessageFormat$FieldContainer;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private transient maxArgumentIndex:I

.field private maxOffset:I

.field private transient strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1209
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "argumentNumbers"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formats"

    const-class v4, [Ljava/text/Format;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "offsets"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/MessageFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 359
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 360
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x27

    .line 1196
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1197
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1198
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1199
    .local v0, "ch":C
    const/16 v3, 0x7b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_1

    .line 1200
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1202
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1197
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1207
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method

.method private decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "format"    # Ljava/text/Format;

    .prologue
    .line 1093
    const-string v0, ",number"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    :goto_0
    const/4 v0, 0x0

    .end local p2    # "format":Ljava/text/Format;
    :goto_1
    return-object v0

    .line 1096
    .restart local p2    # "format":Ljava/text/Format;
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    const-string v0, ",integer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    const-string v0, ",currency"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    const-string v0, ",percent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1103
    :cond_3
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1104
    check-cast p2, Ljava/text/DecimalFormat;

    .end local p2    # "format":Ljava/text/Format;
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "format"    # Ljava/text/Format;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1110
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, ",time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    :goto_0
    const/4 v0, 0x0

    .end local p2    # "format":Ljava/text/Format;
    :goto_1
    return-object v0

    .line 1112
    .restart local p2    # "format":Ljava/text/Format;
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    const-string v0, ",date"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1115
    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    const-string v0, ",time,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    const-string v0, ",date,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1123
    const-string v0, ",time,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1124
    :cond_4
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1126
    const-string v0, ",date,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1127
    :cond_5
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1129
    const-string v0, ",time,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1130
    :cond_6
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1132
    const-string v0, ",date,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1134
    :cond_7
    const-string v0, ",date,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    check-cast p2, Ljava/text/SimpleDateFormat;

    .end local p2    # "format":Ljava/text/Format;
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 718
    if-eqz p1, :cond_1

    .line 719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 720
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 721
    const-string v1, "null"

    aput-object v1, p1, v0

    .line 719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 13
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "position"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 555
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    new-instance v11, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 556
    .local v11, "passedField":Ljava/text/FieldPosition;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v9, v1, :cond_6

    .line 557
    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 560
    .local v2, "begin":I
    if-eqz p1, :cond_2

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 561
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    aget-object v7, p1, v1

    .line 569
    .local v7, "arg":Ljava/lang/Object;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v1, v9

    .line 570
    .local v8, "format":Ljava/text/Format;
    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 571
    :cond_0
    instance-of v1, v7, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 572
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 581
    :cond_1
    :goto_1
    instance-of v1, v8, Ljava/text/ChoiceFormat;

    if-eqz v1, :cond_5

    .line 582
    invoke-virtual {v8, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 583
    .local v12, "result":Ljava/lang/String;
    new-instance v10, Ljava/text/MessageFormat;

    invoke-direct {v10, v12}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 584
    .local v10, "mf":Ljava/text/MessageFormat;
    iget-object v1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 585
    invoke-virtual {v10, p1, p2, v11}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    .line 587
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    .line 556
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "format":Ljava/text/Format;
    .end local v10    # "mf":Ljava/text/MessageFormat;
    .end local v12    # "result":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 563
    :cond_2
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 564
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 565
    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 566
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    goto :goto_2

    .line 573
    .restart local v7    # "arg":Ljava/lang/Object;
    .restart local v8    # "format":Ljava/text/Format;
    :cond_3
    instance-of v1, v7, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 574
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_1

    .line 576
    :cond_4
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    goto :goto_2

    .line 589
    :cond_5
    invoke-virtual {v8, v7, p2, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    .line 591
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    goto :goto_2

    .line 594
    .end local v2    # "begin":I
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "format":Ljava/text/Format;
    :cond_6
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 595
    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    :cond_7
    return-object p2
.end method

.method private handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V
    .locals 3
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "argIndex"    # I
    .param p4, "position"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p5, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p5, :cond_1

    .line 609
    new-instance v0, Ljava/text/MessageFormat$FieldContainer;

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 615
    invoke-virtual {p4, p2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0
.end method

.method private handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V
    .locals 9
    .param p1, "format"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "begin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/Format;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    if-nez p4, :cond_1

    .line 668
    :cond_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    .line 656
    .local v3, "iterator":Ljava/text/AttributedCharacterIterator;
    :goto_0
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 657
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v4

    .line 658
    .local v4, "start":I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v1

    .line 659
    .local v1, "end":I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 660
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 663
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v3, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    .line 664
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Ljava/text/MessageFormat$FieldContainer;

    add-int v7, p3, v4

    add-int v8, p3, v1

    invoke-direct {v6, v7, v8, v0, v5}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 666
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v3, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_0
.end method

.method private match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;
    .param p3, "last"    # Z
    .param p4, "tokens"    # [Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 929
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "length":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .local v2, "offset":I
    const/4 v9, -0x1

    .line 930
    .local v9, "token":I
    :goto_0
    if-ge v2, v8, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    :cond_0
    array-length v7, p4

    .local v7, "i":I
    :cond_1
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    .line 934
    const/4 v1, 0x1

    aget-object v3, p4, v7

    const/4 v4, 0x0

    aget-object v0, p4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    move v9, v7

    .line 940
    :cond_2
    if-ne v9, v10, :cond_3

    move v9, v10

    .line 953
    .end local v9    # "token":I
    :goto_1
    return v9

    .line 943
    .restart local v9    # "token":I
    :cond_3
    aget-object v0, p4, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 944
    :goto_2
    if-ge v2, v8, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 948
    :cond_4
    if-ge v2, v8, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, "ch":C
    const/16 v0, 0x7d

    if-eq v6, v0, :cond_5

    if-nez p3, :cond_6

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_6

    .line 950
    :cond_5
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    .end local v6    # "ch":C
    :cond_6
    move v9, v10

    .line 953
    goto :goto_1
.end method

.method private parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 957
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 959
    .local v5, "offset":I
    if-ge v5, v3, :cond_0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "ch":C
    const/16 v8, 0x7d

    if-eq v1, v8, :cond_1

    const/16 v8, 0x2c

    if-eq v1, v8, :cond_1

    move v5, v6

    .line 960
    .end local v1    # "ch":C
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Missing element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 962
    .end local v5    # "offset":I
    .restart local v1    # "ch":C
    .restart local v6    # "offset":I
    :cond_1
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 963
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_2

    .line 964
    const/4 v8, 0x0

    .line 1029
    :goto_0
    return-object v8

    .line 966
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "date"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "number"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "choice"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v7

    .line 968
    .local v7, "type":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 969
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 971
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 972
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 973
    packed-switch v7, :pswitch_data_0

    .line 1025
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    :try_start_0
    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_1
    new-instance v8, Ljava/text/ChoiceFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :pswitch_0
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_5

    .line 977
    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_0

    .line 981
    :cond_5
    const/4 v8, 0x1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "full"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "long"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "medium"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "short"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v2

    .line 983
    .local v2, "dateStyle":I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 984
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 985
    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 987
    :cond_6
    packed-switch v2, :pswitch_data_1

    .line 1001
    :goto_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 989
    :pswitch_1
    const/4 v2, 0x0

    .line 990
    goto :goto_2

    .line 992
    :pswitch_2
    const/4 v2, 0x1

    .line 993
    goto :goto_2

    .line 995
    :pswitch_3
    const/4 v2, 0x2

    .line 996
    goto :goto_2

    .line 998
    :pswitch_4
    const/4 v2, 0x3

    goto :goto_2

    .line 1001
    :cond_7
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 1005
    .end local v2    # "dateStyle":I
    :pswitch_5
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_8

    .line 1006
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 1008
    :cond_8
    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "currency"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "percent"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "integer"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v4

    .line 1010
    .local v4, "numberStyle":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_9

    .line 1011
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 1012
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    iget-object v11, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v8, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto/16 :goto_0

    .line 1015
    :cond_9
    packed-switch v4, :pswitch_data_2

    .line 1021
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 1017
    :pswitch_6
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 1019
    :pswitch_7
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    .line 1026
    .end local v4    # "numberStyle":I
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 987
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1015
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1244
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1245
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v6, "argumentNumbers"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    check-cast v6, [I

    iput-object v6, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1246
    const-string v6, "formats"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/text/Format;

    check-cast v6, [Ljava/text/Format;

    iput-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1247
    const-string v6, "locale"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    iput-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1248
    const-string v6, "maxOffset"

    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1249
    const-string v6, "offsets"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 1250
    .local v4, "offsets":[I
    const-string v6, "pattern"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1252
    .local v5, "pattern":Ljava/lang/String;
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gez v6, :cond_1

    .line 1253
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1258
    .local v3, "length":I
    :goto_0
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 1259
    const/4 v2, 0x0

    .line 1260
    .local v2, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v6, :cond_3

    .line 1261
    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget v7, v4, v1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1262
    aget v2, v4, v1

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    :cond_0
    move v3, v7

    .line 1253
    goto :goto_0

    .line 1255
    :cond_1
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    aget v7, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    :goto_2
    add-int/2addr v3, v6

    .restart local v3    # "length":I
    goto :goto_0

    .end local v3    # "length":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    .line 1264
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "length":I
    :cond_3
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 1265
    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1268
    :cond_4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1220
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "argumentNumbers"

    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1221
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1222
    .local v0, "compatibleFormats":[Ljava/text/Format;
    const-string v7, "formats"

    invoke-virtual {v1, v7, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1223
    const-string v7, "locale"

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1224
    const-string v7, "maxOffset"

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1225
    const/4 v3, 0x0

    .line 1226
    .local v3, "offset":I
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v5, v7, 0x1

    .line 1227
    .local v5, "offsetsLength":I
    new-array v4, v5, [I

    .line 1228
    .local v4, "offsets":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1229
    .local v6, "pattern":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_0

    .line 1230
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 1231
    aput v3, v4, v2

    .line 1232
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1234
    :cond_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 1235
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_1
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    const-string v7, "pattern"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1239
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1240
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 20
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 387
    .local v9, "length":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 388
    .local v7, "buffer":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/text/ParsePosition;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/text/ParsePosition;-><init>(I)V

    .line 389
    .local v16, "position":Ljava/text/ParsePosition;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v11, "localStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 391
    .local v4, "argCount":I
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v6, v0, [I

    .line 392
    .local v6, "args":[I
    const/4 v12, -0x1

    .line 393
    .local v12, "maxArg":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v10, "localFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v9, :cond_7

    .line 395
    const/16 v17, 0x7b

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v7, v2}, Ljava/text/Format;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, "arg":I
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    .line 398
    .local v14, "offset":I
    if-lt v14, v9, :cond_1

    .line 399
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v14    # "offset":I
    .local v8, "ch":C
    .local v15, "offset":I
    :cond_0
    move v14, v15

    .line 403
    .end local v8    # "ch":C
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .restart local v8    # "ch":C
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    const/16 v17, 0x2c

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    .line 404
    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    const/16 v17, 0x39

    move/from16 v0, v17

    if-le v8, v0, :cond_2

    .line 405
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 408
    :cond_2
    mul-int/lit8 v17, v3, 0xa

    add-int/lit8 v18, v8, -0x30

    add-int v3, v17, v18

    .line 410
    if-ltz v3, :cond_3

    if-lt v15, v9, :cond_0

    .line 411
    :cond_3
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 414
    :cond_4
    add-int/lit8 v14, v15, -0x1

    .line 415
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;->parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_5

    .line 418
    array-length v0, v6

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 419
    .local v13, "newArgs":[I
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 420
    move-object v6, v13

    .line 422
    .end local v13    # "newArgs":[I
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "argCount":I
    .local v5, "argCount":I
    aput v3, v6, v4

    .line 423
    if-le v3, v12, :cond_8

    .line 424
    move v12, v3

    move v4, v5

    .line 427
    .end local v3    # "arg":I
    .end local v5    # "argCount":I
    .end local v8    # "ch":C
    .end local v14    # "offset":I
    .restart local v4    # "argCount":I
    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 430
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 431
    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 432
    new-array v0, v4, [Ljava/text/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/text/Format;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 433
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    .line 434
    move-object/from16 v0, p0

    iput v12, v0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    .line 435
    return-void

    .end local v4    # "argCount":I
    .restart local v3    # "arg":I
    .restart local v5    # "argCount":I
    .restart local v8    # "ch":C
    .restart local v14    # "offset":I
    :cond_8
    move v4, v5

    .end local v5    # "argCount":I
    .restart local v4    # "argCount":I
    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 446
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    .line 447
    .local v1, "clone":Ljava/text/MessageFormat;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    new-array v0, v3, [Ljava/text/Format;

    .line 448
    .local v0, "array":[Ljava/text/Format;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v3

    .local v2, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 449
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 450
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v0, v2

    goto :goto_0

    .line 453
    :cond_1
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 454
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 470
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 487
    :cond_0
    :goto_0
    return v3

    .line 473
    :cond_1
    instance-of v4, p1, Ljava/text/MessageFormat;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 476
    check-cast v0, Ljava/text/MessageFormat;

    .line 477
    .local v0, "format":Ljava/text/MessageFormat;
    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v5, v0, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v4, v5, :cond_0

    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v4, :cond_2

    .line 483
    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v1

    iget-object v5, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_2
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v5, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v5, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v5, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 702
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "object == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 512
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 513
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/MessageFormat$FieldContainer;>;"
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    new-instance v5, Ljava/text/FieldPosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, p1, v1, v5, v3}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 519
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/MessageFormat$FieldContainer;

    .line 523
    .local v2, "fc":Ljava/text/MessageFormat$FieldContainer;
    iget-object v5, v2, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v6, v2, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    iget v7, v2, Ljava/text/MessageFormat$FieldContainer;->start:I

    iget v8, v2, Ljava/text/MessageFormat$FieldContainer;->end:I

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 527
    .end local v2    # "fc":Ljava/text/MessageFormat$FieldContainer;
    :cond_1
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    return-object v5
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v0}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Format;

    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 4

    .prologue
    .line 745
    iget v2, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/text/Format;

    .line 746
    .local v0, "answer":[Ljava/text/Format;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 747
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_1

    .line 799
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 800
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    :cond_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 805
    iget-object v2, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 807
    :cond_2
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 808
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 810
    .end local v0    # "hashCode":I
    :cond_3
    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 825
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 826
    .local v1, "result":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 827
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Parse failure"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 829
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 852
    if-nez p1, :cond_0

    .line 853
    sget-object v6, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 900
    :goto_0
    return-object v6

    .line 855
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 856
    .local v2, "internalPos":Ljava/text/ParsePosition;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 857
    .local v4, "offset":I
    iget v9, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/Object;

    .line 858
    .local v6, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v9, :cond_6

    .line 859
    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v9, v1

    .line 860
    .local v7, "sub":Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 861
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    .line 862
    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 866
    iget-object v9, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v9, v1

    .line 867
    .local v0, "format":Ljava/text/Format;
    if-nez v0, :cond_4

    .line 868
    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 869
    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 870
    .local v3, "next":I
    if-ne v3, v11, :cond_2

    .line 871
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    .line 872
    goto :goto_0

    .line 874
    :cond_2
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, "parse":Ljava/lang/String;
    move v4, v3

    .line 889
    .end local v3    # "next":I
    .end local v5    # "parse":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v9, v9, v1

    aput-object v5, v6, v9

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 877
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 878
    .restart local v5    # "parse":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    .line 881
    .end local v5    # "parse":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 882
    invoke-virtual {v0, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v5

    .line 883
    .local v5, "parse":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-eq v9, v11, :cond_5

    .line 884
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    .line 885
    goto :goto_0

    .line 887
    :cond_5
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    goto :goto_2

    .line 891
    .end local v0    # "format":Ljava/text/Format;
    .end local v5    # "parse":Ljava/lang/Object;
    .end local v7    # "sub":Ljava/lang/String;
    :cond_6
    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_8

    .line 892
    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    aget-object v7, v9, v10

    .line 893
    .restart local v7    # "sub":Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 894
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    .line 895
    goto/16 :goto_0

    .line 897
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 899
    .end local v7    # "sub":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 924
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "format"    # Ljava/text/Format;

    .prologue
    .line 1041
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 1042
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2
    .param p1, "argIndex"    # I
    .param p2, "format"    # Ljava/text/Format;

    .prologue
    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 763
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 764
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4
    .param p1, "formats"    # [Ljava/text/Format;

    .prologue
    .line 1051
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v1, v2

    .line 1052
    .local v1, "min":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 1053
    array-length v1, p1

    .line 1055
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1056
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4
    .param p1, "formats"    # [Ljava/text/Format;

    .prologue
    .line 777
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    .line 779
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 780
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 777
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v7, 0x0

    .line 1069
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1070
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v3, :cond_2

    .line 1071
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v3, v1

    .line 1074
    .local v0, "format":Ljava/text/Format;
    instance-of v3, v0, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_1

    .line 1076
    :try_start_0
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/DecimalFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0    # "format":Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v6, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v2

    .line 1079
    .local v2, "npe":Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_1

    .line 1081
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "format":Ljava/text/Format;
    :cond_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_0

    .line 1083
    :try_start_1
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1085
    :catch_1
    move-exception v2

    .line 1086
    .restart local v2    # "npe":Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_1

    .line 1090
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x7d

    const/16 v11, 0x7b

    .line 1146
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1147
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v4, v10, :cond_a

    .line 1148
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1150
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1151
    iget-object v10, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v10, v4

    .line 1152
    .local v3, "format":Ljava/text/Format;
    const/4 v8, 0x0

    .line 1153
    .local v8, "pattern":Ljava/lang/String;
    instance-of v10, v3, Ljava/text/ChoiceFormat;

    if-eqz v10, :cond_4

    .line 1154
    const-string v10, ",choice,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    check-cast v3, Ljava/text/ChoiceFormat;

    .end local v3    # "format":Ljava/text/Format;
    invoke-virtual {v3}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    .line 1163
    :cond_0
    :goto_1
    if-eqz v8, :cond_9

    .line 1164
    const/4 v9, 0x0

    .line 1165
    .local v9, "quote":Z
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "length":I
    const/4 v2, 0x0

    .local v2, "count":I
    move v6, v5

    .line 1166
    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-ge v6, v7, :cond_9

    .line 1167
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1168
    .local v1, "ch":C
    const/16 v10, 0x27

    if-ne v1, v10, :cond_1

    .line 1169
    if-nez v9, :cond_7

    const/4 v9, 0x1

    .line 1171
    :cond_1
    :goto_3
    if-nez v9, :cond_3

    .line 1172
    if-ne v1, v11, :cond_2

    .line 1173
    add-int/lit8 v2, v2, 0x1

    .line 1175
    :cond_2
    if-ne v1, v12, :cond_3

    .line 1176
    if-lez v2, :cond_8

    .line 1177
    add-int/lit8 v2, v2, -0x1

    .line 1184
    :cond_3
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .line 1185
    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    .line 1156
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .end local v6    # "index":I
    .end local v7    # "length":I
    .end local v9    # "quote":Z
    .restart local v3    # "format":Ljava/text/Format;
    :cond_4
    instance-of v10, v3, Ljava/text/DecimalFormat;

    if-eqz v10, :cond_5

    .line 1157
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1158
    :cond_5
    instance-of v10, v3, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_6

    .line 1159
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1160
    :cond_6
    if-eqz v3, :cond_0

    .line 1161
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown format"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1169
    .end local v3    # "format":Ljava/text/Format;
    .restart local v1    # "ch":C
    .restart local v2    # "count":I
    .restart local v5    # "index":I
    .restart local v7    # "length":I
    .restart local v9    # "quote":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1179
    :cond_8
    const-string v10, "\'}"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    const/16 v1, 0x27

    goto :goto_4

    .line 1187
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .end local v5    # "index":I
    .end local v7    # "length":I
    .end local v9    # "quote":Z
    :cond_9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1189
    .end local v8    # "pattern":Ljava/lang/String;
    :cond_a
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_b

    .line 1190
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1192
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
