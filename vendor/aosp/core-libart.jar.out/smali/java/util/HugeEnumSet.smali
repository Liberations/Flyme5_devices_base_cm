.class final Ljava/util/HugeEnumSet;
.super Ljava/util/EnumSet;
.source "HugeEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HugeEnumSet$1;,
        Ljava/util/HugeEnumSet$HugeEnumSetIterator;
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
.field private static final BIT_IN_LONG:I = 0x40


# instance fields
.field private bits:[J

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 43
    iput-object p2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    .line 44
    array-length v0, p2

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    .line 45
    return-void
.end method

.method static synthetic access$000(Ljava/util/HugeEnumSet;)[J
    .locals 1
    .param p0, "x0"    # Ljava/util/HugeEnumSet;

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;
    .locals 1
    .param p0, "x0"    # Ljava/util/HugeEnumSet;

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    iget-object v7, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 124
    .local v6, "ordinal":I
    div-int/lit8 v1, v6, 0x40

    .line 125
    .local v1, "index":I
    rem-int/lit8 v0, v6, 0x40

    .line 126
    .local v0, "inBits":I
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v7, v1

    .line 127
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long v2, v4, v8

    .line 128
    .local v2, "newBits":J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    .line 129
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    .line 130
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 131
    const/4 v7, 0x1

    .line 133
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-ne p1, p0, :cond_2

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 159
    :cond_1
    :goto_0
    return v0

    .line 142
    :cond_2
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_4

    move-object v3, p1

    .line 143
    check-cast v3, Ljava/util/EnumSet;

    .line 144
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v9, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-object v1, v3

    .line 146
    check-cast v1, Ljava/util/HugeEnumSet;

    .line 147
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 149
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v8, v2

    .line 150
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    or-long v4, v6, v8

    .line 151
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    .line 152
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v8, v2

    .line 153
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    .line 154
    const/4 v0, 0x1

    .line 148
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 169
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    .line 171
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/HugeEnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HugeEnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/HugeEnumSet;

    .line 205
    .local v0, "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/HugeEnumSet;->bits:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/HugeEnumSet;->bits:[J

    .line 206
    return-object v0
.end method

.method protected complement()V
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const-wide/16 v6, -0x1

    .line 175
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v3, v4

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 177
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v2

    xor-long v0, v4, v6

    .line 180
    .local v0, "b":J
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_0

    .line 181
    iget-object v4, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v4, v4

    rem-int/lit8 v4, v4, 0x40

    rsub-int/lit8 v4, v4, 0x40

    ushr-long v4, v6, v4

    and-long/2addr v0, v4

    .line 184
    :cond_0
    iget v4, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    .line 185
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v0, v4, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "b":J
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v3, 0x0

    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 196
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 197
    .local v2, "ordinal":I
    div-int/lit8 v1, v2, 0x40

    .line 198
    .local v1, "index":I
    rem-int/lit8 v0, v2, 0x40

    .line 199
    .local v0, "inBits":I
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

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
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v4

    .line 214
    :cond_1
    instance-of v6, p1, Ljava/util/HugeEnumSet;

    if-eqz v6, :cond_3

    move-object v1, p1

    .line 215
    check-cast v1, Ljava/util/HugeEnumSet;

    .line 216
    .local v1, "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<*>;"
    iget-object v6, v1, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 218
    iget-object v6, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v2, v6, v0

    .line 219
    .local v2, "setBits":J
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v6, v0

    and-long/2addr v6, v2

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    move v4, v5

    .line 220
    goto :goto_0

    .line 217
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    .end local v1    # "set":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<*>;"
    .end local v2    # "setBits":J
    :cond_3
    instance-of v6, p1, Ljava/util/EnumSet;

    if-nez v6, :cond_4

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 231
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 237
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 234
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    check-cast p1, Ljava/util/HugeEnumSet;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/HugeEnumSet;->bits:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

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
    .line 242
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    new-instance v0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v7, 0x0

    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 262
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v7

    .line 252
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 253
    .local v6, "ordinal":I
    div-int/lit8 v1, v6, 0x40

    .line 254
    .local v1, "index":I
    rem-int/lit8 v0, v6, 0x40

    .line 255
    .local v0, "inBits":I
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v8, v1

    .line 256
    .local v4, "oldBits":J
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v2, v4, v8

    .line 257
    .local v2, "newBits":J
    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    .line 258
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    .line 259
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 260
    const/4 v7, 0x1

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
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 267
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_3

    move-object v3, p1

    .line 272
    check-cast v3, Ljava/util/EnumSet;

    .line 273
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v3

    .line 277
    check-cast v1, Ljava/util/HugeEnumSet;

    .line 278
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    .line 279
    .local v0, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 280
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v8, v2

    .line 281
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long v4, v6, v8

    .line 282
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    .line 283
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v8, v2

    .line 284
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    .line 285
    const/4 v0, 0x1

    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_4

    move-object v3, p1

    .line 296
    check-cast v3, Ljava/util/EnumSet;

    .line 297
    .local v3, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v8, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 298
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    if-lez v8, :cond_1

    .line 299
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clear()V

    .line 300
    const/4 v0, 0x1

    .line 319
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_0
    :goto_0
    return v0

    .line 302
    .restart local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 306
    check-cast v1, Ljava/util/HugeEnumSet;

    .line 307
    .local v1, "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 309
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v8, v2

    .line 310
    .local v6, "oldBits":J
    iget-object v8, v1, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    and-long v4, v6, v8

    .line 311
    .local v4, "newBits":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    .line 312
    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v8, v2

    .line 313
    iget v8, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Ljava/util/HugeEnumSet;->size:I

    .line 314
    const/4 v0, 0x1

    .line 308
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "changed":Z
    .end local v1    # "hugeSet":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .end local v2    # "i":I
    .end local v3    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    .end local v4    # "newBits":J
    .end local v6    # "oldBits":J
    :cond_4
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    .local p1, "start":Ljava/lang/Enum;, "TE;"
    .local p2, "end":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    .line 325
    .local v8, "startOrdinal":I
    div-int/lit8 v7, v8, 0x40

    .line 326
    .local v7, "startIndex":I
    rem-int/lit8 v6, v8, 0x40

    .line 328
    .local v6, "startInBits":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 329
    .local v2, "endOrdinal":I
    div-int/lit8 v1, v2, 0x40

    .line 330
    .local v1, "endIndex":I
    rem-int/lit8 v0, v2, 0x40

    .line 332
    .local v0, "endInBits":I
    if-ne v7, v1, :cond_1

    .line 333
    const-wide/16 v10, -0x1

    sub-int v9, v0, v6

    add-int/lit8 v9, v9, 0x1

    rsub-int/lit8 v9, v9, 0x40

    ushr-long/2addr v10, v9

    shl-long v4, v10, v6

    .line 334
    .local v4, "range":J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 335
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    .line 336
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 356
    :cond_0
    return-void

    .line 339
    .end local v4    # "range":J
    :cond_1
    const-wide/16 v10, -0x1

    ushr-long/2addr v10, v6

    shl-long v4, v10, v6

    .line 340
    .restart local v4    # "range":J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 341
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    .line 342
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 346
    const-wide/16 v10, -0x1

    add-int/lit8 v9, v0, 0x1

    rsub-int/lit8 v9, v9, 0x40

    ushr-long v4, v10, v9

    .line 347
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 348
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v1

    or-long/2addr v10, v4

    aput-wide v10, v9, v1

    .line 349
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 350
    add-int/lit8 v3, v7, 0x1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v9, v1, -0x1

    if-gt v3, v9, :cond_0

    .line 351
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 352
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v10, -0x1

    aput-wide v10, v9, v3

    .line 353
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    return v0
.end method
