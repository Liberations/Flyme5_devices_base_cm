.class Ljava/text/AttributedString$AttributedIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributedIterator"
.end annotation


# instance fields
.field private attrString:Ljava/text/AttributedString;

.field private attributesAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private begin:I

.field private end:I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/text/AttributedString;)V
    .locals 2
    .param p1, "attrString"    # Ljava/text/AttributedString;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    .line 65
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 66
    iget-object v0, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 67
    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 3
    .param p1, "attrString"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "begin"    # I
    .param p4, "end"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-ltz p3, :cond_0

    iget-object v2, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p4, v2, :cond_0

    if-le p3, p4, :cond_1

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 76
    :cond_1
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 77
    iput p4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 78
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 79
    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    .line 80
    if-eqz p2, :cond_3

    .line 81
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 83
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    array-length v0, p2

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 84
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    iput-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    .line 88
    .end local v0    # "i":I
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_3
    return-void
.end method

.method private currentValue(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v2, 0x0

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 210
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_0

    .line 211
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    .line 214
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_1
    return-object v2
.end method

.method private inRange(Ljava/text/AttributedString$Range;)Z
    .locals 3
    .param p1, "range"    # Ljava/text/AttributedString$Range;

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/text/Annotation;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inRange(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 166
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_3

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_3

    .line 167
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_1

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_2

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_2

    :cond_1
    move v2, v3

    .line 174
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_2
    :goto_0
    return v2

    .line 169
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    :cond_3
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_0

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_0

    .line 170
    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_4

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_2

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private runLimit(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 255
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 256
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 258
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->end:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-gt v3, v4, :cond_1

    .line 268
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    .end local v2    # "result":I
    :cond_0
    :goto_1
    return v2

    .line 261
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    .restart local v2    # "result":I
    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_2

    .line 262
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    goto :goto_1

    .line 263
    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_0

    .line 266
    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    .line 267
    goto :goto_0
.end method

.method private runStart(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 303
    .local v2, "result":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 304
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedString$Range;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    .line 306
    .local v1, "range":Ljava/text/AttributedString$Range;
    iget v3, v1, Ljava/text/AttributedString$Range;->start:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-lt v3, v4, :cond_1

    .line 316
    .end local v1    # "range":Ljava/text/AttributedString$Range;
    .end local v2    # "result":I
    :cond_0
    :goto_1
    return v2

    .line 309
    .restart local v1    # "range":Ljava/text/AttributedString$Range;
    .restart local v2    # "result":I
    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_2

    .line 310
    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    goto :goto_1

    .line 311
    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_0

    .line 314
    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    .line 315
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedString$AttributedIterator;

    .line 102
    .local v0, "clone":Ljava/text/AttributedString$AttributedIterator;
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    return-object v0

    .line 107
    .end local v0    # "clone":Ljava/text/AttributedString$AttributedIterator;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public current()C
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 114
    const v0, 0xffff

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public first()C
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 121
    const v0, 0xffff

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 124
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-nez v4, :cond_1

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iget-object v5, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-nez v4, :cond_1

    .line 186
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 203
    :cond_0
    return-object v3

    .line 189
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 191
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 198
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    invoke-direct {p0, v2}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 223
    :cond_1
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 225
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v2, Ljava/util/HashMap;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/util/List<Ljava/text/AttributedString$Range;>;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    return v0
.end method

.method public getRunLimit()I
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 272
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 281
    :goto_0
    return v1

    .line 276
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 278
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_1

    .line 279
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runLimit(Ljava/util/List;)I

    move-result v1

    goto :goto_0
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    .line 286
    .local v2, "limit":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 289
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 290
    .local v3, "newLimit":I
    if-ge v3, v2, :cond_0

    .line 291
    move v2, v3

    goto :goto_0

    .line 294
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v3    # "newLimit":I
    :cond_1
    return v2
.end method

.method public getRunStart()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 320
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 329
    :goto_0
    return v1

    .line 324
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 326
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_1

    .line 327
    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runStart(Ljava/util/List;)I

    move-result v1

    goto :goto_0
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    .line 334
    .local v3, "start":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 337
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 338
    .local v2, "newStart":I
    if-le v2, v3, :cond_0

    .line 339
    move v3, v2

    goto :goto_0

    .line 342
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "newStart":I
    :cond_1
    return v3
.end method

.method public last()C
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    .line 347
    const v0, 0xffff

    .line 350
    :goto_0
    return v0

    .line 349
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 350
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 354
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 355
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 356
    const v0, 0xffff

    .line 358
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public previous()C
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-ne v0, v1, :cond_0

    .line 363
    const v0, 0xffff

    .line 365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 369
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le p1, v0, :cond_1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 372
    :cond_1
    iput p1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    .line 373
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_2

    .line 374
    const v0, 0xffff

    .line 376
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method
