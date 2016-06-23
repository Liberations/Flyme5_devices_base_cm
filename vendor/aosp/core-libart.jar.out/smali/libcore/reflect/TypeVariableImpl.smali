.class public final Llibcore/reflect/TypeVariableImpl;
.super Ljava/lang/Object;
.source "TypeVariableImpl.java"

# interfaces
.implements Ljava/lang/reflect/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/TypeVariable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private bounds:Llibcore/reflect/ListOfTypes;

.field private final declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

.field private formalVar:Llibcore/reflect/TypeVariableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/reflect/TypeVariableImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Llibcore/reflect/ListOfTypes;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bounds"    # Llibcore/reflect/ListOfTypes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "Llibcore/reflect/ListOfTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 57
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    .line 59
    iput-object p0, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 61
    return-void
.end method

.method static findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .locals 6
    .param p0, "layer"    # Ljava/lang/reflect/GenericDeclaration;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-interface {p0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 74
    .local v1, "formalVars":[Ljava/lang/reflect/TypeVariable;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 75
    .local v4, "var":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    .end local v4    # "var":Ljava/lang/reflect/TypeVariable;
    :goto_1
    return-object v4

    .line 74
    .restart local v4    # "var":Ljava/lang/reflect/TypeVariable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "var":Ljava/lang/reflect/TypeVariable;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;
    .locals 2
    .param p0, "decl"    # Ljava/lang/reflect/GenericDeclaration;

    .prologue
    .line 84
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 86
    check-cast v0, Ljava/lang/Class;

    .line 87
    .local v0, "cl":Ljava/lang/Class;
    invoke-static {v0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p0

    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    .line 88
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    if-eqz p0, :cond_0

    .line 95
    .end local v0    # "cl":Ljava/lang/Class;
    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :goto_0
    return-object p0

    .line 91
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 92
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 93
    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 94
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    .line 95
    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 97
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    const/4 v1, 0x0

    .line 36
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 39
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 40
    .local v0, "that":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    .line 120
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    .line 125
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method resolve()V
    .locals 4

    .prologue
    .line 102
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 107
    .local v0, "curLayer":Ljava/lang/reflect/GenericDeclaration;
    :cond_1
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Llibcore/reflect/TypeVariableImpl;->findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .local v1, "var":Ljava/lang/reflect/TypeVariable;
    if-nez v1, :cond_2

    .line 108
    invoke-static {v0}, Llibcore/reflect/TypeVariableImpl;->nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "illegal type variable reference"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 113
    :cond_2
    check-cast v1, Llibcore/reflect/TypeVariableImpl;

    .end local v1    # "var":Ljava/lang/reflect/TypeVariable;
    iput-object v1, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    .line 114
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    iget-object v2, v2, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    iput-object v2, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 115
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    iget-object v2, v2, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    iput-object v2, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method
