.class final enum Llibcore/reflect/AnnotationMember$DefaultValues;
.super Ljava/lang/Enum;
.source "AnnotationMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/reflect/AnnotationMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DefaultValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llibcore/reflect/AnnotationMember$DefaultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

.field public static final enum NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1, v2}, Llibcore/reflect/AnnotationMember$DefaultValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    const/4 v0, 0x1

    new-array v0, v0, [Llibcore/reflect/AnnotationMember$DefaultValues;

    sget-object v1, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    aput-object v1, v0, v2

    sput-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llibcore/reflect/AnnotationMember$DefaultValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/reflect/AnnotationMember$DefaultValues;

    return-object v0
.end method

.method public static values()[Llibcore/reflect/AnnotationMember$DefaultValues;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->$VALUES:[Llibcore/reflect/AnnotationMember$DefaultValues;

    invoke-virtual {v0}, [Llibcore/reflect/AnnotationMember$DefaultValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/reflect/AnnotationMember$DefaultValues;

    return-object v0
.end method
