.class public final Ljava/awt/font/NumericShaper;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_RANGES:I = 0x7ffff

.field public static final ARABIC:I = 0x2

.field public static final BENGALI:I = 0x10

.field public static final DEVANAGARI:I = 0x8

.field public static final EASTERN_ARABIC:I = 0x4

.field public static final ETHIOPIC:I = 0x10000

.field public static final EUROPEAN:I = 0x1

.field public static final GUJARATI:I = 0x40

.field public static final GURMUKHI:I = 0x20

.field private static final INDEX_ARABIC:I = 0x1

.field private static final INDEX_BENGALI:I = 0x4

.field private static final INDEX_DEVANAGARI:I = 0x3

.field private static final INDEX_EASTERN_ARABIC:I = 0x2

.field private static final INDEX_ETHIOPIC:I = 0x10

.field private static final INDEX_EUROPEAN:I = 0x0

.field private static final INDEX_GUJARATI:I = 0x6

.field private static final INDEX_GURMUKHI:I = 0x5

.field private static final INDEX_KANNADA:I = 0xa

.field private static final INDEX_KHMER:I = 0x11

.field private static final INDEX_LAO:I = 0xd

.field private static final INDEX_MALAYALAM:I = 0xb

.field private static final INDEX_MONGOLIAN:I = 0x12

.field private static final INDEX_MYANMAR:I = 0xf

.field private static final INDEX_ORIYA:I = 0x7

.field private static final INDEX_TAMIL:I = 0x8

.field private static final INDEX_TELUGU:I = 0x9

.field private static final INDEX_THAI:I = 0xc

.field private static final INDEX_TIBETAN:I = 0xe

.field public static final KANNADA:I = 0x400

.field public static final KHMER:I = 0x20000

.field public static final LAO:I = 0x2000

.field public static final MALAYALAM:I = 0x800

.field private static final MAX_INDEX:I = 0x13

.field public static final MONGOLIAN:I = 0x40000

.field public static final MYANMAR:I = 0x8000

.field public static final ORIYA:I = 0x80

