.class public Llibcore/util/ZoneInfo$WallTime;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallTime"
.end annotation


# instance fields
.field private final calendar:Ljava/util/GregorianCalendar;

.field private gmtOffsetSeconds:I

.field private hour:I

.field private isDst:I

.field private minute:I

.field private month:I

.field private monthDay:I

.field private second:I

.field private weekDay:I

.field private year:I

.field private yearDay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {}, Llibcore/util/ZoneInfo$WallTime;->createGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    .line 364
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 365
    return-void
.end method

.method private copyFieldsFromCalendar()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    .line 821
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    .line 822
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    .line 823
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    .line 824
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    .line 825
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    .line 828
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    .line 830
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    .line 831
    return-void
.end method

.method private copyFieldsToCalendar()V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 812
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 813
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 814
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 815
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 816
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 817
    return-void
.end method

.method private static createGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    return-object v0
.end method

.method private doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;
    .locals 18
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "initialTransitionIndex"    # I
    .param p3, "wallTimeSeconds"    # I
    .param p4, "mustMatchDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 638
    const v8, 0x15180

    .line 639
    .local v8, "MAX_SEARCH_SECONDS":I
    const/4 v10, 0x0

    .local v10, "clampTop":Z
    const/4 v9, 0x0

    .line 640
    .local v9, "clampBottom":Z
    const/4 v12, 0x0

    .line 643
    .local v12, "loop":I
    :cond_0
    add-int/lit8 v2, v12, 0x1

    div-int/lit8 v15, v2, 0x2

    .line 644
    .local v15, "transitionIndexDelta":I
    rem-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 645
    mul-int/lit8 v15, v15, -0x1

    .line 647
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 650
    if-lez v15, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-gez v15, :cond_5

    if-eqz v9, :cond_5

    .line 726
    :cond_3
    :goto_0
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 727
    const/4 v13, 0x0

    :cond_4
    :goto_1
    return-object v13

    .line 656
    :cond_5
    add-int v6, p2, v15

    .line 657
    .local v6, "currentTransitionIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Llibcore/util/ZoneInfo$OffsetInterval;->create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;

    move-result-object v5

    .line 659
    .local v5, "offsetInterval":Llibcore/util/ZoneInfo$OffsetInterval;
    if-nez v5, :cond_8

    .line 662
    if-lez v15, :cond_6

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v10, v2

    .line 663
    if-gez v15, :cond_7

    const/4 v2, 0x1

    :goto_3
    or-int/2addr v9, v2

    .line 664
    goto :goto_0

    .line 662
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 663
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 668
    :cond_8
    if-eqz p4, :cond_a

    .line 671
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5, v2, v3}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-ne v2, v3, :cond_b

    .line 677
    :cond_9
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v14

    .line 678
    .local v14, "totalOffsetSeconds":I
    move/from16 v0, p3

    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v0, v14}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v13

    .line 681
    .local v13, "returnValue":I
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 682
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 683
    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 684
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1

    .line 696
    .end local v13    # "returnValue":I
    .end local v14    # "totalOffsetSeconds":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 697
    move-object/from16 v0, p0

    iget v7, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .local v7, "isDstToFind":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    .line 698
    invoke-direct/range {v2 .. v7}, Llibcore/util/ZoneInfo$WallTime;->tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;

    move-result-object v13

    .line 700
    .local v13, "returnValue":Ljava/lang/Integer;
    if-nez v13, :cond_4

    .line 707
    .end local v7    # "isDstToFind":I
    .end local v13    # "returnValue":Ljava/lang/Integer;
    :cond_b
    if-lez v15, :cond_d

    .line 711
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getEndWallTimeSeconds()J

    move-result-wide v2

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    const-wide/32 v16, 0x15180

    cmp-long v2, v2, v16

    if-lez v2, :cond_c

    const/4 v11, 0x1

    .line 713
    .local v11, "endSearch":Z
    :goto_4
    if-eqz v11, :cond_3

    .line 714
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 711
    .end local v11    # "endSearch":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 716
    :cond_d
    if-gez v15, :cond_3

    .line 717
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getStartWallTimeSeconds()J

    move-result-wide v16

    sub-long v2, v2, v16

    const-wide/32 v16, 0x15180

    cmp-long v2, v2, v16

    if-ltz v2, :cond_e

    const/4 v11, 0x1

    .line 719
    .restart local v11    # "endSearch":Z
    :goto_5
    if-eqz v11, :cond_3

    .line 723
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 717
    .end local v11    # "endSearch":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private static findTransitionIndex(Llibcore/util/ZoneInfo;I)I
    .locals 2
    .param p0, "timeZone"    # Llibcore/util/ZoneInfo;
    .param p1, "timeSeconds"    # I

    .prologue
    .line 841
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 842
    .local v0, "matchingRawTransition":I
    if-gez v0, :cond_0

    .line 843
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 845
    :cond_0
    return v0
.end method

