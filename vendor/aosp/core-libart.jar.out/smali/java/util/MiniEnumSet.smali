.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$1;,
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 42
    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    .line 43
    return-void
.end method

.method static synthetic access$000(Ljava/util/MiniEnumSet;)J
    .locals 2
    .param p0, "x0"    # Ljava/util/MiniEnumSet;

    .prologue
    .line 24
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .locals 1
    .param p0, "x0"    # Ljava/util/MiniEnumSet;

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    iget-object v4, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 111
    .local v2, "oldBits":J
    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 112
    .local v0, "newBits":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 113
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 114
    iget v4, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/MiniEnumSet;->size:I

    .line 115
    const/4 v4, 0x1

    .line 117
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v6

    .line 125
    :cond_1
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_2

    move-object v1, p1

    .line 126
    check-cast v1, Ljava/util/EnumSet;

    .line 127
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v7, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v8, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-object v0, v1

    .line 129
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 130
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 131
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    or-long v2, v4, v8

    .line 132
    .local v2, "newBits":J
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    .line 134
    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_2
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 105
    return-void
.end method

.method complement()V
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v4, -0x1

    .line 247
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 248
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 249
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-object v2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v2, v2

    rsub-int/lit8 v2, v2, 0x40

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 250
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 252
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v2, 0x0

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 146
    check-cast v0, Ljava/lang/Enum;

    .line 147
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 148
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    instance-of v5, p1, Ljava/util/MiniEnumSet;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 157
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 158
    .local v0, "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    iget-wide v2, v0, Ljava/util/MiniEnumSet;->bits:J

    .line 159
    .local v2, "setBits":J
    iget-object v5, v0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v6, v2

    cmp-long v5, v6, v2

    if-eqz v5, :cond_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 161
    .end local v0    # "set":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<*>;"
    .end local v2    # "setBits":J
    :cond_3
    instance-of v5, p1, Ljava/util/EnumSet;

    if-nez v5, :cond_4

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    move v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    instance-of v3, p1, Ljava/util/EnumSet;

    if-nez v3, :cond_1

    .line 236
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 242
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 238
    check-cast v0, Ljava/util/EnumSet;

    .line 239
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v3, v0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    iget v3, p0, Ljava/util/MiniEnumSet;->size:I

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 242
    :cond_3
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v0, Ljava/util/MiniEnumSet;

    .end local v0    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-wide v6, v0, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    const/4 v6, 0x0

    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p1

    .line 221
    check-cast v0, Ljava/lang/Enum;

    .line 222
    .local v0, "element":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 223
    .local v1, "ordinal":I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 224
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v1

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    .line 225
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    .line 226
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 227
    iget v6, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    .line 228
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x0

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 169
    :cond_1
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_2

    move-object v1, p1

    .line 170
    check-cast v1, Ljava/util/EnumSet;

    .line 171
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v7, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 175
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 176
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 177
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    .line 178
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    .line 179
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    .line 181
    const/4 v6, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_2
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 190
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_3

    move-object v1, p1

    .line 191
    check-cast v1, Ljava/util/EnumSet;

    .line 192
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 193
    iget v8, p0, Ljava/util/MiniEnumSet;->size:I

    if-lez v8, :cond_0

    .line 194
    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    .line 211
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :goto_0
    return v6

    .restart local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_0
    move v6, v7

    .line 197
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 201
    check-cast v0, Ljava/util/MiniEnumSet;

    .line 202
    .local v0, "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 203
    .local v4, "oldBits":J
    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    and-long v2, v4, v8

    .line 204
    .local v2, "newBits":J
    cmp-long v8, v4, v2

    if-eqz v8, :cond_2

    .line 205
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    goto :goto_0

    :cond_2
    move v6, v7

    .line 209
    goto :goto_0

    .line 211
    .end local v0    # "miniSet":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .end local v1    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v2    # "newBits":J
    .end local v4    # "oldBits":J
    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    .local p1, "start":Ljava/lang/Enum;, "TE;"
    .local p2, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v0, v1, 0x1

    .line 257
    .local v0, "length":I
    const-wide/16 v4, -0x1

    rsub-int/lit8 v1, v0, 0x40

    ushr-long/2addr v4, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-long v2, v4, v1

    .line 258
    .local v2, "range":J
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 259
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    iput v1, p0, Ljava/util/MiniEnumSet;->size:I

    .line 260
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    return v0
.end method
