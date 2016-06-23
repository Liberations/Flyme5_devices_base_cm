.class public final Ljava/lang/reflect/ArtMethod;
.super Ljava/lang/Object;
.source "ArtMethod.java"


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexCacheResolvedMethods:[Ljava/lang/reflect/ArtMethod;

.field dexCacheResolvedTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexCodeItemOffset:I

.field private dexMethodIndex:I

.field private methodIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z
    .locals 6
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ArtMethod;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 106
    .local v0, "dex":Lcom/android/dex/Dex;
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDexMethodIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v2

    .line 107
    .local v2, "types":[S
    array-length v4, v2

    array-length v5, p1

    if-eq v4, v5, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v3

    .line 110
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 111
    aget-short v4, v2, v1

    invoke-direct {p0, v0, v4}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aget-object v5, p1, v1

    if-ne v4, v5, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z
    .locals 1
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ArtMethod;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/ArtMethod;->equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 1
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 180
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->dexCacheResolvedTypes:[Ljava/lang/Class;

    aget-object v0, v1, p2

    .line 190
    .local v0, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 191
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public static getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;
    .locals 3
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 94
    .local v0, "dex":Lcom/android/dex/Dex;
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDexMethodIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    move-result v1

    .line 96
    .local v1, "nameIndex":I
    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/ArtMethod;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method compareParameters([Ljava/lang/Class;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v3

    .line 155
    .local v3, "dex":Lcom/android/dex/Dex;
    iget v7, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v3, v7}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v6

    .line 156
    .local v6, "types":[S
    array-length v7, v6

    array-length v8, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 157
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 158
    aget-short v7, v6, v4

    invoke-direct {p0, v3, v7}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    .line 159
    .local v0, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v1, p1, v4

    .line 160
    .local v1, "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, "comparison":I
    if-eqz v2, :cond_0

    .line 167
    .end local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "comparison":I
    :goto_1
    return v2

    .line 157
    .restart local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    array-length v7, v6

    array-length v8, p1

    sub-int v2, v7, v8

    goto :goto_1
.end method

.method findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->dexCacheResolvedMethods:[Ljava/lang/reflect/ArtMethod;

    iget v1, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    aget-object p0, v0, v1

    .line 210
    .end local p0    # "this":Ljava/lang/reflect/ArtMethod;
    :cond_0
    return-object p0
.end method

.method public getAccessFlags()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Ljava/lang/reflect/ArtMethod;->accessFlags:I

    return v0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method getDexMethodIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    return v0
.end method

.method getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-static {v0, v1}, Llibcore/reflect/AnnotationAccess;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method getParameterTypes()[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 129
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v4, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v3

    .line 130
    .local v3, "types":[S
    array-length v4, v3

    if-nez v4, :cond_1

    .line 131
    sget-object v2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 138
    :cond_0
    return-object v2

    .line 133
    :cond_1
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/Class;

    .line 134
    .local v2, "parametersArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 136
    aget-short v4, v3, v1

    invoke-direct {p0, v0, v4}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getReturnType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v2, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 143
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->returnTypeIndexFromMethodIndex(I)I

    move-result v1

    .line 145
    .local v1, "returnTypeIndex":I
    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method
