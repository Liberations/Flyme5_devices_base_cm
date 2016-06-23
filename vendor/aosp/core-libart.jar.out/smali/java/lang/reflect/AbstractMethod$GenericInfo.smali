.class final Ljava/lang/reflect/AbstractMethod$GenericInfo;
.super Ljava/lang/Object;
.source "AbstractMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/AbstractMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GenericInfo"
.end annotation


# instance fields
.field final formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end field

.field final genericExceptionTypes:Llibcore/reflect/ListOfTypes;

.field final genericParameterTypes:Llibcore/reflect/ListOfTypes;

.field final genericReturnType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .param p1, "exceptions"    # Llibcore/reflect/ListOfTypes;
    .param p2, "parameters"    # Llibcore/reflect/ListOfTypes;
    .param p3, "ret"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/reflect/ListOfTypes;",
            "Llibcore/reflect/ListOfTypes;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p4, "formal":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    .line 219
    iput-object p2, p0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    .line 220
    iput-object p3, p0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    .line 221
    iput-object p4, p0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 222
    return-void
.end method
