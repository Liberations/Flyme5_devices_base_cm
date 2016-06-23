.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$InputValidationDesc;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;

.field private static final bootstrapLoader:Ljava/lang/ClassLoader;

.field private static final systemLoader:Ljava/lang/ClassLoader;


# instance fields
.field private cachedSuperclasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:I

.field private emptyStream:Ljava/io/InputStream;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private nextHandle:I

.field private objectsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    .line 105
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    .line 2018
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 341
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 71
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 98
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 344
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 71
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 360
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    .end local p1    # "input":Ljava/io/InputStream;
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    .line 362
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    .line 363
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 364
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 365
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 366
    iput v2, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    .line 369
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 371
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 372
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 373
    return-void

    .line 360
    .restart local p1    # "input":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 1255
    .local v0, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1256
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1257
    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 1258
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1260
    :cond_0
    move-object v0, v2

    .line 1261
    goto :goto_0

    .line 1262
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    return-object v1
.end method

.method private checkReadPrimitiveTypes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 415
    .local v0, "next":I
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 400
    .end local v0    # "next":I
    :cond_1
    const/4 v0, 0x0

    .line 401
    .restart local v0    # "next":I
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v1, :cond_2

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 407
    :goto_1
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    packed-switch v1, :pswitch_data_0

    .line 418
    :pswitch_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 405
    int-to-byte v1, v0

    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_1

    .line 409
    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    .line 412
    :pswitch_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p0, "desc"    # Ljava/io/ObjectStreamClass;
    .param p1, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2370
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2371
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0

    .line 2373
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 2374
    return-void
.end method

.method private corruptStream(B)Ljava/io/StreamCorruptedException;
    .locals 3
    .param p1, "tc"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private discardData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v2, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 628
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 629
    .local v0, "resolve":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 631
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v1

    .line 632
    .local v1, "tc":B
    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 633
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I
    .locals 6
    .param p3, "lastIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1267
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    move v2, p3

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1268
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    .line 1269
    .local v3, "objCl":Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1271
    .local v1, "forName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1282
    .end local v1    # "forName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "objCl":Ljava/io/ObjectStreamClass;
    :cond_0
    :goto_1
    return v2

    .line 1277
    .restart local v1    # "forName":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "objCl":Ljava/io/ObjectStreamClass;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    .end local v1    # "forName":Ljava/lang/String;
    .end local v3    # "objCl":Ljava/io/ObjectStreamClass;
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static formatClassSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classSig"    # Ljava/lang/String;

    .prologue
    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 929
    .local v0, "end":I
    if-gtz v0, :cond_1

    .line 944
    .end local p0    # "classSig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 934
    .restart local p0    # "classSig":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v2, "[L"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2

    .line 935
    add-int/lit8 v1, v1, 0x2

    .line 936
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 939
    :cond_2
    if-lez v1, :cond_0

    .line 940
    add-int/lit8 v1, v1, -0x2

    .line 941
    add-int/lit8 v0, v0, 0x1

    .line 942
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    .line 2359
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2361
    .local v0, "k":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2364
    .end local p0    # "fullName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "fullName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private missingClassDescriptor()Ljava/io/InvalidClassException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Read null attempting to read class descriptor for object"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextHandle()I
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    return v0
.end method

.method private nextTC()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 507
    :goto_0
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return v0

    .line 505
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_0
.end method

.method private pushbackTC()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 515
    return-void
.end method

