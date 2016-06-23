.class public final Llibcore/icu/CollationElementIteratorICU;
.super Ljava/lang/Object;
.source "CollationElementIteratorICU.java"


# static fields
.field private static final PRIMARY_ORDER_MASK_:I = -0x10000

.field private static final PRIMARY_ORDER_SHIFT_:I = 0x10

.field private static final SECONDARY_ORDER_MASK_:I = 0xff00

.field private static final SECONDARY_ORDER_SHIFT_:I = 0x8

.field private static final TERTIARY_ORDER_MASK_:I = 0xff

.field private static final UNSIGNED_16_BIT_MASK_:I = 0xffff


# instance fields
.field private final address:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide p1, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    .line 156
    return-void
.end method

.method public static getInstance(JLjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .locals 4
    .param p0, "collatorAddress"    # J
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeCollation;->getCollationElementIterator(JLjava/lang/String;)J

    move-result-wide v0

    .line 151
    .local v0, "iteratorAddress":J
    new-instance v2, Llibcore/icu/CollationElementIteratorICU;

    invoke-direct {v2, v0, v1}, Llibcore/icu/CollationElementIteratorICU;-><init>(J)V

    return-object v2
.end method

.method public static primaryOrder(I)I
    .locals 2
    .param p0, "order"    # I

    .prologue
    .line 125
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static secondaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    .prologue
    .line 136
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static tertiaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    .prologue
    .line 146
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->closeElements(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getMaxExpansion(I)I
    .locals 2
    .param p1, "order"    # I

    .prologue
    .line 81
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->getMaxExpansion(JI)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->next(J)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->previous(J)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->reset(J)V

    .line 47
    return-void
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 115
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setOffset(JI)V

    .line 116
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setText(JLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .prologue
    .line 94
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeCollation;->setText(JLjava/lang/String;)V

    .line 95
    return-void
.end method
