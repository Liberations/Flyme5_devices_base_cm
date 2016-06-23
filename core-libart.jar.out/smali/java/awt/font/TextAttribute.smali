.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final BACKGROUND:Ljava/awt/font/TextAttribute;

.field public static final BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

.field public static final CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

.field public static final FAMILY:Ljava/awt/font/TextAttribute;

.field public static final FONT:Ljava/awt/font/TextAttribute;

.field public static final FOREGROUND:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION_FULL:Ljava/lang/Float;

.field public static final JUSTIFICATION_NONE:Ljava/lang/Float;

.field public static final KERNING:Ljava/awt/font/TextAttribute;

.field public static final KERNING_ON:Ljava/lang/Integer;

.field public static final LIGATURES:Ljava/awt/font/TextAttribute;

.field public static final LIGATURES_ON:Ljava/lang/Integer;

.field public static final NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

.field public static final POSTURE:Ljava/awt/font/TextAttribute;

.field public static final POSTURE_OBLIQUE:Ljava/lang/Float;

.field public static final POSTURE_REGULAR:Ljava/lang/Float;

.field public static final RUN_DIRECTION:Ljava/awt/font/TextAttribute;

.field public static final RUN_DIRECTION_LTR:Ljava/lang/Boolean;

.field public static final RUN_DIRECTION_RTL:Ljava/lang/Boolean;

.field public static final SIZE:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH_ON:Ljava/lang/Boolean;

.field public static final SUPERSCRIPT:Ljava/awt/font/TextAttribute;

.field public static final SUPERSCRIPT_SUB:Ljava/lang/Integer;

.field public static final SUPERSCRIPT_SUPER:Ljava/lang/Integer;

.field public static final SWAP_COLORS:Ljava/awt/font/TextAttribute;

.field public static final SWAP_COLORS_ON:Ljava/lang/Boolean;

.field public static final TRACKING:Ljava/awt/font/TextAttribute;

.field public static final TRACKING_LOOSE:Ljava/lang/Float;

.field public static final TRACKING_TIGHT:Ljava/lang/Float;

.field public static final TRANSFORM:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_ON:Ljava/lang/Integer;

.field public static final WEIGHT:Ljava/awt/font/TextAttribute;

.field public static final WEIGHT_BOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMILIGHT:Ljava/lang/Float;

.field public static final WEIGHT_EXTRABOLD:Ljava/lang/Float;

.field public static final WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_HEAVY:Ljava/lang/Float;

.field public static final WEIGHT_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_MEDIUM:Ljava/lang/Float;

.field public static final WEIGHT_REGULAR:Ljava/lang/Float;

.field public static final WEIGHT_SEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_ULTRABOLD:Ljava/lang/Float;

.field public static final WIDTH:Ljava/awt/font/TextAttribute;

.field public static final WIDTH_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_EXTENDED:Ljava/lang/Float;

.field public static final WIDTH_REGULAR:Ljava/lang/Float;

.field public static final WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

.field private static final serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f600000    # 0.875f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 54
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "background"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    .line 57
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "bidi_embedding"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    .line 60
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "char_replacement"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    .line 63
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "family"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    .line 66
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "font"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    .line 69
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "foreground"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    .line 72
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method highlight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    .line 76
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 80
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "justification"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    .line 83
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    .line 89
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    .line 96
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "kerning"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    .line 106
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "ligatures"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    .line 112
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "numeric_shaping"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    .line 115
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "posture"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    .line 118
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    .line 121
    new-instance v0, Ljava/lang/Float;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    .line 124
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "run_direction"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    .line 139
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    .line 142
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "strikethrough"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    .line 148
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "superscript"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    .line 151
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    .line 157
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "swap_colors"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    .line 163
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    .line 170
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "tracking"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    .line 173
    const v0, 0x3d23d70a    # 0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    .line 175
    const v0, -0x42dc28f6    # -0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    .line 178
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "transform"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    .line 181
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    .line 199
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    .line 205
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    .line 211
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    .line 217
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    .line 220
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "weight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    .line 226
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    .line 231
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    .line 237
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    .line 242
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    .line 248
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    .line 252
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    .line 256
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    .line 259
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    .line 262
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x40100000    # 2.25f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    .line 265
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    .line 271
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x40300000    # 2.75f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    .line 274
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "width"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    .line 280
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    .line 286
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    .line 291
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    .line 296
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    .line 301
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
