.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient accessFlags:I

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient classSize:I

.field private transient clinitThreadId:I

.field private transient componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient dexCache:Ljava/lang/DexCache;

.field private transient dexCacheStrings:[Ljava/lang/String;

.field private transient dexClassDefIndex:I

.field private volatile transient dexTypeIndex:I

.field private transient directMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient iFields:[Ljava/lang/reflect/ArtField;

.field private transient ifTable:[Ljava/lang/Object;

.field private transient name:Ljava/lang/String;

.field private transient numReferenceInstanceFields:I

.field private transient numReferenceStaticFields:I

.field private transient objectSize:I

.field private transient primitiveType:I

.field private transient referenceInstanceOffsets:I

.field private transient referenceStaticOffsets:I

.field private transient sFields:[Ljava/lang/reflect/ArtField;

.field private transient status:I

.field private transient superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private transient verifyErrorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient virtualMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient vtable:[Ljava/lang/reflect/ArtMethod;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method private canAccess(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p1, Ljava/lang/Class;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    const/4 v0, 0x1

    .line 1617
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private canAccessMember(Ljava/lang/Class;I)Z
    .locals 3
    .param p2, "memberModifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 1621
    if-eq p1, p0, :cond_0

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return v1

    .line 1624
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1625
    const/4 v1, 0x0

    goto :goto_0

    .line 1627
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1628
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 1629
    if-eq v0, p1, :cond_0

    .line 1628
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1

    .line 1634
    .end local v0    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private classNameImpliesTopLevel()Z
    .locals 2

    .prologue
    .line 1050
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fields"    # [Ljava/lang/reflect/ArtField;

    .prologue
    .line 969
    const/4 v2, 0x0

    .local v2, "low":I
    array-length v5, p1

    add-int/lit8 v1, v5, -0x1

    .line 970
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 971
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 972
    .local v3, "mid":I
    aget-object v0, p1, v3

    .line 973
    .local v0, "f":Ljava/lang/reflect/ArtField;
    invoke-virtual {v0}, Ljava/lang/reflect/ArtField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 974
    .local v4, "result":I
    if-gez v4, :cond_0

    .line 975
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 976
    :cond_0
    if-nez v4, :cond_1

    .line 983
    .end local v0    # "f":Ljava/lang/reflect/ArtField;
    .end local v3    # "mid":I
    .end local v4    # "result":I
    :goto_1
    return-object v0

    .line 979
    .restart local v0    # "f":Ljava/lang/reflect/ArtField;
    .restart local v3    # "mid":I
    .restart local v4    # "result":I
    :cond_1
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 983
    .end local v0    # "f":Ljava/lang/reflect/ArtField;
    .end local v3    # "mid":I
    .end local v4    # "result":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "shouldInitialize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 298
    if-nez p2, :cond_0

    .line 299
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 309
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 317
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 310
    .end local v2    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 312
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/LinkageError;

    if-eqz v3, :cond_1

    .line 313
    check-cast v0, Ljava/lang/LinkageError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 315
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method private getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 8
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 522
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 524
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 525
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 526
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 524
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 530
    .local v4, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v4, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 531
    :cond_3
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<init> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 533
    :cond_4
    return-object v4
.end method

.method private getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_2

    .line 544
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 545
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 546
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    invoke-static {v3, p1}, Ljava/lang/reflect/ArtMethod;->equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 559
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getDeclaredConstructors(ZLjava/util/List;)V
    .locals 6
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<TT;>;>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_3

    .line 592
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 593
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 594
    .local v4, "modifiers":I
    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_2
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_3
    return-void
.end method

.method private getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 948
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    invoke-static {p1, v1}, Ljava/lang/Class;->findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;

    move-result-object v0

    .line 950
    .local v0, "matched":Ljava/lang/reflect/ArtField;
    if-eqz v0, :cond_0

    .line 951
    new-instance v1, Ljava/lang/reflect/Field;

    invoke-direct {v1, v0}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    .line 961
    .end local v0    # "matched":Ljava/lang/reflect/ArtField;
    :goto_0
    return-object v1

    .line 954
    :cond_0
    iget-object v1, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    invoke-static {p1, v1}, Ljava/lang/Class;->findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;

    move-result-object v0

    .line 956
    .restart local v0    # "matched":Ljava/lang/reflect/ArtField;
    if-eqz v0, :cond_1

    .line 957
    new-instance v1, Ljava/lang/reflect/Field;

    invoke-direct {v1, v0}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    goto :goto_0

    .line 961
    .end local v0    # "matched":Ljava/lang/reflect/ArtField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const v7, 0x201000

    .line 706
    .local v7, "skipModifiers":I
    const/4 v1, 0x0

    .line 707
    .local v1, "artMethodResult":Ljava/lang/reflect/ArtMethod;
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_3

    .line 708
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 709
    .local v4, "m":Ljava/lang/reflect/ArtMethod;
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 710
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 708
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_1
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 716
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 717
    .local v6, "modifiers":I
    and-int v8, v6, v7

    if-nez v8, :cond_2

    .line 718
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 752
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :goto_2
    return-object v8

    .line 720
    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "modifiers":I
    :cond_2
    const/high16 v8, 0x200000

    and-int/2addr v8, v6

    if-nez v8, :cond_0

    .line 722
    move-object v1, v4

    goto :goto_1

    .line 726
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_3
    if-nez v1, :cond_7

    .line 727
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_7

    .line 728
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 729
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 730
    .restart local v6    # "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 728
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 733
    :cond_5
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 734
    .restart local v5    # "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 737
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 740
    and-int v8, v6, v7

    if-nez v8, :cond_6

    .line 741
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_2

    .line 745
    :cond_6
    move-object v1, v4

    goto :goto_4

    .line 749
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_7
    if-nez v1, :cond_8

    .line 750
    const/4 v8, 0x0

    goto :goto_2

    .line 752
    :cond_8
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v1}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_2
.end method

.method private getInnerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 649
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 651
    :cond_0
    if-nez p2, :cond_1

    .line 652
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 654
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 655
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 656
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 654
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-eqz p3, :cond_5

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 662
    .local v4, "result":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v4, :cond_4

    if-eqz p3, :cond_6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 664
    :cond_4
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 659
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_5
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_1

    .line 666
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    :cond_6
    return-object v4
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getProxyInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1091
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1092
    invoke-direct {v0, p1}, Ljava/lang/Class;->getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1093
    .local v3, "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1109
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v3

    .line 1091
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1099
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 1101
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    aget-object v2, v4, v1

    check-cast v2, Ljava/lang/Class;

    .line 1102
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1103
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 1100
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 1109
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v5, 0x1

    .line 1139
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0, v5, p1}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 1139
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1145
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 1146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1147
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 1148
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5, p1}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 1146
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1151
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 672
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 673
    .local v4, "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 688
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v4

    .line 671
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 678
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_2
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 679
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 681
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 682
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 683
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 688
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPublicMethodsInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v5, 0x1

    .line 839
    invoke-virtual {p0, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 840
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 842
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 842
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 847
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 848
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 849
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 850
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 851
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 849
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 854
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private inSamePackage(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1638
    iget-object v3, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p1, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-eq v3, v4, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return v2

    .line 1641
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "packageName1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "packageName2":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1644
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1645
    :cond_2
    if-eqz v1, :cond_0

    .line 1648
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1707
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    return-object p0

    .line 1710
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1724
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_1

    .line 1725
    const/4 p1, 0x0

    .line 1727
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 1726
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1730
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public desiredAssertionStatus()Z
    .locals 1

    .prologue
    .line 1694
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 375
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 381
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 389
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 406
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    const/4 v0, 0x0

    .line 414
    :cond_0
    :goto_0
    return-object v0

    .line 410
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 411
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 412
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    .line 428
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 335
    .local v4, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 336
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    .end local v4    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 340
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    return-object v6
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 865
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v0

    .line 866
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 885
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 886
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 889
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 890
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 892
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 894
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 9

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 906
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_0

    move v4, v7

    .line 907
    .local v4, "initial_size":I
    :goto_0
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_1

    move v8, v7

    :goto_1
    add-int/2addr v4, v8

    .line 908
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    .local v2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 910
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    .line 911
    .local v6, "result":[Ljava/lang/reflect/Field;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 912
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 911
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 906
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v3    # "i$":I
    .end local v4    # "initial_size":I
    .end local v5    # "len$":I
    .end local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_0
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    array-length v4, v8

    goto :goto_0

    .line 907
    .restart local v4    # "initial_size":I
    :cond_1
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    array-length v8, v8

    goto :goto_1

    .line 914
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_2
    return-object v6
.end method

.method public getDeclaredFieldsUnchecked(ZLjava/util/List;)V
    .locals 5
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    iget-object v4, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_2

    .line 927
    iget-object v0, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    .local v0, "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 928
    .local v1, "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 929
    :cond_0
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_5

    .line 934
    iget-object v0, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 935
    .restart local v1    # "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 936
    :cond_3
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    return-void
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 9

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 764
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_0

    move v2, v7

    .line 765
    .local v2, "initial_size":I
    :goto_0
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_1

    move v8, v7

    :goto_1
    add-int/2addr v2, v8

    .line 766
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    .local v5, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0, v7, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 768
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    .line 769
    .local v6, "result":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 771
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 772
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 764
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "initial_size":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .end local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_0
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v2, v8

    goto :goto_0

    .line 765
    .restart local v2    # "initial_size":I
    :cond_1
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v8, v8

    goto :goto_1

    .line 774
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .restart local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_2
    return-object v6
.end method

.method public getDeclaredMethodsUnchecked(ZLjava/util/List;)V
    .locals 6
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    iget-object v5, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_2

    .line 788
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 789
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 790
    .local v4, "modifiers":I
    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 792
    :cond_0
    const/high16 v5, 0x200000

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    .line 793
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_2
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_5

    .line 799
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 800
    .restart local v3    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 801
    .restart local v4    # "modifiers":I
    if-eqz p1, :cond_3

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 803
    :cond_3
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 804
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_5
    return-void
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const/4 v0, 0x0

    .line 995
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 1

    .prologue
    .line 447
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v0}, Ljava/lang/DexCache;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    goto :goto_0
.end method

.method public getDexAnnotationDirectoryOffset()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1781
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    .line 1782
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return v2

    .line 1785
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    move-result v0

    .line 1786
    .local v0, "classDefIndex":I
    if-ltz v0, :cond_0

    .line 1789
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 459
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->dexCacheStrings:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 460
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 462
    iget-object v1, p0, Ljava/lang/Class;->dexCacheStrings:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 464
    :cond_0
    return-object v0
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 5
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
    .line 474
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    iget-object v2, v4, Ljava/lang/DexCache;->resolvedTypes:[Ljava/lang/Class;

    .line 475
    .local v2, "dexCacheResolvedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v3, v2, p2

    .line 476
    .local v3, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 478
    .local v1, "descriptorIndex":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 480
    aput-object v3, v2, p2

    .line 482
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptorIndex":I
    :cond_0
    return-object v3
.end method

.method public getDexClassDefIndex()I
    .locals 2

    .prologue
    .line 1740
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    goto :goto_0
.end method

.method public getDexTypeIndex()I
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v2, 0xffff

    .line 1751
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1752
    .local v0, "typeIndex":I
    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1769
    .end local v0    # "typeIndex":I
    .local v1, "typeIndex":I
    :goto_0
    return v1

    .line 1755
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_0
    monitor-enter p0

    .line 1756
    :try_start_0
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1757
    if-ne v0, v2, :cond_2

    .line 1758
    iget v2, p0, Ljava/lang/Class;->dexClassDefIndex:I

    if-ltz v2, :cond_3

    .line 1759
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    iget v3, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v0

    .line 1766
    :cond_1
    :goto_1
    iput v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1768
    :cond_2
    monitor-exit p0

    move v1, v0

    .line 1769
    .end local v0    # "typeIndex":I
    .restart local v1    # "typeIndex":I
    goto :goto_0

    .line 1761
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 1762
    if-gez v0, :cond_1

    .line 1763
    const/4 v0, -0x1

    goto :goto_1

    .line 1768
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1006
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1013
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 1009
    .restart local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    .line 1010
    .local v1, "member":Ljava/lang/reflect/AccessibleObject;
    if-eqz v1, :cond_1

    .line 1011
    check-cast v1, Ljava/lang/reflect/Member;

    .end local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1013
    .restart local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    :goto_0
    return-object v1

    .line 1024
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1025
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/reflect/Constructor;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    :goto_0
    return-object v1

    .line 1036
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1037
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    .line 1063
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 1078
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1080
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1081
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 1082
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1086
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 1124
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v2}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 1126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    .line 1127
    .local v5, "result":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1128
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1130
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-object v5
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 6

    .prologue
    .line 1160
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v4

    monitor-enter v4

    .line 1161
    :try_start_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 1162
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    .line 1163
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1165
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1171
    :goto_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    array-length v3, v2

    if-nez v3, :cond_2

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    .line 1167
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_1
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1168
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1169
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0

    .line 1173
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1174
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    move-object v2, v3

    goto :goto_1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .line 1182
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1185
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    .line 1186
    const/4 v3, 0x0

    .line 1195
    :goto_0
    return-object v3

    .line 1189
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1191
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1192
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1193
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 1195
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1210
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1211
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Cloneable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/io/Serializable;

    aput-object v5, v3, v4

    .line 1224
    :cond_0
    :goto_0
    return-object v3

    .line 1212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1213
    invoke-direct {p0}, Ljava/lang/Class;->getProxyInterfaces()[Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 1215
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 1216
    .local v0, "dex":Lcom/android/dex/Dex;
    if-nez v0, :cond_3

    .line 1217
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    goto :goto_0

    .line 1219
    :cond_3
    iget v4, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->interfaceTypeIndicesFromClassDefIndex(I)[S

    move-result-object v2

    .line 1220
    .local v2, "interfaces":[S
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/Class;

    .line 1221
    .local v3, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1222
    aget-short v4, v2, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 823
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 830
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 831
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    .prologue
    .line 1242
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1243
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 1244
    .local v1, "componentModifiers":I
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_0

    .line 1245
    and-int/lit16 v1, v1, -0x209

    .line 1247
    :cond_0
    or-int/lit16 v3, v1, 0x410

    .line 1251
    .end local v1    # "componentModifiers":I
    :goto_0
    return v3

    .line 1249
    :cond_1
    const v0, 0xffff

    .line 1250
    .local v0, "JAVA_FLAGS_MASK":I
    iget v3, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v3, v0

    invoke-static {p0, v3}, Llibcore/reflect/AnnotationAccess;->getInnerClassFlags(Ljava/lang/Class;I)I

    move-result v2

    .line 1251
    .local v2, "modifiers":I
    and-int v3, v2, v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 1261
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1668
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1669
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 1670
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    .line 1673
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getPackageName$()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1683
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1685
    .local v0, "last":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    .prologue
    .line 1308
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1319
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1320
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1334
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1335
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    .line 1336
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1338
    :goto_1
    return-object v3

    .line 1322
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1324
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1325
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1330
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1327
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 1338
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1351
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1366
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1367
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    .line 1368
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1370
    :goto_1
    return-object v3

    .line 1354
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1356
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1357
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1362
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1359
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 1370
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1382
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1276
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1294
    :cond_0
    :goto_0
    return-object v1

    .line 1280
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1281
    const-string v1, ""

    goto :goto_0

    .line 1284
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1285
    :cond_3
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1288
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1290
    .local v0, "dot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1291
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuperclass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    const/4 v0, 0x0

    .line 1398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1411
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1413
    :cond_0
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1414
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1415
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1409
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnotation()Z
    .locals 2

    .prologue
    .line 1422
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x2000

    .line 1423
    .local v0, "ACC_ANNOTATION":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
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
    .line 1427
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isAnonymousClass()Z
    .locals 1

    .prologue
    .line 1435
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 1442
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1467
    if-ne p0, p1, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return v3

    .line 1469
    :cond_1
    const-class v5, Ljava/lang/Object;

    if-ne p0, v5, :cond_2

    .line 1470
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1471
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1472
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v6, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1473
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1475
    iget-object v2, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1476
    .local v2, "iftable":[Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 1477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 1478
    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/Class;

    .line 1479
    .local v1, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, p0, :cond_0

    .line 1477
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move v3, v4

    .line 1484
    goto :goto_0

    .line 1486
    .end local v2    # "iftable":[Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1487
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    :goto_2
    if-eqz p1, :cond_7

    .line 1488
    if-eq p1, p0, :cond_0

    .line 1487
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_2

    :cond_7
    move v3, v4

    .line 1493
    goto :goto_0
.end method

.method public isEnum()Z
    .locals 2

    .prologue
    .line 1502
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinalizable()Z
    .locals 3

    .prologue
    .line 1567
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v0, -0x80000000

    .line 1568
    .local v0, "ACC_CLASS_IS_FINALIZABLE":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1515
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 1516
    const/4 v0, 0x0

    .line 1518
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 1525
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalClass()Z
    .locals 1

    .prologue
    .line 1533
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    .prologue
    .line 1543
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 1550
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->primitiveType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxy()Z
    .locals 2

    .prologue
    .line 1451
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .line 1557
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x1000

    .line 1558
    .local v0, "ACC_SYNTHETIC":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1586
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Ljava/lang/Class;->accessFlags:I

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1587
    :cond_0
    new-instance v4, Ljava/lang/InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1589
    :cond_1
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    .line 1590
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v0, p0}, Ljava/lang/Class;->canAccess(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1591
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1595
    :cond_2
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1602
    .local v2, "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-direct {v0, p0, v5}, Ljava/lang/Class;->canAccessMember(Ljava/lang/Class;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1603
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1596
    .end local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 1597
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no zero argument constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v3, "t":Ljava/lang/InstantiationException;
    invoke-virtual {v3, v1}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1600
    throw v3

    .line 1606
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "t":Ljava/lang/InstantiationException;
    .restart local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1609
    :goto_0
    return-object v4

    .line 1607
    :catch_1
    move-exception v1

    .line 1608
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1654
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1657
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interface "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "class "

    goto :goto_1
.end method