.method private readBlockData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v0, v1, [B

    .line 554
    .local v0, "result":[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 555
    return-object v0
.end method

.method private readBlockDataLong()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 570
    .local v0, "result":[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 571
    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 654
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 655
    .local v2, "tc":B
    sparse-switch v2, :sswitch_data_0

    .line 670
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 657
    :sswitch_0
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 668
    :goto_0
    return-object v1

    .line 659
    :sswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    move-result-object v0

    .line 660
    .local v0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 661
    .local v1, "streamClass":Ljava/io/ObjectStreamClass;
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 662
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 663
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    .line 666
    .end local v0    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "streamClass":Ljava/io/ObjectStreamClass;
    :sswitch_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    move-object v1, v3

    goto :goto_0

    .line 668
    :sswitch_3
    const/4 v1, 0x0

    goto :goto_0

    .line 655
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .locals 3
    .param p1, "tc"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 695
    packed-switch p1, :pswitch_data_0

    .line 723
    :pswitch_0
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 697
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v1

    .line 721
    :goto_0
    :pswitch_2
    return-object v1

    .line 699
    :pswitch_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v1

    goto :goto_0

    .line 701
    :pswitch_4
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 703
    :pswitch_5
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    goto :goto_0

    .line 705
    :pswitch_6
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 707
    :pswitch_7
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 709
    :pswitch_8
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 711
    :pswitch_9
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 713
    :pswitch_a
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 717
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v0

    .line 718
    .local v0, "exc":Ljava/lang/Exception;
    new-instance v1, Ljava/io/WriteAbortedException;

    const-string v2, "Read an exception"

    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 720
    .end local v0    # "exc":Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1579
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->checkAndGetTcEnumClass()Ljava/lang/Class;

    move-result-object v2

    .line 1581
    .local v2, "enumType":Ljava/lang/Class;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v5

    .line 1584
    .local v5, "newHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v7

    .line 1585
    .local v7, "tc":B
    packed-switch v7, :pswitch_data_0

    .line 1597
    :pswitch_0
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v8

    throw v8

    .line 1587
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1588
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 1589
    new-instance v8, Ljava/io/InvalidObjectException;

    const-string v9, "Unshared read of back reference"

    invoke-direct {v8, v9}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1591
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1602
    .local v4, "name":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1608
    .local v6, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0, v6, v5, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1609
    return-object v6

    .line 1594
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1595
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1603
    :catch_0
    move-exception v1

    .line 1604
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/InvalidObjectException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v3, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v3, v1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1606
    throw v3

    .line 1585
    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v0

    .line 1530
    .local v0, "tc":B
    packed-switch v0, :pswitch_data_0

    .line 1538
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 1532
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1536
    :goto_0
    return-object v1

    .line 1534
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    goto :goto_0

    .line 1536
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1530
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1544
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1545
    iget v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1546
    .local v1, "oldHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v4

    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1547
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1548
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    iget v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1549
    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1550
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1551
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1553
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1554
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1555
    .local v2, "superClass":Ljava/io/ObjectStreamClass;
    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1557
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    .line 1558
    :cond_0
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1561
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v3

    .line 1563
    .local v3, "tc":B
    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 1565
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 1570
    :goto_0
    return-object v0

    .line 1568
    :cond_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0
.end method

.method private readException()Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 858
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 862
    .local v0, "exc":Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 863
    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .locals 10
    .param p1, "cDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 885
    .local v6, "numFields":S
    new-array v3, v6, [Ljava/io/ObjectStreamField;

    .line 889
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 892
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    if-ge v4, v6, :cond_1

    .line 893
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    int-to-char v8, v9

    .line 894
    .local v8, "typecode":C
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "fieldName":Ljava/lang/String;
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    move-result v5

    .line 897
    .local v5, "isPrimType":Z
    if-eqz v5, :cond_0

    .line 898
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "classSig":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/io/ObjectInputStream;->formatClassSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v1, Ljava/io/ObjectStreamField;

    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .local v1, "f":Ljava/io/ObjectStreamField;
    aput-object v1, v3, v4

    .line 892
    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    goto :goto_0

    .line 906
    .end local v0    # "classSig":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 908
    .local v7, "old":Z
    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 909
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    .restart local v0    # "classSig":Ljava/lang/String;
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    goto :goto_1

    .end local v0    # "classSig":Ljava/lang/String;
    :catchall_0
    move-exception v9

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    throw v9

    .line 919
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v5    # "isPrimType":Z
    .end local v7    # "old":Z
    .end local v8    # "typecode":C
    :cond_1
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .locals 10
    .param p1, "emulatedFields"    # Ljava/io/EmulatedFieldsForLoading;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v5

    .line 995
    .local v5, "slots":[Ljava/io/EmulatedFields$ObjectSlot;
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 996
    .local v2, "element":Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v7, 0x0

    iput-boolean v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 997
    iget-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 998
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    .line 999
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 995
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 1001
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1002
    :cond_1
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2

    .line 1003
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1004
    :cond_2
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 1005
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1006
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    .line 1007
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1008
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 1009
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1010
    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    .line 1011
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1012
    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    .line 1013
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1017
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1018
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1025
    .end local v1    # "cnf":Ljava/lang/ClassNotFoundException;
    .end local v2    # "element":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 31
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v15

    .line 1059
    .local v15, "fields":[Ljava/io/ObjectStreamField;
    if-nez v15, :cond_0

    sget-object v15, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1060
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    .line 1061
    .local v7, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1062
    new-instance v28, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 1065
    :cond_1
    move-object v4, v15

    .local v4, "arr$":[Ljava/io/ObjectStreamField;
    array-length v0, v4

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-object v12, v4, v17

    .line 1069
    .local v12, "fieldDesc":Ljava/io/ObjectStreamField;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1071
    .local v11, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v25

    .line 1072
    .local v25, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1074
    .local v5, "b":B
    if-eqz v11, :cond_2

    .line 1075
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v5}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    .line 1065
    .end local v5    # "b":B
    .end local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1077
    .restart local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    sget-object v28, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readChar()C

    move-result v6

    .line 1079
    .local v6, "c":C
    if-eqz v11, :cond_2

    .line 1080
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v6}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1131
    .end local v6    # "c":C
    .end local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v18

    .line 1133
    .local v18, "iae":Ljava/lang/IllegalAccessException;
    new-instance v28, Ljava/lang/AssertionError;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v28

    .line 1082
    .end local v18    # "iae":Ljava/lang/IllegalAccessException;
    .restart local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    sget-object v28, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v8

    .line 1084
    .local v8, "d":D
    if-eqz v11, :cond_2

    .line 1085
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v8, v9}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 1134
    .end local v8    # "d":D
    .end local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v28

    goto :goto_1

    .line 1087
    .restart local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    sget-object v28, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readFloat()F

    move-result v10

    .line 1089
    .local v10, "f":F
    if-eqz v11, :cond_2

    .line 1090
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v10}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 1092
    .end local v10    # "f":F
    :cond_6
    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1094
    .local v16, "i":I
    if-eqz v11, :cond_2

    .line 1095
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1097
    .end local v16    # "i":I
    :cond_7
    sget-object v28, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    .line 1099
    .local v20, "j":J
    if-eqz v11, :cond_2

    .line 1100
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 1102
    .end local v20    # "j":J
    :cond_8
    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readShort()S

    move-result v23

    .line 1104
    .local v23, "s":S
    if-eqz v11, :cond_2

    .line 1105
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_1

    .line 1107
    .end local v23    # "s":S
    :cond_9
    sget-object v28, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v27

    .line 1109
    .local v27, "z":Z
    if-eqz v11, :cond_2

    .line 1110
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1113
    .end local v27    # "z":Z
    :cond_a
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v24

    .line 1114
    .local v24, "toSet":Ljava/lang/Object;
    :goto_2
    if-eqz v24, :cond_2

    .line 1119
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1120
    .local v13, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v22

    .line 1121
    .local v22, "localFieldDesc":Ljava/io/ObjectStreamField;
    invoke-virtual/range {v22 .. v22}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v14

    .line 1122
    .local v14, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    .line 1123
    .local v26, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 1124
    new-instance v28, Ljava/lang/ClassCastException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " not compatible with "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 1113
    .end local v13    # "fieldName":Ljava/lang/String;
    .end local v14    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .end local v24    # "toSet":Ljava/lang/Object;
    .end local v26    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v24

    goto :goto_2

    .line 1126
    .restart local v13    # "fieldName":Ljava/lang/String;
    .restart local v14    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .restart local v24    # "toSet":Ljava/lang/Object;
    .restart local v26    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    if-eqz v11, :cond_2

    .line 1127
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1137
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "fieldDesc":Ljava/io/ObjectStreamField;
    .end local v13    # "fieldName":Ljava/lang/String;
    .end local v14    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .end local v24    # "toSet":Ljava/lang/Object;
    .end local v25    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1218
    if-nez p1, :cond_0

    iget-boolean v10, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v10, :cond_0

    .line 1219
    new-instance v10, Ljava/io/NotActiveException;

    invoke-direct {v10}, Ljava/io/NotActiveException;-><init>()V

    throw v10

    .line 1222
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v7

    .line 1223
    .local v7, "streamClassList":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez p1, :cond_1

    .line 1224
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/ObjectStreamClass;

    .line 1225
    .local v6, "objectStreamClass":Ljava/io/ObjectStreamClass;
    const/4 v10, 0x0

    invoke-direct {p0, v10, v6}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    .line 1228
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "objectStreamClass":Ljava/io/ObjectStreamClass;
    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1229
    .local v9, "superclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v9, :cond_2

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 1233
    :cond_2
    const/4 v5, 0x0

    .line 1234
    .local v5, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "end":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 1235
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 1236
    .local v8, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v8, v7, v5}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I

    move-result v3

    .line 1237
    .local v3, "index":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_3

    .line 1238
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-direct {p0, p1, v8, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V

    .line 1234
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1241
    :cond_3
    move v4, v5

    .local v4, "j":I
    :goto_3
    if-gt v4, v3, :cond_4

    .line 1242
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1241
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1244
    :cond_4
    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    .line 1248
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "index":I
    .end local v4    # "j":I
    .end local v5    # "lastIndex":I
    .end local v8    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "superclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .locals 23
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 1420
    .local v8, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v8, :cond_0

    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v20

    throw v20

    .line 1424
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v15

    .line 1427
    .local v15, "newHandle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 1428
    .local v19, "size":I
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1429
    .local v4, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 1430
    .local v9, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v0, v19

    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v17

    .line 1432
    .local v17, "result":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1438
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1439
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_1

    move-object/from16 v20, v17

    .line 1440
    check-cast v20, [I

    move-object/from16 v13, v20

    check-cast v13, [I

    .line 1441
    .local v13, "intArray":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    aput v20, v13, v12

    .line 1441
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1444
    .end local v12    # "i":I
    .end local v13    # "intArray":[I
    :cond_1
    sget-object v20, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_4

    move-object/from16 v20, v17

    .line 1445
    check-cast v20, [B

    move-object/from16 v6, v20

    check-cast v6, [B

    .line 1446
    .local v6, "byteArray":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1491
    .end local v6    # "byteArray":[B
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1492
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1493
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1495
    :cond_3
    return-object v17

    .line 1447
    :cond_4
    sget-object v20, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_5

    move-object/from16 v20, v17

    .line 1448
    check-cast v20, [C

    move-object/from16 v7, v20

    check-cast v7, [C

    .line 1449
    .local v7, "charArray":[C
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readChar()C

    move-result v20

    aput-char v20, v7, v12

    .line 1449
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1452
    .end local v7    # "charArray":[C
    .end local v12    # "i":I
    :cond_5
    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_6

    move-object/from16 v20, v17

    .line 1453
    check-cast v20, [S

    move-object/from16 v18, v20

    check-cast v18, [S

    .line 1454
    .local v18, "shortArray":[S
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    aput-short v20, v18, v12

    .line 1454
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1457
    .end local v12    # "i":I
    .end local v18    # "shortArray":[S
    :cond_6
    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_7

    move-object/from16 v20, v17

    .line 1458
    check-cast v20, [Z

    move-object/from16 v5, v20

    check-cast v5, [Z

    .line 1459
    .local v5, "booleanArray":[Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v20

    aput-boolean v20, v5, v12

    .line 1459
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1462
    .end local v5    # "booleanArray":[Z
    .end local v12    # "i":I
    :cond_7
    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_8

    move-object/from16 v20, v17

    .line 1463
    check-cast v20, [J

    move-object/from16 v14, v20

    check-cast v14, [J

    .line 1464
    .local v14, "longArray":[J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    aput-wide v20, v14, v12

    .line 1464
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1467
    .end local v12    # "i":I
    .end local v14    # "longArray":[J
    :cond_8
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_9

    move-object/from16 v20, v17

    .line 1468
    check-cast v20, [F

    move-object/from16 v11, v20

    check-cast v11, [F

    .line 1469
    .local v11, "floatArray":[F
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readFloat()F

    move-result v20

    aput v20, v11, v12

    .line 1469
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1472
    .end local v11    # "floatArray":[F
    .end local v12    # "i":I
    :cond_9
    sget-object v20, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_a

    move-object/from16 v20, v17

    .line 1473
    check-cast v20, [D

    move-object/from16 v10, v20

    check-cast v10, [D

    .line 1474
    .local v10, "doubleArray":[D
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v10, v12

    .line 1474
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1478
    .end local v10    # "doubleArray":[D
    .end local v12    # "i":I
    :cond_a
    new-instance v20, Ljava/lang/ClassNotFoundException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Wrong base type in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_b
    move-object/from16 v20, v17

    .line 1482
    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v16, v20

    check-cast v16, [Ljava/lang/Object;

    .line 1483
    .local v16, "objectArray":[Ljava/lang/Object;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1488
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v16, v12

    .line 1483
    add-int/lit8 v12, v12, 0x1

    goto :goto_7
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .locals 3
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1513
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    .line 1514
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v2

    throw v2

    .line 1516
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1517
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 1518
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1520
    :cond_1
    return-object v1
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1632
    iget v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1633
    .local v8, "oldHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v9

    iput v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1634
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v7

    .line 1635
    .local v7, "newClassDesc":Ljava/io/ObjectStreamClass;
    iget v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0, v7, v9, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1636
    iput v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1637
    iget-object v9, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1641
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1643
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifyAndInit(Ljava/io/ObjectStreamClass;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :cond_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 1654
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    if-nez v3, :cond_1

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1655
    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 1657
    .local v6, "loader":Ljava/lang/ClassLoader;
    :goto_0
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 1658
    .local v2, "element":Ljava/io/ObjectStreamField;
    invoke-virtual {v2, v6}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    .line 1657
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1644
    .end local v0    # "arr$":[Ljava/io/ObjectStreamField;
    .end local v2    # "element":Ljava/io/ObjectStreamField;
    .end local v3    # "fields":[Ljava/io/ObjectStreamField;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 1645
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    iget-boolean v9, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v9, :cond_0

    .line 1646
    throw v1

    .line 1655
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "fields":[Ljava/io/ObjectStreamField;
    :cond_2
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_0

    .line 1662
    .restart local v0    # "arr$":[Ljava/io/ObjectStreamField;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1663
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1664
    return-object v7
.end method

.method private readNewHandle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1755
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1915
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 1916
    .local v0, "length":J
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v2

    .line 1917
    .local v2, "result":Ljava/lang/String;
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v3, :cond_0

    .line 1918
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1920
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1922
    return-object v2
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .locals 15
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 1782
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1784
    .local v2, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v2, :cond_0

    .line 1785
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v12

    throw v12

    .line 1788
    :cond_0
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->checkAndGetTcObjectClass()Ljava/lang/Class;

    move-result-object v7

    .line 1790
    .local v7, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v6

    .line 1792
    .local v6, "newHandle":I
    const/4 v8, 0x0

    .line 1793
    .local v8, "registeredResult":Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1796
    invoke-virtual {v2, v7}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 1797
    .local v9, "result":Ljava/lang/Object;
    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1798
    move-object v8, v9

    .line 1808
    .end local v8    # "registeredResult":Ljava/lang/Object;
    .end local v9    # "result":Ljava/lang/Object;
    :goto_0
    :try_start_0
    iput-object v9, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1809
    iput-object v2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1815
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_7

    move v11, v1

    .line 1816
    .local v11, "wasExternalizable":Z
    :goto_1
    if-eqz v11, :cond_a

    .line 1817
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_8

    .line 1818
    .local v1, "blockData":Z
    :goto_2
    if-nez v1, :cond_1

    .line 1819
    iget-object v12, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1821
    :cond_1
    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v12, :cond_2

    .line 1822
    move-object v0, v9

    check-cast v0, Ljava/io/Externalizable;

    move-object v3, v0

    .line 1823
    .local v3, "extern":Ljava/io/Externalizable;
    invoke-interface {v3, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 1825
    .end local v3    # "extern":Ljava/io/Externalizable;
    :cond_2
    if-eqz v1, :cond_9

    .line 1828
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    .end local v1    # "blockData":Z
    :goto_3
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1841
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1844
    if-eqz v7, :cond_3

    .line 1846
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasMethodReadResolve()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1847
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getMethodReadResolve()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1849
    .local v5, "methodReadResolve":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    :try_start_1
    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 1870
    .end local v5    # "methodReadResolve":Ljava/lang/reflect/Method;
    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v12, :cond_4

    .line 1871
    invoke-virtual {p0, v9}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1873
    :cond_4
    if-eq v8, v9, :cond_5

    .line 1874
    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1876
    :cond_5
    return-object v9

    .line 1800
    .end local v11    # "wasExternalizable":Z
    .restart local v8    # "registeredResult":Ljava/lang/Object;
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "result":Ljava/lang/Object;
    goto :goto_0

    .end local v8    # "registeredResult":Ljava/lang/Object;
    .end local v9    # "result":Ljava/lang/Object;
    :cond_7
    move v11, v12

    .line 1815
    goto :goto_1

    .restart local v11    # "wasExternalizable":Z
    :cond_8
    move v1, v12

    .line 1817
    goto :goto_2

    .line 1830
    .restart local v1    # "blockData":Z
    :cond_9
    :try_start_2
    iget-object v12, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1840
    .end local v1    # "blockData":Z
    .end local v11    # "wasExternalizable":Z
    :catchall_0
    move-exception v12

    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1841
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v12

    .line 1835
    .restart local v11    # "wasExternalizable":Z
    :cond_a
    :try_start_3
    invoke-direct {p0, v9, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1851
    .restart local v5    # "methodReadResolve":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 1852
    .local v4, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v10

    .line 1853
    .local v10, "target":Ljava/lang/Throwable;
    instance-of v12, v10, Ljava/io/ObjectStreamException;

    if-eqz v12, :cond_b

    .line 1854
    check-cast v10, Ljava/io/ObjectStreamException;

    .end local v10    # "target":Ljava/lang/Throwable;
    throw v10

    .line 1855
    .restart local v10    # "target":Ljava/lang/Throwable;
    :cond_b
    instance-of v12, v10, Ljava/lang/Error;

    if-eqz v12, :cond_c

    .line 1856
    check-cast v10, Ljava/lang/Error;

    .end local v10    # "target":Ljava/lang/Throwable;
    throw v10

    .line 1858
    .restart local v10    # "target":Ljava/lang/Throwable;
    :cond_c
    check-cast v10, Ljava/lang/RuntimeException;

    .end local v10    # "target":Ljava/lang/Throwable;
    throw v10

    .line 1850
    .end local v4    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1683
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 1684
    .local v2, "interfaceNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1685
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1689
    .local v3, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1690
    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1894
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_0

    .line 1896
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1898
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1900
    return-object v0
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 745
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 746
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 747
    .local v0, "e":Ljava/io/OptionalDataException;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    .line 748
    throw v0

    .line 780
    .end local v0    # "e":Ljava/io/OptionalDataException;
    .local v2, "tc":B
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 752
    .end local v2    # "tc":B
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 753
    .restart local v2    # "tc":B
    packed-switch v2, :pswitch_data_0

    .line 788
    :pswitch_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 755
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v3

    .line 775
    :goto_0
    return-object v3

    .line 757
    :pswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_0

    .line 759
    :pswitch_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 761
    :pswitch_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 763
    :pswitch_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 765
    :pswitch_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 767
    :pswitch_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 769
    :pswitch_9
    if-eqz p1, :cond_1

    .line 770
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 771
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "Unshared read of back reference"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 773
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 775
    :pswitch_a
    const/4 v3, 0x0

    goto :goto_0

    .line 777
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v1

    .line 778
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "Read an exception"

    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 783
    .end local v1    # "exc":Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    .line 784
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 785
    .restart local v0    # "e":Ljava/io/OptionalDataException;
    const/4 v3, 0x1

    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    .line 786
    throw v0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1960
    iget-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-ne v7, v8, :cond_2

    move v4, v6

    .line 1961
    .local v4, "restoreInput":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1962
    iget-object v7, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1967
    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    .line 1968
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v5

    .line 2014
    :cond_1
    :goto_1
    return-object v5

    .line 1960
    .end local v4    # "restoreInput":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1978
    .restart local v4    # "restoreInput":Z
    :cond_3
    :try_start_0
    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-ne v7, v6, :cond_4

    .line 1980
    sget-object v6, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    sget-object v7, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v7}, Ldalvik/system/VMStack;->getClosestUserClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 1983
    :cond_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    move-result-object v5

    .line 1984
    .local v5, "result":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 1985
    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1990
    :cond_5
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_6

    .line 1994
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2000
    :cond_6
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-eqz v6, :cond_1

    .line 2005
    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .local v0, "arr$":[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 2006
    .local v1, "element":Ljava/io/ObjectInputStream$InputValidationDesc;
    iget-object v6, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2005
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1990
    .end local v0    # "arr$":[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v1    # "element":Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v7, :cond_7

    .line 1994
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_7
    throw v6

    .line 2011
    .restart local v0    # "arr$":[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "result":Ljava/lang/Object;
    :cond_8
    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_1
    move-exception v6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    throw v6
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1313
    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1314
    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1316
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 1317
    .local v2, "hadWriteMethod":Z
    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1320
    .local v4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_0

    iget-boolean v5, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v5, :cond_3

    .line 1321
    :cond_0
    const/4 v3, 0x0

    .line 1326
    .local v3, "readMethod":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v3, :cond_7

    .line 1328
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    :goto_2
    if-eqz v2, :cond_1

    .line 1348
    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1353
    :cond_1
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1355
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1357
    return-void

    .end local v2    # "hadWriteMethod":Z
    .end local v3    # "readMethod":Ljava/lang/reflect/Method;
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v2, v5

    .line 1316
    goto :goto_0

    .line 1323
    .restart local v2    # "hadWriteMethod":Z
    .restart local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getMethodReadObject()Ljava/lang/reflect/Method;

    move-result-object v3

    .restart local v3    # "readMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1333
    .local v1, "ex":Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_4

    .line 1334
    check-cast v1, Ljava/lang/ClassNotFoundException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1353
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1355
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v5

    .line 1335
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_5

    .line 1336
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1337
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_6

    .line 1338
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1340
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1341
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1342
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1345
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1287
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->hasMethodReadObjectNoData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1291
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->getMethodReadObjectNoData()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1293
    .local v2, "readMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1296
    .local v1, "ex":Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    .line 1297
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1298
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 1299
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1301
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    check-cast v1, Ljava/io/ObjectStreamException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    throw v1

    .line 1302
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private registerObjectRead(Ljava/lang/Object;IZ)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    if-eqz p3, :cond_0

    .line 2135
    sget-object p1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 2137
    :cond_0
    const/high16 v2, 0x7e0000

    sub-int v0, p2, v2

    .line 2138
    .local v0, "index":I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2142
    .local v1, "size":I
    :goto_0
    if-le v0, v1, :cond_1

    .line 2143
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2146
    :cond_1
    if-ne v0, v1, :cond_2

    .line 2147
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    :goto_1
    return-void

    .line 2149
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private registeredObjectRead(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2123
    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/high16 v2, 0x7e0000

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2124
    .local v0, "res":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2125
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2127
    :cond_0
    return-object v0
.end method

.method private resetSeenObjects()V
    .locals 1

    .prologue
    .line 2218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    .line 2219
    const/high16 v0, 0x7e0000

    iput v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    .line 2220
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2221
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2229
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 2230
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 2231
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    .line 2233
    return-void
.end method

.method private verifyAndInit(Ljava/io/ObjectStreamClass;)V
    .locals 9
    .param p1, "loadedStreamClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 2336
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2337
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 2339
    .local v3, "localStreamClass":Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2341
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2346
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2347
    .local v0, "loadedClassBaseName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2349
    .local v2, "localClassBaseName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2350
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Incompatible class (base name): %s but expected %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2355
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->initPrivateFields(Ljava/io/ObjectStreamClass;)V

    .line 2356
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 379
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 436
    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v0, :cond_1

    .line 454
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 458
    return-void

    .line 456
    :cond_1
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0
.end method

.method protected enableResolveObject(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 473
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 474
    .local v0, "originalValue":Z
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 475
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 530
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 535
    if-nez p3, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    .line 538
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 539
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1703
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1704
    .local v1, "newClassDesc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1706
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The stream is corrupted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1708
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 1709
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 1710
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1717
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1718
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1720
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1722
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    .line 1723
    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 964
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 965
    new-instance v1, Ljava/io/NotActiveException;

    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    throw v1

    .line 967
    :cond_0
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    .line 968
    .local v0, "result":Ljava/io/EmulatedFieldsForLoading;
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    .line 969
    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1167
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1187
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1940
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2036
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    .line 2037
    const/4 v0, 0x0

    return-object v0

    .line 2040
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2051
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2064
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x5313

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2066
    return-void

    .line 2068
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2114
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1955
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2083
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2098
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 9
    .param p1, "object"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2176
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2178
    .local v3, "instanceBeingRead":Ljava/lang/Object;
    if-nez v3, :cond_0

    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_0

    .line 2179
    new-instance v6, Ljava/io/NotActiveException;

    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    .end local v3    # "instanceBeingRead":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2181
    .restart local v3    # "instanceBeingRead":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 2182
    :try_start_1
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "Callback object cannot be null"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2187
    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    .line 2188
    .local v1, "desc":Ljava/io/ObjectInputStream$InputValidationDesc;
    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    .line 2189
    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    .line 2192
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-nez v6, :cond_2

    .line 2193
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2194
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v7, 0x0

    aput-object v1, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2212
    :goto_0
    monitor-exit p0

    return-void

    .line 2196
    :cond_2
    const/4 v2, 0x0

    .line 2197
    .local v2, "i":I
    :goto_1
    :try_start_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 2198
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aget-object v5, v6, v2

    .line 2200
    .local v5, "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    if-lt p2, v6, :cond_4

    .line 2204
    .end local v5    # "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2205
    .local v4, "oldValidations":[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v0, v4

    .line 2206
    .local v0, "currentSize":I
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2207
    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2208
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v2

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2210
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aput-object v1, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2197
    .end local v0    # "currentSize":I
    .end local v4    # "oldValidations":[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v5    # "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "osClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2251
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2252
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 2254
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, "className":Ljava/lang/String;
    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 2259
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 2263
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2266
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2287
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "interfaceNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 1743
    .local v3, "loader":Ljava/lang/ClassLoader;
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Class;

    .line 1744
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 1745
    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1748
    :cond_0
    :try_start_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1749
    :catch_0
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public skipBytes(I)I
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2305
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    .line 2306
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "source stream is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2309
    :cond_0
    const/4 v0, 0x0

    .line 2310
    .local v0, "offset":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 2311
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 2312
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    sub-int v4, p1, v0

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 2313
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2318
    .end local v0    # "offset":I
    .end local v2    # "skipped":J
    :goto_1
    return v0

    .line 2316
    .restart local v0    # "offset":I
    .restart local v2    # "skipped":J
    :cond_1
    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 2317
    goto :goto_0

    .end local v2    # "skipped":J
    :cond_2
    move v0, p1

    .line 2318
    goto :goto_1
.end method
