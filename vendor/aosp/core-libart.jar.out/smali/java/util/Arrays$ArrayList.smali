.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "storage":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storage == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    const/4 v4, 0x1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 47
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_1
    return v4

    .line 46
    .restart local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 53
    .restart local v1    # "element":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    :try_start_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 72
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_1

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 74
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 85
    :goto_1
    return v1

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 80
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    .line 81
    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_1

    .line 91
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 92
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 103
    :goto_1
    return v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 98
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    .line 99
    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 103
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 109
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 110
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, "size":I
    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 131
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 133
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 135
    :cond_1
    return-object p1
.end method
