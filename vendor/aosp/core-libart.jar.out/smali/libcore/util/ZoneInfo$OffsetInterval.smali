.class Llibcore/util/ZoneInfo$OffsetInterval;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OffsetInterval"
.end annotation


# instance fields
.field private final endWallTimeSeconds:I

.field private final isDst:I

.field private final startWallTimeSeconds:I

.field private final totalOffsetSeconds:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "startWallTimeSeconds"    # I
    .param p2, "endWallTimeSeconds"    # I
    .param p3, "isDst"    # I
    .param p4, "totalOffsetSeconds"    # I

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput p1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    .line 918
    iput p2, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    .line 919
    iput p3, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    .line 920
    iput p4, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    .line 921
    return-void
.end method

.method public static create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;
    .locals 9
    .param p0, "timeZone"    # Llibcore/util/ZoneInfo;
    .param p1, "transitionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 887
    if-lt p1, v7, :cond_0

    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    array-length v6, v6

    if-lt p1, v6, :cond_1

    .line 888
    :cond_0
    const/4 v6, 0x0

    .line 911
    :goto_0
    return-object v6

    .line 891
    :cond_1
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v6

    div-int/lit16 v2, v6, 0x3e8

    .line 892
    .local v2, "rawOffsetSeconds":I
    if-ne p1, v7, :cond_2

    .line 893
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    aget v6, v6, v8

    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {v6, v2}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v0

    .line 894
    .local v0, "endWallTimeSeconds":I
    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    const/high16 v7, -0x80000000

    invoke-direct {v6, v7, v0, v8, v2}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    goto :goto_0

    .line 898
    .end local v0    # "endWallTimeSeconds":I
    :cond_2
    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v6

    aget-byte v5, v6, p1

    .line 899
    .local v5, "type":B
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    aget v6, v6, v5

    add-int v4, v6, v2

    .line 901
    .local v4, "totalOffsetSeconds":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    .line 903
    const v0, 0x7fffffff

    .line 908
    .restart local v0    # "endWallTimeSeconds":I
    :goto_1
    # getter for: Llibcore/util/ZoneInfo;->mIsDsts:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$400(Llibcore/util/ZoneInfo;)[B

    move-result-object v6

    aget-byte v1, v6, v5

    .line 909
    .local v1, "isDst":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    aget v6, v6, p1

    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {v6, v4}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v3

    .line 911
    .local v3, "startWallTimeSeconds":I
    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    invoke-direct {v6, v3, v0, v1, v4}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    goto :goto_0

    .line 905
    .end local v0    # "endWallTimeSeconds":I
    .end local v1    # "isDst":I
    .end local v3    # "startWallTimeSeconds":I
    :cond_3
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    aget v6, v6, v7

    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {v6, v4}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v0

    .restart local v0    # "endWallTimeSeconds":I
    goto :goto_1
.end method


# virtual methods
.method public containsWallTime(J)Z
    .locals 3
    .param p1, "wallTimeSeconds"    # J

    .prologue
    .line 924
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndWallTimeSeconds()J
    .locals 2

    .prologue
    .line 936
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getIsDst()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    return v0
.end method

.method public getStartWallTimeSeconds()J
    .locals 2

    .prologue
    .line 940
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalOffsetSeconds()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    return v0
.end method
