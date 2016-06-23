.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Llibcore/icu/CollationElementIteratorICU;


# direct methods
.method constructor <init>(Llibcore/icu/CollationElementIteratorICU;)V
    .locals 0
    .param p1, "iterator"    # Llibcore/icu/CollationElementIteratorICU;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    .line 66
    return-void
.end method

.method public static final primaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    .prologue
    .line 129
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final secondaryOrder(I)S
    .locals 1
    .param p0, "order"    # I

    .prologue
    .line 153
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final tertiaryOrder(I)S
    .locals 1
    .param p0, "order"    # I

    .prologue
    .line 212
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getMaxExpansion(I)I
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 79
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->getOffset()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->previous()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->reset()V

    .line 143
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    .prologue
    .line 179
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setOffset(I)V

    .line 180
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .prologue
    .line 190
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/text/CharacterIterator;)V

    .line 191
    return-void
.end method