.field private static final STRONG_TEXT_FLAGS:[I

.field public static final TAMIL:I = 0x100

.field public static final TELUGU:I = 0x200

.field public static final THAI:I = 0x1000

.field public static final TIBETAN:I = 0x4000

.field private static final serialVersionUID:J = -0x6f5695fe5d200b84L


# instance fields
.field private final contexts:[Ljava/lang/String;

.field private final digitsLowRanges:[I

.field private fContextual:Z

.field private fDefaultContextIndex:I

.field private fRanges:I

.field private fSingleRangeIndex:I

.field private key:I

.field private mask:I

.field private final scriptsRanges:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x800

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/awt/font/NumericShaper;->STRONG_TEXT_FLAGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x7fffffe
        0x7fffffe
        0x0
        0x4200400
        -0x800001
        -0x800001
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0xfffd
        -0x1
        -0x1
        -0x6000001
        0x30003
        0x401f
        0x0
        0x0
        0x0
        0x4000000
        -0x28c0
        -0x5
        -0x8001
        -0x400001
        -0x1
        -0x1
        -0x1
        -0x1
        -0x3f9
        -0x1
        -0x8001
        0x3ffffff
        0xffff
        -0x20000
        -0x1800001
        -0x2
        0x2ff
        0x40000000    # 2.0f
        -0xffb7
        0x1f07ff
        -0x37ffd7f1
        0x7fffffe
        0x7ff
        -0x12000
        -0x1
        -0x1
        0x203fffff
        -0x3ff3fa0
        -0x2c001
        0xffff
        -0x2000
        0x3fff
        -0x1
        0x2003f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x8
        -0x1c000001
        -0xfee1ff
        0x2001fff3
        -0x66014
        -0x1c3a0201
        -0x4f7fa67f
        0x7f3ffc3
        -0x67818
        -0x3c920201
        0x5e000001
        0x1cffc0
        -0x44018
        -0x1c120201
        0x11a01
        0xffc3
        -0x66014
        0x63edfdff
        -0x4f7fe67f
        0x3ffc3
        -0x29c23818
        -0x3c0038e8
        0x801dc6
        0x7ffc0
        -0x22012
        0x3effdff
        0x1e
        0xffc3
        -0x22014
        -0x1c100201
        0x40600ddf
        0xffc3
        -0x22014
        -0x3c000201
        0x801dc1
        0xffc3
        -0x3800014
        0x2ffbffff
        -0xfc7f81
        0x1c0000
        -0x2
        0xdffff
        0xfff807f
        0x0
        -0x10fda6a
        0x200decae
        0x33ff005f
        0x0
        -0x3000001
        -0x3ea00001    # -13.999999f
        -0x101
        -0x7ffff801
        0xf20
        -0x40000000    # -2.0f
        0x39fbf
        0x0
        -0x1
        0x10216fb
        0xffffff
        0x0
        0x0
        -0x1
        -0xffc1
        0x1fffffff
        -0x1
        -0x1
        -0x7c000001
        -0x1
        -0x1
        -0xf9
        -0x1
        0x3ffffff
        -0x1
        -0x1
        0x3d7f3dff
        -0x1
        -0xc201
        0x7f3dffff
        -0x8000c3
        -0x1
        -0xc20001
        -0x1
        0x7ffffff
        0x1fffffff
        0xffff
        -0x1
        -0x1
        0x1fffff
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffff
        0x7fffffe
        -0x1
        -0x1
        0x1ffff
        0x3dfff
        0x63ffff
        0x3ffff
        0x1dfff
        -0x1
        -0x3f800001    # -3.9999998f
        0x17f001bf
        0x3ff
        0x3ff0000
        -0x1
        -0x1
        0xffffff
        -0x1
        0x1ff
        0x0
        0x0
        0x1fffffff
        0x1fb0078
        -0x40
        0x1f3fff
        -0x1
        -0xfc01
        0x3ff03ff
        0x0
        -0x31800001
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
        -0x1
        -0x1
        0x3ffffff
        0x3f3fffff    # 0.74999994f
        -0x1
        -0x5500c0c1
        0x3fffffff    # 1.9999999f
        -0x1
        0x5fdfffff    # 3.22818E19f
        0xfcf1fdc
        0x1fdc1fff
        0xc000
        0x6c00
        0x0
        -0x7ffe0000
        0x1f0000
        0x0
        0x0
        0x0
        0x3e2ffc84
        -0xc0442b0
        0x3e0
        -0x1
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x400000
        -0x1
        0x7ffffff
        0x200000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x10000000
        -0x1
        -0x1
        0x3ff
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x8001
        0x7fffffff
        0x0
        -0x1
        -0x1
        -0x1
        0x1f
        -0x1
        -0xffc1
        -0x1
        0x803f
        0x7fffff
        0x7f7f7f7f
        0x7f7f7f7f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe0
        0x1f3e03fe
        -0x2
        -0x1
        -0x1f800001
        -0x2
        -0x1
        -0x8000001
        -0x20
        -0x1e001
        -0x1
        -0x1
        -0x8001
        0xffffff
        0x0
        -0x10000
        0x1fffffff
        -0x1
        0xf
        -0x70000001
        -0x1
        0x1ffff
        -0xf001
        0x7fffffff
        -0x1
        -0x1
        -0x1
        -0x7800001
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
        0x7fffffff
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x200000
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000000
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1fff
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x845
        0x9f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0xc001
        -0x1
        -0xf801
        -0x1
        -0x1
        0x3ffffff
        0x0
        -0x5f07ff81
        0x5f7ffdff
        -0x25
        -0x1
        -0x1
        0x3ffff
        -0x80000
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
        -0x10000
        -0x1
        -0x30001
        -0x1
        0xff
        0x1fff0000
        0x0
        0x0
        0x0
        -0x210000
        -0x1
        -0x1
        -0x1
        0x1fffffff
        0x0
        0x7fffffe
        0x7fffffe
        -0x40
        -0x1
        0x7fffffff
        0x1cfcfcfc
        0x0
    .end array-data
.end method

.method private constructor <init>(IIZ)V
    .locals 3
    .param p1, "ranges"    # I
    .param p2, "defaultContext"    # I
    .param p3, "isContextual"    # Z

    .prologue
    const/16 v1, 0x13

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    .line 239
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    .line 263
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EUROPEAN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ARABIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EASTERN_ARABIC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DEVANAGARI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "BENGALI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GURMUKHI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GUJARATI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ORIYA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TAMIL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TELUGU"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KANNADA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MALAYALAM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "THAI"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LAO"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TIBETAN"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MYANMAR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ETHIOPIC"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "KHMER"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MONGOLIAN"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    .line 447
    iput p1, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    .line 448
    invoke-direct {p0, p2}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    move-result v0

    iput v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    .line 449
    iput-boolean p3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    .line 451
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-nez v0, :cond_0

    .line 452
    invoke-direct {p0, p1}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    move-result v0

    iput v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    .line 454
    :cond_0
    return-void

    .line 206
    :array_0
    .array-data 4
        0x0
        0x24f
        0x600
        0x6ff
        0x600
        0x6ff
        0x900
        0x97f
        0x980
        0x9ff
        0xa00
        0xa7f
        0xa80
        0xaff
        0xb00
        0xb7f
        0xb80
        0xbff
        0xc00
        0xc7f
        0xc80
        0xcff
        0xd00
        0xd7f
        0xe00
        0xe7f
        0xe80
        0xeff
        0xf00
        0xfff
        0x1000
        0x109f
        0x1200
        0x137f
        0x1780
        0x17ff
        0x1800
        0x18af
    .end array-data

    .line 239
    :array_1
    .array-data 4
        0x0
        0x630
        0x630
        0x936
        0x9b6
        0xa36
        0xab6
        0xb36
        0xbb6
        0xc36
        0xcb6
        0xd36
        0xe20
        0xea0
        0xef0
        0x1010
        0x1338
        0x17b0
        0x17e0
    .end array-data
.end method

.method private contextualShape([CIII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I

    .prologue
    const/4 v7, 0x1

    .line 702
    const/16 v3, 0x39

    .line 703
    .local v3, "maxDigit":C
    const/16 v4, 0x30

    .line 706
    .local v4, "minDigit":C
    shl-int v5, v7, p4

    iget v6, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 707
    const/4 v0, 0x0

    .line 712
    .local v0, "currIndex":I
    :goto_0
    move v1, p2

    .local v1, "ind":I
    :goto_1
    add-int v5, p2, p3

    if-ge v1, v5, :cond_5

    .line 713
    aget-char v5, p1, v1

    if-gt v4, v5, :cond_3

    aget-char v5, p1, v1

    if-gt v5, v3, :cond_3

    .line 714
    const/16 v5, 0x10

    if-ne v0, v5, :cond_0

    aget-char v5, p1, v1

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1

    .line 715
    :cond_0
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    aget v5, v5, v0

    aget-char v6, p1, v1

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v1

    .line 712
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 709
    .end local v0    # "currIndex":I
    .end local v1    # "ind":I
    :cond_2
    move v0, p4

    .restart local v0    # "currIndex":I
    goto :goto_0

    .line 718
    .restart local v1    # "ind":I
    :cond_3
    aget-char v5, p1, v1

    invoke-direct {p0, v5}, Ljava/awt/font/NumericShaper;->isCharStrong(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 719
    aget-char v5, p1, v1

    invoke-direct {p0, v5}, Ljava/awt/font/NumericShaper;->getCharIndex(C)I

    move-result v2

    .line 720
    .local v2, "index":I
    if-eq v0, v2, :cond_1

    .line 721
    shl-int v5, v7, v2

    iget v6, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 722
    move v0, v2

    goto :goto_2

    .line 724
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 731
    .end local v2    # "index":I
    :cond_5
    return-void
.end method

.method private getCharIndex(C)I
    .locals 5
    .param p1, "ch"    # C

    .prologue
    .line 760
    const/4 v1, 0x0

    .line 761
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    .line 762
    mul-int/lit8 v2, v0, 0x2

    .line 763
    .local v2, "j":I
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    aget v3, v3, v2

    if-gt v3, p1, :cond_0

    iget-object v3, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_0

    .line 768
    .end local v0    # "i":I
    .end local v2    # "j":I
    :goto_1
    return v0

    .line 761
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_1
    move v0, v1

    .line 768
    goto :goto_1
.end method

.method public static getContextualShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I

    .prologue
    const/4 v1, 0x1

    .line 615
    const v0, 0x7ffff

    and-int/2addr p0, v0

    .line 616
    new-instance v0, Ljava/awt/font/NumericShaper;

    invoke-direct {v0, p0, v1, v1}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static getContextualShaper(II)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I
    .param p1, "defaultContext"    # I

    .prologue
    const v0, 0x7ffff

    .line 597
    and-int/2addr p0, v0

    .line 598
    and-int/2addr p1, v0

    .line 599
    new-instance v0, Ljava/awt/font/NumericShaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    return-object v0
.end method

.method private getIndexFromRange(I)I
    .locals 2
    .param p1, "range"    # I

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 469
    .local v0, "index":I
    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 470
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 471
    return v0

    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_2
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private getRangeFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 487
    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 488
    :cond_0
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 491
    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    return v0
.end method

.method public static getShaper(I)Ljava/awt/font/NumericShaper;
    .locals 3
    .param p0, "singleRange"    # I

    .prologue
    .line 641
    const v0, 0x7ffff

    and-int/2addr p0, v0

    .line 642
    new-instance v0, Ljava/awt/font/NumericShaper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    return-object v0
.end method

.method private isCharStrong(I)Z
    .locals 3
    .param p1, "chr"    # I

    .prologue
    const/4 v0, 0x1

    .line 780
    sget-object v1, Ljava/awt/font/NumericShaper;->STRONG_TEXT_FLAGS:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    rem-int/lit8 v2, p1, 0x20

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nonContextualShape([CII)V
    .locals 5
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 742
    const/16 v1, 0x39

    .line 743
    .local v1, "maxDigit":C
    iget v3, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_1

    const/16 v3, 0x31

    :goto_0
    int-to-char v2, v3

    .line 744
    .local v2, "minDigit":C
    move v0, p2

    .local v0, "ind":I
    :goto_1
    add-int v3, p2, p3

    if-ge v0, v3, :cond_2

    .line 745
    aget-char v3, p1, v0

    if-gt v2, v3, :cond_0

    aget-char v3, p1, v0

    if-gt v3, v1, :cond_0

    .line 746
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    iget v4, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    aget v3, v3, v4

    aget-char v4, p1, v0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 744
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 743
    .end local v0    # "ind":I
    .end local v2    # "minDigit":C
    :cond_1
    const/16 v3, 0x30

    goto :goto_0

    .line 750
    .restart local v0    # "ind":I
    .restart local v2    # "minDigit":C
    :cond_2
    return-void
.end method

.method private static rangeException(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal range argument value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 839
    invoke-direct {p0}, Ljava/awt/font/NumericShaper;->updateRangesFields()V

    .line 840
    return-void
.end method

.method private updateKeyMaskFields()V
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    .line 807
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-eqz v0, :cond_0

    .line 808
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    .line 809
    iget v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    iget v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    goto :goto_0
.end method

.method private updateRangesFields()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 789
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/2addr v0, v2

    iput v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    .line 790
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    .line 791
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-eqz v0, :cond_1

    .line 792
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/2addr v0, v2

    iput v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    .line 793
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    .line 798
    :goto_1
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 795
    :cond_1
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    .line 796
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    iput v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/awt/font/NumericShaper;->updateKeyMaskFields()V

    .line 825
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 826
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    if-nez p1, :cond_0

    .line 525
    :goto_0
    return v3

    .line 513
    :cond_0
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 514
    goto :goto_0

    .line 518
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/awt/font/NumericShaper;

    move-object v1, v0

    .line 519
    .local v1, "ns":Ljava/awt/font/NumericShaper;
    iget v4, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    iget v5, v1, Ljava/awt/font/NumericShaper;->fRanges:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    iget v5, v1, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    iget-boolean v5, v1, Ljava/awt/font/NumericShaper;->fContextual:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 522
    .end local v1    # "ns":Ljava/awt/font/NumericShaper;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getRanges()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 500
    const/16 v0, 0x11

    .line 501
    .local v0, "result":I
    iget v1, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    add-int/lit16 v0, v1, 0x20f

    .line 502
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    add-int v0, v1, v2

    .line 503
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 504
    return v0

    .line 503
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContextual()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    return v0
.end method

.method public shape([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->contextualShape([CIII)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->nonContextualShape([CII)V

    goto :goto_0
.end method

.method public shape([CIII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0, p4}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->contextualShape([CIII)V

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->nonContextualShape([CII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "[contextual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 551
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-eqz v3, :cond_0

    .line 552
    const-string v3, ", context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    iget v4, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_0
    const-string v3, ", range(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    if-eqz v3, :cond_3

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "index":I
    const/4 v1, 0x1

    .line 560
    .local v1, "isFirst":Z
    :goto_0
    const/16 v3, 0x13

    if-ge v0, v3, :cond_4

    .line 561
    iget v3, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 562
    if-eqz v1, :cond_2

    .line 563
    const/4 v1, 0x0

    .line 567
    :goto_1
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 572
    .end local v0    # "index":I
    .end local v1    # "isFirst":Z
    :cond_3
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    iget v4, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_4
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
