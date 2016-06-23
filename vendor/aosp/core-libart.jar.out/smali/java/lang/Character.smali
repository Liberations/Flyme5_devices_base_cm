.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Character;

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 129
    const-class v1, [C

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 503
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    .line 1606
    new-array v1, v4, [Ljava/lang/Character;

    sput-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    .line 1609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1610
    sget-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 1609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1612
    :cond_0
    return-void

    .line 503
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 1543
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->unicodeBlockForName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    return-void
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->unicodeBlockForCodePoint(I)I

    move-result v0

    return v0
.end method

.method public static charCount(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 1714
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkValidCodePoint(I)V
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    .line 1555
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_0
    return-void
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 1763
    if-nez p0, :cond_0

    .line 1764
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "seq == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1766
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1767
    .local v2, "len":I
    if-ltz p1, :cond_1

    if-lt p1, v2, :cond_2

    .line 1768
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1771
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1772
    .local v0, "high":C
    if-lt v1, v2, :cond_4

    .line 1779
    .end local v0    # "high":C
    :cond_3
    :goto_0
    return v0

    .line 1775
    .restart local v0    # "high":C
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1776
    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1777
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0
.end method

.method public static codePointAt([CI)I
    .locals 6
    .param p0, "seq"    # [C
    .param p1, "index"    # I

    .prologue
    .line 1805
    if-nez p0, :cond_0

    .line 1806
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "seq == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1808
    :cond_0
    array-length v2, p0

    .line 1809
    .local v2, "len":I
    if-ltz p1, :cond_1

    if-lt p1, v2, :cond_2

    .line 1810
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1813
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    aget-char v0, p0, p1

    .line 1814
    .local v0, "high":C
    if-lt v1, v2, :cond_4

    .line 1821
    .end local v0    # "high":C
    :cond_3
    :goto_0
    return v0

    .line 1817
    .restart local v0    # "high":C
    :cond_4
    aget-char v3, p0, v1

    .line 1818
    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1819
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0
.end method

.method public static codePointAt([CII)I
    .locals 4
    .param p0, "seq"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1850
    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    if-ltz p2, :cond_0

    array-length v3, p0

    if-le p2, v3, :cond_1

    .line 1851
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1854
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    aget-char v0, p0, p1

    .line 1855
    .local v0, "high":C
    if-lt v1, p2, :cond_3

    .line 1862
    .end local v0    # "high":C
    :cond_2
    :goto_0
    return v0

    .line 1858
    .restart local v0    # "high":C
    :cond_3
    aget-char v2, p0, v1

    .line 1859
    .local v2, "low":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1860
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 1888
    if-nez p0, :cond_0

    .line 1889
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "seq == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1891
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1892
    .local v1, "len":I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_1

    if-le p1, v1, :cond_2

    .line 1893
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1896
    :cond_2
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1897
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    .line 1904
    .end local v2    # "low":C
    :cond_3
    :goto_0
    return v2

    .line 1900
    .restart local v2    # "low":C
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1901
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1902
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_0
.end method

.method public static codePointBefore([CI)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "index"    # I

    .prologue
    .line 1930
    if-nez p0, :cond_0

    .line 1931
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "seq == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1933
    :cond_0
    array-length v1, p0

    .line 1934
    .local v1, "len":I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_1

    if-le p1, v1, :cond_2

    .line 1935
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1938
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1939
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    .line 1946
    .end local v2    # "low":C
    :cond_3
    :goto_0
    return v2

    .line 1942
    .restart local v2    # "low":C
    :cond_4
    aget-char v0, p0, p1

    .line 1943
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1944
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_0
.end method

.method public static codePointBefore([CII)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .prologue
    .line 1977
    if-nez p0, :cond_0

    .line 1978
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "seq == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1980
    :cond_0
    array-length v1, p0

    .line 1981
    .local v1, "len":I
    if-le p1, p2, :cond_1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    if-lt p2, v1, :cond_2

    .line 1982
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1985
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1986
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    if-ge p1, p2, :cond_4

    .line 1993
    .end local v2    # "low":C
    :cond_3
    :goto_0
    return v2

    .line 1989
    .restart local v2    # "low":C
    :cond_4
    aget-char v0, p0, p1

    .line 1990
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1991
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_0
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 2091
    if-nez p0, :cond_0

    .line 2092
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "seq == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2094
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2095
    .local v2, "len":I
    if-ltz p1, :cond_1

    if-gt p2, v2, :cond_1

    if-le p1, p2, :cond_2

    .line 2096
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2099
    :cond_2
    const/4 v3, 0x0

    .line 2100
    .local v3, "result":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 2101
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2102
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2103
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_3

    .line 2104
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2105
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2106
    add-int/lit8 v3, v3, 0x1

    .line 2110
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2112
    .end local v0    # "c":C
    :cond_4
    return v3
.end method

.method public static codePointCount([CII)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 2138
    array-length v4, p0

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2139
    add-int v1, p1, p2

    .line 2140
    .local v1, "endIndex":I
    const/4 v3, 0x0

    .line 2141
    .local v3, "result":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2142
    aget-char v0, p0, v2

    .line 2143
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2144
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 2145
    aget-char v0, p0, v2

    .line 2146
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2147
    add-int/lit8 v3, v3, 0x1

    .line 2151
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 2141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2153
    .end local v0    # "c":C
    :cond_1
    return v3
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "lhs"    # C
    .param p1, "rhs"    # C

    .prologue
    .line 1584
    sub-int v0, p0, p1

    return v0
.end method

.method public static digit(CI)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "radix"    # I

    .prologue
    .line 2323
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .locals 3
    .param p0, "codePoint"    # I
    .param p1, "radix"    # I

    .prologue
    const/4 v1, -0x1

    .line 2340
    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/16 v2, 0x24

    if-le p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 2355
    :cond_1
    :goto_0
    return v0

    .line 2343
    :cond_2
    const/16 v2, 0x80

    if-ge p0, v2, :cond_6

    .line 2345
    const/4 v0, -0x1

    .line 2346
    .local v0, "result":I
    const/16 v2, 0x30

    if-gt v2, p0, :cond_4

    const/16 v2, 0x39

    if-gt p0, v2, :cond_4

    .line 2347
    add-int/lit8 v0, p0, -0x30

    .line 2353
    :cond_3
    :goto_1
    if-lt v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    .line 2348
    :cond_4
    const/16 v2, 0x61

    if-gt v2, p0, :cond_5

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_5

    .line 2349
    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v0, v2, 0xa

    goto :goto_1

    .line 2350
    :cond_5
    const/16 v2, 0x41

    if-gt v2, p0, :cond_3

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_3

    .line 2351
    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v0, v2, 0xa

    goto :goto_1

    .line 2355
    .end local v0    # "result":I
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v0

    goto :goto_0
.end method

.method private static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .locals 1
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .prologue
    .line 2390
    const/4 v0, 0x2

    if-gt v0, p1, :cond_1

    const/16 v0, 0x24

    if-gt p1, v0, :cond_1

    .line 2391
    if-ltz p0, :cond_1

    if-ge p0, p1, :cond_1

    .line 2392
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    :goto_0
    int-to-char v0, v0

    .line 2395
    :goto_1
    return v0

    .line 2392
    :cond_0
    add-int/lit8 v0, p0, 0x61

    add-int/lit8 v0, v0, -0xa

    goto :goto_0

    .line 2395
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2529
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, -0x1

    .line 2540
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 2548
    :cond_0
    :goto_0
    return v1

    .line 2544
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getIcuDirectionality(I)B

    move-result v0

    .line 2545
    .local v0, "directionality":B
    if-ltz v0, :cond_0

    sget-object v2, Ljava/lang/Character;->DIRECTIONALITY:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2546
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    goto :goto_0
.end method

.method public static native getIcuDirectionality(I)B
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 5
    .param p0, "codePoint"    # I

    .prologue
    .line 2420
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2421
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 2422
    const/4 v1, 0x0

    .line 2429
    :cond_0
    :goto_0
    return-object v1

    .line 2424
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v1

    .line 2425
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2426
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "blockName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2444
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2467
    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    .line 2468
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2469
    add-int/lit8 v0, p0, -0x30

    .line 2487
    :goto_0
    return v0

    .line 2471
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 2472
    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    .line 2474
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 2475
    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    .line 2477
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2480
    :cond_3
    const v0, 0xff21

    if-lt p0, v0, :cond_4

    const v0, 0xff3a

    if-gt p0, v0, :cond_4

    .line 2481
    const v0, 0xff17

    sub-int v0, p0, v0

    goto :goto_0

    .line 2484
    :cond_4
    const v0, 0xff41

    if-lt p0, v0, :cond_5

    const v0, 0xff5a

    if-gt p0, v0, :cond_5

    .line 2485
    const v0, 0xff37

    sub-int v0, p0, v0

    goto :goto_0

    .line 2487
    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    goto :goto_0
.end method

.method private static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2500
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2511
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 2513
    .local v0, "type":I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 2516
    .end local v0    # "type":I
    :goto_0
    return v0

    .restart local v0    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native getTypeImpl(I)I
.end method

.method public static highSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2593
    shr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static native isAlphabetic(I)Z
.end method

.method public static isBmpCodePoint(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2618
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefined(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2631
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2644
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2658
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2671
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2672
    const/4 v0, 0x1

    .line 2677
    :goto_0
    return v0

    .line 2674
    :cond_0
    const/16 v0, 0x660

    if-ge p0, v0, :cond_1

    .line 2675
    const/4 v0, 0x0

    goto :goto_0

    .line 2677
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1653
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isISOControl(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2729
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 2741
    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_2

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdentifierIgnorable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2691
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2711
    const/16 v0, 0x600

    if-ge p0, v0, :cond_5

    .line 2712
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xe

    if-lt p0, v0, :cond_1

    const/16 v0, 0x1b

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_2

    const/16 v0, 0x9f

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0xad

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 2715
    :goto_0
    return v0

    .line 2712
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2715
    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static native isIdeographic(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2754
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 10
    .param p0, "codePoint"    # I

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2768
    const/16 v3, 0x40

    if-ge p0, v3, :cond_2

    .line 2769
    const-wide v4, 0x3ff00100fffc1ffL

    shl-long/2addr v6, p0

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    .line 2774
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2769
    goto :goto_0

    .line 2770
    :cond_2
    const/16 v3, 0x80

    if-ge p0, v3, :cond_3

    .line 2771
    const-wide v4, -0x7800000178000002L

    add-int/lit8 v3, p0, -0x40

    shl-long/2addr v6, v3

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 2773
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2774
    .local v0, "type":I
    if-lt v0, v1, :cond_4

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    :cond_4
    const/16 v3, 0x1a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x17

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_5

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    :cond_5
    if-eq v0, v4, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    if-ltz p0, :cond_6

    if-le p0, v4, :cond_0

    :cond_6
    const/16 v3, 0xe

    if-lt p0, v3, :cond_7

    const/16 v3, 0x1b

    if-le p0, v3, :cond_0

    :cond_7
    const/16 v3, 0x7f

    if-lt p0, v3, :cond_8

    const/16 v3, 0x9f

    if-le p0, v3, :cond_0

    :cond_8
    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isJavaIdentifierStart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2792
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 8
    .param p0, "codePoint"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2806
    const/16 v3, 0x40

    if-ge p0, v3, :cond_2

    .line 2807
    const/16 v3, 0x24

    if-ne p0, v3, :cond_1

    .line 2812
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2807
    goto :goto_0

    .line 2808
    :cond_2
    const/16 v3, 0x80

    if-ge p0, v3, :cond_3

    .line 2809
    const-wide v4, 0x7fffffe87fffffeL

    const-wide/16 v6, 0x1

    add-int/lit8 v3, p0, -0x40

    shl-long/2addr v6, v3

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 2811
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2812
    .local v0, "type":I
    if-lt v0, v1, :cond_4

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    :cond_4
    const/16 v3, 0x1a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x17

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isJavaLetter(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2827
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2842
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2853
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2865
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    .line 2866
    :cond_1
    const/4 v0, 0x1

    .line 2871
    :goto_0
    return v0

    .line 2868
    :cond_2
    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    .line 2869
    const/4 v0, 0x0

    goto :goto_0

    .line 2871
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2885
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    .line 2898
    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x5a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x61

    if-gt v1, p0, :cond_2

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2

    .line 2907
    :cond_1
    :goto_0
    return v0

    .line 2901
    :cond_2
    const/16 v1, 0x30

    if-gt v1, p0, :cond_3

    const/16 v1, 0x39

    if-le p0, v1, :cond_1

    .line 2904
    :cond_3
    const/16 v0, 0x80

    if-ge p0, v0, :cond_4

    .line 2905
    const/4 v0, 0x0

    goto :goto_0

    .line 2907
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1669
    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowerCase(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2921
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2934
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 2935
    const/4 v0, 0x1

    .line 2940
    :goto_0
    return v0

    .line 2937
    :cond_0
    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    .line 2938
    const/4 v0, 0x0

    goto :goto_0

    .line 2940
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2565
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 2577
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2951
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpaceChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2958
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2971
    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa0

    if-ne p0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 2990
    :cond_1
    :goto_0
    return v0

    .line 2974
    :cond_2
    const/16 v2, 0x1000

    if-lt p0, v2, :cond_1

    .line 2978
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_3

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_4

    :cond_3
    move v0, v1

    .line 2979
    goto :goto_0

    .line 2981
    :cond_4
    const/16 v2, 0x2000

    if-lt p0, v2, :cond_1

    .line 2984
    const v2, 0xffff

    if-gt p0, v2, :cond_6

    .line 2986
    const/16 v2, 0x200a

    if-le p0, v2, :cond_5

    const/16 v2, 0x2028

    if-eq p0, v2, :cond_5

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_5

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_5

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_5

    const/16 v2, 0x3000

    if-ne p0, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 2990
    :cond_6
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 1637
    const/high16 v0, 0x10000

    if-gt v0, p0, :cond_0

    const v0, 0x10ffff

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1677
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSurrogatePair(CC)Z
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C

    .prologue
    .line 1695
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTitleCase(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3004
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3016
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3031
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3044
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3059
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3072
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3086
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3099
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 3100
    const/4 v0, 0x1

    .line 3105
    :goto_0
    return v0

    .line 3102
    :cond_0
    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    .line 3103
    const/4 v0, 0x0

    goto :goto_0

    .line 3105
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 1623
    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3114
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3127
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_0

    const/16 v2, 0x20

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x9

    if-lt p0, v2, :cond_3

    const/16 v2, 0xd

    if-gt p0, v2, :cond_3

    :cond_1
    move v0, v1

    .line 3150
    :cond_2
    :goto_0
    return v0

    .line 3130
    :cond_3
    const/16 v2, 0x1000

    if-lt p0, v2, :cond_2

    .line 3134
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_4

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_5

    :cond_4
    move v0, v1

    .line 3135
    goto :goto_0

    .line 3137
    :cond_5
    const/16 v2, 0x2000

    if-lt p0, v2, :cond_2

    .line 3141
    const/16 v2, 0x2007

    if-eq p0, v2, :cond_2

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_2

    .line 3144
    const v2, 0xffff

    if-gt p0, v2, :cond_7

    .line 3146
    const/16 v2, 0x200a

    if-le p0, v2, :cond_6

    const/16 v2, 0x2028

    if-eq p0, v2, :cond_6

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_6

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_6

    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0

    .line 3150
    :cond_7
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static native isWhitespaceImpl(I)Z
.end method

.method public static lowSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2602
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 2180
    if-nez p0, :cond_0

    .line 2181
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "seq == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2183
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2184
    .local v2, "len":I
    if-ltz p1, :cond_1

    if-le p1, v2, :cond_2

    .line 2185
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2188
    :cond_2
    if-nez p2, :cond_4

    move v1, p1

    .line 2226
    :cond_3
    return v1

    .line 2192
    :cond_4
    if-lez p2, :cond_7

    .line 2193
    move v0, p2

    .line 2194
    .local v0, "codePoints":I
    move v1, p1

    .line 2195
    .local v1, "i":I
    :goto_0
    if-lez v0, :cond_3

    .line 2196
    add-int/lit8 v0, v0, -0x1

    .line 2197
    if-lt v1, v2, :cond_5

    .line 2198
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2200
    :cond_5
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2201
    add-int/lit8 v3, v1, 0x1

    .line 2202
    .local v3, "next":I
    if-ge v3, v2, :cond_6

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2203
    add-int/lit8 v1, v1, 0x1

    .line 2206
    .end local v3    # "next":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2211
    .end local v0    # "codePoints":I
    .end local v1    # "i":I
    :cond_7
    neg-int v0, p2

    .line 2212
    .restart local v0    # "codePoints":I
    move v1, p1

    .line 2213
    .restart local v1    # "i":I
    :cond_8
    :goto_1
    if-lez v0, :cond_3

    .line 2214
    add-int/lit8 v0, v0, -0x1

    .line 2215
    add-int/lit8 v1, v1, -0x1

    .line 2216
    if-gez v1, :cond_9

    .line 2217
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2219
    :cond_9
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2220
    add-int/lit8 v4, v1, -0x1

    .line 2221
    .local v4, "prev":I
    if-ltz v4, :cond_8

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2222
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 6
    .param p0, "seq"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .prologue
    .line 2263
    array-length v5, p0

    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2264
    add-int v1, p1, p2

    .line 2265
    .local v1, "end":I
    if-lt p3, p1, :cond_0

    if-le p3, v1, :cond_1

    .line 2266
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2269
    :cond_1
    if-nez p4, :cond_3

    move v2, p3

    .line 2307
    :cond_2
    return v2

    .line 2273
    :cond_3
    if-lez p4, :cond_6

    .line 2274
    move v0, p4

    .line 2275
    .local v0, "codePoints":I
    move v2, p3

    .line 2276
    .local v2, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 2277
    add-int/lit8 v0, v0, -0x1

    .line 2278
    if-lt v2, v1, :cond_4

    .line 2279
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2281
    :cond_4
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2282
    add-int/lit8 v3, v2, 0x1

    .line 2283
    .local v3, "next":I
    if-ge v3, v1, :cond_5

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2284
    add-int/lit8 v2, v2, 0x1

    .line 2287
    .end local v3    # "next":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2292
    .end local v0    # "codePoints":I
    .end local v2    # "i":I
    :cond_6
    neg-int v0, p4

    .line 2293
    .restart local v0    # "codePoints":I
    move v2, p3

    .line 2294
    .restart local v2    # "i":I
    :cond_7
    :goto_1
    if-lez v0, :cond_2

    .line 2295
    add-int/lit8 v0, v0, -0x1

    .line 2296
    add-int/lit8 v2, v2, -0x1

    .line 2297
    if-ge v2, p1, :cond_8

    .line 2298
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2300
    :cond_8
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2301
    add-int/lit8 v4, v2, -0x1

    .line 2302
    .local v4, "prev":I
    if-lt v4, p1, :cond_7

    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2303
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static reverseBytes(C)C
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 3164
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .locals 5
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    .prologue
    .line 2019
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2020
    if-nez p1, :cond_0

    .line 2021
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "dst == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2023
    :cond_0
    if-ltz p2, :cond_1

    array-length v3, p1

    if-lt p2, v3, :cond_2

    .line 2024
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2027
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2028
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_3

    .line 2029
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2033
    :cond_3
    const/high16 v3, 0x10000

    sub-int v0, p0, v3

    .line 2034
    .local v0, "cpPrime":I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2035
    .local v1, "high":I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2036
    .local v2, "low":I
    int-to-char v3, v1

    aput-char v3, p1, p2

    .line 2037
    add-int/lit8 v3, p2, 0x1

    int-to-char v4, v2

    aput-char v4, p1, v3

    .line 2038
    const/4 v3, 0x2

    .line 2042
    .end local v0    # "cpPrime":I
    .end local v1    # "high":I
    .end local v2    # "low":I
    :goto_0
    return v3

    .line 2041
    :cond_4
    int-to-char v3, p0

    aput-char v3, p1, p2

    .line 2042
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static toChars(I)[C
    .locals 7
    .param p0, "codePoint"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2059
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2060
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2061
    const/high16 v3, 0x10000

    sub-int v0, p0, v3

    .line 2062
    .local v0, "cpPrime":I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2063
    .local v1, "high":I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2064
    .local v2, "low":I
    const/4 v3, 0x2

    new-array v3, v3, [C

    int-to-char v4, v1

    aput-char v4, v3, v5

    int-to-char v4, v2

    aput-char v4, v3, v6

    .line 2066
    .end local v0    # "cpPrime":I
    .end local v1    # "high":I
    .end local v2    # "low":I
    :goto_0
    return-object v3

    :cond_0
    new-array v3, v6, [C

    int-to-char v4, p0

    aput-char v4, v3, v5

    goto :goto_0
.end method

.method public static toCodePoint(CC)I
    .locals 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    .prologue
    .line 1735
    and-int/lit16 v2, p0, 0x3ff

    shl-int/lit8 v0, v2, 0xa

    .line 1736
    .local v0, "h":I
    and-int/lit16 v1, p1, 0x3ff

    .line 1737
    .local v1, "l":I
    or-int v2, v0, v1

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    return v2
.end method

.method public static toLowerCase(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3178
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3193
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 3194
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 3199
    .end local p0    # "codePoint":I
    :cond_0
    :goto_0
    return p0

    .line 3196
    .restart local p0    # "codePoint":I
    :cond_1
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    .line 3199
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result p0

    goto :goto_0
.end method

.method private static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # C

    .prologue
    .line 3217
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3230
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3243
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3259
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 3274
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 3275
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 3280
    .end local p0    # "codePoint":I
    :cond_0
    :goto_0
    return p0

    .line 3277
    .restart local p0    # "codePoint":I
    :cond_1
    const/16 v0, 0xb5

    if-lt p0, v0, :cond_0

    .line 3280
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result p0

    goto :goto_0
.end method

.method private static native toUpperCaseImpl(I)I
.end method

.method private static native unicodeBlockForCodePoint(I)I
.end method

.method private static native unicodeBlockForName(Ljava/lang/String;)I
.end method

.method private static native unicodeScriptForCodePoint(I)I
.end method

.method private static native unicodeScriptForName(Ljava/lang/String;)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1600
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method


# virtual methods
.method public charValue()C
    .locals 1

    .prologue
    .line 1551
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .locals 2
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 1575
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2372
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "object":Ljava/lang/Object;
    iget-char v0, p1, Ljava/lang/Character;->value:C

    iget-char v1, p0, Ljava/lang/Character;->value:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2584
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3206
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
