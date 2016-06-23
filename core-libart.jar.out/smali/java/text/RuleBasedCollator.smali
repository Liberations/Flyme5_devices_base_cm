.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "rules == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    :try_start_0
    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Ljava/text/ParseException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .locals 0
    .param p1, "wrapper"    # Llibcore/icu/RuleBasedCollatorICU;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 169
    .local v0, "clone":Ljava/text/RuleBasedCollator;
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 227
    instance-of v0, p1, Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
