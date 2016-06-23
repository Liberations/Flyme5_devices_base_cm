.class public abstract Ljava/lang/reflect/AbstractMethod;
.super Ljava/lang/reflect/AccessibleObject;
.source "AbstractMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/AbstractMethod$GenericInfo;
    }
.end annotation


# instance fields
.field protected final artMethod:Ljava/lang/reflect/ArtMethod;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/ArtMethod;)V
    .locals 2
    .param p1, "artMethod"    # Ljava/lang/reflect/ArtMethod;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "artMethod == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    .line 64
    return-void
.end method

.method private static fixMethodFlags(I)I
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 81
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    .line 82
    and-int/lit16 p0, p0, -0x101

    .line 84
    :cond_0
    and-int/lit8 p0, p0, -0x21

    .line 85
    const/high16 v0, 0x20000

    .line 86
    .local v0, "ACC_DECLARED_SYNCHRONIZED":I
    and-int v1, p0, v0

    if-eqz v1, :cond_1

    .line 87
    or-int/lit8 p0, p0, 0x20

    .line 89
    :cond_1
    const v1, 0xffff

    and-int/2addr v1, p0

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 155
    instance-of v1, p1, Ljava/lang/reflect/AbstractMethod;

    if-nez v1, :cond_1

    .line 159
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    check-cast p1, Ljava/lang/reflect/AbstractMethod;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p1, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAccessFlags()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 175
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getDexMethodIndex()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getDexMethodIndex()I

    move-result v0

    return v0
.end method

.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;
    .locals 12

    .prologue
    .line 229
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "signatureAttribute":Ljava/lang/String;
    instance-of v4, p0, Ljava/lang/reflect/Method;

    .line 233
    .local v4, "method":Z
    if-eqz v4, :cond_0

    move-object v2, p0

    .line 234
    check-cast v2, Ljava/lang/reflect/Method;

    .line 235
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v3, v2

    .line 236
    .local v3, "member":Ljava/lang/reflect/Member;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 242
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .local v1, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Llibcore/reflect/GenericSignatureParser;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v7}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 244
    .local v5, "parser":Llibcore/reflect/GenericSignatureParser;
    if-eqz v4, :cond_1

    .line 245
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 251
    :goto_1
    new-instance v7, Ljava/lang/reflect/AbstractMethod$GenericInfo;

    iget-object v8, v5, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iget-object v9, v5, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    iget-object v10, v5, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-object v11, v5, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/reflect/AbstractMethod$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    return-object v7

    .end local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "member":Ljava/lang/reflect/Member;
    .end local v5    # "parser":Llibcore/reflect/GenericSignatureParser;
    .restart local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :cond_0
    move-object v0, p0

    .line 238
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 239
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v3, v0

    .line 240
    .restart local v3    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 247
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_1
.end method

.method getModifiers()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/AbstractMethod;->fixMethodFlags(I)I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method abstract getSignature()Ljava/lang/String;
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method isBridge()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSynthetic()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVarArgs()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->artMethod:Ljava/lang/reflect/ArtMethod;

    invoke-virtual {v0}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toGenericString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->toGenericStringHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final toGenericStringHelper()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v3

    .local v3, "info":Ljava/lang/reflect/AbstractMethod$GenericInfo;
    move-object v6, p0

    .line 261
    check-cast v6, Ljava/lang/reflect/Member;

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    .line 263
    .local v4, "modifiers":I
    if-eqz v4, :cond_0

    .line 264
    and-int/lit16 v6, v4, -0x81

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_3

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 268
    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 270
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 271
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 272
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_2
    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v2    # "i":I
    :cond_3
    move-object v6, p0

    .line 277
    check-cast v6, Ljava/lang/reflect/Member;

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 278
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v6, p0, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_5

    .line 280
    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 290
    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :goto_1
    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v6}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 292
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 296
    .local v1, "genericExceptionTypeArray":[Ljava/lang/reflect/Type;
    array-length v6, v1

    if-lez v6, :cond_4

    .line 297
    const-string v6, " throws "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v5, v1}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 300
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 283
    .end local v1    # "genericExceptionTypeArray":[Ljava/lang/reflect/Type;
    .restart local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :cond_5
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v6}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 284
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 287
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
