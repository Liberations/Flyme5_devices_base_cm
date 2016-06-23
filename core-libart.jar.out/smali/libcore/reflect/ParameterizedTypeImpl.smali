.class public final Llibcore/reflect/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final args:Llibcore/reflect/ListOfTypes;

.field private final loader:Ljava/lang/ClassLoader;

.field private final ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

.field private ownerTypeRes:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;

.field private final rawTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "ownerType"    # Llibcore/reflect/ParameterizedTypeImpl;
    .param p2, "rawTypeName"    # Ljava/lang/String;
    .param p3, "args"    # Llibcore/reflect/ListOfTypes;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p3, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    .line 38
    iput-object p2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    .line 40
    iput-object p4, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 84
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 87
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 88
    .local v0, "that":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v2}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 65
    :try_start_0
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/TypeNotPresentException;

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getResolvedType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object p0

    .line 78
    .end local p0    # "this":Llibcore/reflect/ParameterizedTypeImpl;
    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