.method private static getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I
    .locals 13
    .param p0, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p1, "startIndex"    # I
    .param p2, "isDst"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 565
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    new-array v5, v10, [I

    .line 566
    .local v5, "offsets":[I
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    new-array v6, v10, [Z

    .line 567
    .local v6, "seen":[Z
    const/4 v3, 0x0

    .line 569
    .local v3, "numFound":I
    const/4 v2, 0x0

    .line 570
    .local v2, "delta":I
    const/4 v1, 0x0

    .line 571
    .local v1, "clampTop":Z
    const/4 v0, 0x0

    .local v0, "clampBottom":Z
    move v4, v3

    .line 574
    .end local v3    # "numFound":I
    .local v4, "numFound":I
    :goto_0
    mul-int/lit8 v2, v2, -0x1

    .line 575
    if-ltz v2, :cond_0

    .line 576
    add-int/lit8 v2, v2, 0x1

    .line 579
    :cond_0
    add-int v8, p1, v2

    .line 580
    .local v8, "transitionIndex":I
    if-gez v2, :cond_1

    if-ge v8, v12, :cond_1

    .line 581
    const/4 v0, 0x1

    move v3, v4

    .line 603
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 605
    new-array v7, v3, [I

    .line 606
    .local v7, "toReturn":[I
    invoke-static {v5, v11, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 607
    return-object v7

    .line 583
    .end local v3    # "numFound":I
    .end local v7    # "toReturn":[I
    .restart local v4    # "numFound":I
    :cond_1
    if-lez v2, :cond_2

    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    array-length v10, v10

    if-lt v8, v10, :cond_2

    .line 584
    const/4 v1, 0x1

    move v3, v4

    .line 585
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_1

    .line 588
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_2
    if-ne v8, v12, :cond_3

    .line 589
    if-nez p2, :cond_6

    .line 592
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    aput v11, v5, v4

    goto :goto_1

    .line 596
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_3
    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v9, v10, v8

    .line 597
    .local v9, "type":B
    aget-boolean v10, v6, v9

    if-nez v10, :cond_6

    .line 598
    # getter for: Llibcore/util/ZoneInfo;->mIsDsts:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$400(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v10, v10, v9

    if-ne v10, p2, :cond_5

    .line 599
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    aget v10, v10, v9

    aput v10, v5, v4

    .line 601
    :goto_2
    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    goto :goto_1

    .end local v9    # "type":B
    :cond_4
    move v4, v3

    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    goto :goto_0

    .restart local v9    # "type":B
    :cond_5
    move v3, v4

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_2

    .end local v3    # "numFound":I
    .end local v9    # "type":B
    .restart local v4    # "numFound":I
    :cond_6
    move v3, v4

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_1
.end method

.method private tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;
    .locals 18
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "oldWallTimeSeconds"    # I
    .param p3, "targetInterval"    # Llibcore/util/ZoneInfo$OffsetInterval;
    .param p4, "transitionIndex"    # I
    .param p5, "isDstToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 535
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Llibcore/util/ZoneInfo$WallTime;->getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I

    move-result-object v8

    .line 536
    .local v8, "offsetsToTry":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    array-length v12, v8

    if-ge v6, v12, :cond_1

    .line 537
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static/range {p1 .. p1}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v12

    div-int/lit16 v9, v12, 0x3e8

    .line 538
    .local v9, "rawOffsetSeconds":I
    aget v12, v8, v6

    add-int v7, v9, v12

    .line 539
    .local v7, "jOffsetSeconds":I
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v11

    .line 540
    .local v11, "targetIntervalOffsetSeconds":I
    sub-int v5, v11, v7

    .line 541
    .local v5, "adjustmentSeconds":I
    move/from16 v0, p2

    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {v0, v5}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v4

    .line 542
    .local v4, "adjustedWallTimeSeconds":I
    int-to-long v12, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 544
    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v4, v11}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v10

    .line 548
    .local v10, "returnValue":I
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v14, v4

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 549
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 550
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 551
    move-object/from16 v0, p0

    iput v11, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 552
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 555
    .end local v4    # "adjustedWallTimeSeconds":I
    .end local v5    # "adjustmentSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v9    # "rawOffsetSeconds":I
    .end local v10    # "returnValue":I
    .end local v11    # "targetIntervalOffsetSeconds":I
    :goto_1
    return-object v12

    .line 536
    .restart local v4    # "adjustedWallTimeSeconds":I
    .restart local v5    # "adjustmentSeconds":I
    .restart local v7    # "jOffsetSeconds":I
    .restart local v9    # "rawOffsetSeconds":I
    .restart local v11    # "targetIntervalOffsetSeconds":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 555
    .end local v4    # "adjustedWallTimeSeconds":I
    .end local v5    # "adjustmentSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v9    # "rawOffsetSeconds":I
    .end local v11    # "targetIntervalOffsetSeconds":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getGmtOffset()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    return v0
.end method

.method public getIsDst()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    return v0
.end method

.method public getMonthDay()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    return v0
.end method

.method public getWeekDay()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    return v0
.end method

.method public getYearDay()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    return v0
.end method

.method public localtime(ILlibcore/util/ZoneInfo;)V
    .locals 10
    .param p1, "timeSeconds"    # I
    .param p2, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 382
    :try_start_0
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v5

    div-int/lit16 v1, v5, 0x3e8

    .line 386
    .local v1, "offsetSeconds":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 404
    .local v0, "isDst":B
    :goto_0
    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {p1, v1}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v4

    .line 407
    .local v4, "wallTimeSeconds":I
    iget-object v5, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 408
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 409
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 410
    iput v1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 414
    .end local v0    # "isDst":B
    .end local v1    # "offsetSeconds":I
    .end local v4    # "wallTimeSeconds":I
    :goto_1
    return-void

    .line 390
    .restart local v1    # "offsetSeconds":I
    :cond_0
    invoke-static {p2, p1}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    move-result v2

    .line 391
    .local v2, "transitionIndex":I
    if-gez v2, :cond_1

    .line 395
    const/4 v0, 0x0

    .restart local v0    # "isDst":B
    goto :goto_0

    .line 397
    .end local v0    # "isDst":B
    :cond_1
    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v5

    aget-byte v3, v5, v2

    .line 398
    .local v3, "transitionType":B
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v1, v5

    .line 399
    # getter for: Llibcore/util/ZoneInfo;->mIsDsts:[B
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$400(Llibcore/util/ZoneInfo;)[B

    move-result-object v5

    aget-byte v0, v5, v3
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "isDst":B
    goto :goto_0

    .line 411
    .end local v0    # "isDst":B
    .end local v1    # "offsetSeconds":I
    .end local v2    # "transitionIndex":I
    .end local v3    # "transitionType":B
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public mktime(Llibcore/util/ZoneInfo;)I
    .locals 14
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 442
    iget v11, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-lez v11, :cond_1

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    :goto_0
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 444
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsToCalendar()V

    .line 445
    iget-object v8, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 446
    .local v2, "longWallTimeSeconds":J
    const-wide/32 v10, -0x80000000

    cmp-long v8, v10, v2

    if-gtz v8, :cond_0

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v2, v10

    if-lez v8, :cond_3

    .line 507
    :cond_0
    :goto_1
    return v9

    .line 442
    .end local v2    # "longWallTimeSeconds":J
    :cond_1
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_2

    iput v9, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move v8, v9

    goto :goto_0

    :cond_2
    move v8, v10

    goto :goto_0

    .line 454
    .restart local v2    # "longWallTimeSeconds":J
    :cond_3
    long-to-int v7, v2

    .line 455
    .local v7, "wallTimeSeconds":I
    :try_start_0
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static {p1}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v8

    div-int/lit16 v4, v8, 0x3e8

    .line 456
    .local v4, "rawOffsetSeconds":I
    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v7, v4}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v5

    .line 458
    .local v5, "rawTimeSeconds":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p1}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_4

    .line 460
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gtz v8, :cond_0

    .line 464
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 465
    const/4 v8, 0x0

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 466
    iput v4, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    move v9, v5

    .line 467
    goto :goto_1

    .line 478
    :cond_4
    invoke-static {p1, v5}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    move-result v1

    .line 480
    .local v1, "initialTransitionIndex":I
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_5

    .line 486
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 488
    .local v6, "result":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    .line 496
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_5
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 498
    .restart local v6    # "result":Ljava/lang/Integer;
    if-nez v6, :cond_6

    .line 499
    const/4 v8, 0x0

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 502
    :cond_6
    if-nez v6, :cond_7

    .line 503
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 505
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_1

    .line 506
    .end local v1    # "initialTransitionIndex":I
    .end local v4    # "rawOffsetSeconds":I
    .end local v5    # "rawTimeSeconds":I
    .end local v6    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Llibcore/util/ZoneInfo$CheckedArithmeticException;
    goto :goto_1
.end method

.method public setGmtOffset(I)V
    .locals 0
    .param p1, "gmtoff"    # I

    .prologue
    .line 767
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 768
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 743
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    .line 744
    return-void
.end method

.method public setIsDst(I)V
    .locals 0
    .param p1, "isDst"    # I

    .prologue
    .line 763
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 764
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 747
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    .line 748
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 735
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    .line 736
    return-void
.end method

.method public setMonthDay(I)V
    .locals 0
    .param p1, "monthDay"    # I

    .prologue
    .line 739
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    .line 740
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 751
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    .line 752
    return-void
.end method

.method public setWeekDay(I)V
    .locals 0
    .param p1, "weekDay"    # I

    .prologue
    .line 755
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    .line 756
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 731
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    .line 732
    return-void
.end method

.method public setYearDay(I)V
    .locals 0
    .param p1, "yearDay"    # I

    .prologue
    .line 759
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    .line 760
    return-void
.end method
