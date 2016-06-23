.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MODIFIERS_MASK:I = 0x611

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final CONSTRUCTOR_IS_NOT_RESOLVED:J = -0x1L

.field private static final EXTERNALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MODIFIERS_MASK:I = 0xdf

.field private static final METHOD_MODIFIERS_MASK:I = 0xd3f

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField;

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L

.field private static storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient arePropertiesResolved:Z

.field private volatile transient cachedHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private transient className:Ljava/lang/String;

.field private transient constructor:J

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient isEnum:Z

.field private transient isExternalizable:Z

.field private transient isProxy:Z

.field private transient isSerializable:Z

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient methodReadObject:Ljava/lang/reflect/Method;

.field private transient methodReadObjectNoData:Ljava/lang/reflect/Method;

.field private transient methodReadResolve:Ljava/lang/reflect/Method;

.field private transient methodWriteObject:Ljava/lang/reflect/Method;

.field private transient methodWriteReplace:Ljava/lang/reflect/Method;

.field private transient reflectionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient resolvedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorMethodId:J

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectInputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    .line 71
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectOutputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    .line 76
    new-array v1, v3, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 85
    :try_start_0
    const-string v1, "[Ljava.io.ObjectStreamField;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-class v1, Ljava/io/Serializable;

    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    .line 101
    const-class v1, Ljava/io/Externalizable;

    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    .line 104
    const-class v1, Ljava/lang/String;

    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    .line 106
    const-class v1, Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    .line 108
    const-class v1, Ljava/io/ObjectStreamClass;

    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    .line 1097
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 242
    return-void
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .locals 27
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1

    .line 414
    aget-object v8, p1, v11

    .line 415
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 416
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 417
    .local v20, "modifiers":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 418
    const-string v24, "serialVersionUID"

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 424
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 427
    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    .line 603
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "modifiers":I
    :goto_1
    return-wide v24

    .line 428
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v20    # "modifiers":I
    :catch_0
    move-exception v12

    .line 429
    .local v12, "iae":Ljava/lang/IllegalAccessException;
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error fetching SUID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 413
    .end local v12    # "iae":Ljava/lang/IllegalAccessException;
    .end local v20    # "modifiers":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 438
    .end local v8    # "field":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    const-string v24, "SHA"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 442
    .local v6, "digest":Ljava/security/MessageDigest;
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 444
    .local v22, "sha":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v21, Ljava/io/DataOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 445
    .local v21, "output":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x611

    .line 452
    .local v2, "classModifiers":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v15

    .line 453
    .local v15, "isArray":Z
    if-eqz v15, :cond_2

    .line 454
    or-int/lit16 v2, v2, 0x400

    .line 457
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v24

    if-nez v24, :cond_3

    .line 458
    and-int/lit16 v2, v2, -0x401

    .line 460
    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 467
    if-nez v15, :cond_5

    .line 469
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    .line 470
    .local v14, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v14

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 473
    new-instance v13, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v13}, Ljava/io/ObjectStreamClass$1;-><init>()V

    .line 478
    .local v13, "interfaceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    invoke-static {v14, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 482
    .end local v13    # "interfaceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    :cond_4
    const/4 v11, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 483
    aget-object v24, v14, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 439
    .end local v2    # "classModifiers":I
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v14    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v15    # "isArray":Z
    .end local v21    # "output":Ljava/io/DataOutputStream;
    .end local v22    # "sha":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v7

    .line 440
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v24, Ljava/lang/Error;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 488
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "classModifiers":I
    .restart local v6    # "digest":Ljava/security/MessageDigest;
    .restart local v15    # "isArray":Z
    .restart local v21    # "output":Ljava/io/DataOutputStream;
    .restart local v22    # "sha":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 491
    new-instance v9, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v9}, Ljava/io/ObjectStreamClass$2;-><init>()V

    .line 496
    .local v9, "fieldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 500
    .end local v9    # "fieldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :cond_6
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_a

    .line 501
    aget-object v8, p1, v11

    .line 502
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xdf

    move/from16 v20, v0

    .line 504
    .restart local v20    # "modifiers":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_9

    :cond_7
    const/16 v23, 0x1

    .line 506
    .local v23, "skip":Z
    :goto_4
    if-nez v23, :cond_8

    .line 509
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 511
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 500
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 504
    .end local v23    # "skip":Z
    :cond_9
    const/16 v23, 0x0

    goto :goto_4

    .line 520
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "modifiers":I
    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 522
    const-string v24, "<clinit>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 523
    const/16 v24, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 524
    const-string v24, "()V"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 528
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 529
    .local v5, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v0, v5

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 532
    new-instance v4, Ljava/io/ObjectStreamClass$3;

    invoke-direct {v4}, Ljava/io/ObjectStreamClass$3;-><init>()V

    .line 540
    .local v4, "constructorComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 544
    .end local v4    # "constructorComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_c
    const/4 v11, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    .line 545
    aget-object v3, v5, v11

    .line 546
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    .line 548
    .restart local v20    # "modifiers":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    .line 549
    .local v16, "isPrivate":Z
    if-nez v16, :cond_d

    .line 557
    const-string v24, "<init>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 559
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 544
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 566
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "isPrivate":Z
    .end local v20    # "modifiers":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v19

    .line 567
    .local v19, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 568
    new-instance v18, Ljava/io/ObjectStreamClass$4;

    invoke-direct/range {v18 .. v18}, Ljava/io/ObjectStreamClass$4;-><init>()V

    .line 580
    .local v18, "methodComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 584
    .end local v18    # "methodComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    :cond_f
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_11

    .line 585
    aget-object v17, v19, v11

    .line 586
    .local v17, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    .line 587
    .restart local v20    # "modifiers":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    .line 588
    .restart local v16    # "isPrivate":Z
    if-nez v16, :cond_10

    .line 591
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 593
    invoke-static/range {v17 .. v17}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 584
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 597
    .end local v2    # "classModifiers":I
    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "isArray":Z
    .end local v16    # "isPrivate":Z
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .end local v20    # "modifiers":I
    .end local v21    # "output":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v7

    .line 598
    .local v7, "e":Ljava/io/IOException;
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " computing SHA-1/SUID"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 602
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "classModifiers":I
    .restart local v5    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v15    # "isArray":Z
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v21    # "output":Ljava/io/DataOutputStream;
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 603
    .local v10, "hash":[B
    const/16 v24, 0x0

    sget-object v25, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v24

    goto/16 :goto_1
.end method

.method private copyFieldAttributes()V
    .locals 6

    .prologue
    .line 857
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v5, :cond_1

    .line 873
    :cond_0
    return-void

    .line 861
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 862
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    aget-object v3, v5, v1

    .line 863
    .local v3, "loadField":Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 865
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v2

    .line 866
    .local v0, "field":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 867
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    .line 868
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 861
    .end local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .restart local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/io/ObjectStreamClass;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 256
    .local v7, "result":Ljava/io/ObjectStreamClass;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 257
    .local v5, "isArray":Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v8

    .line 258
    .local v8, "serializable":Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    .line 260
    .local v1, "externalizable":Z
    iput-boolean v8, v7, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 261
    iput-boolean v1, v7, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 264
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v7, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 266
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 267
    .local v9, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_0

    .line 268
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 274
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v8, :cond_1

    if-eqz v1, :cond_3

    .line 275
    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 276
    :cond_2
    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 284
    :cond_3
    :goto_0
    if-eqz v8, :cond_6

    if-nez v5, :cond_6

    .line 285
    if-nez v0, :cond_4

    .line 286
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 288
    :cond_4
    invoke-virtual {v7, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 296
    :goto_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 298
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_8

    .line 299
    array-length v10, v2

    new-array v6, v10, [Ljava/io/ObjectStreamField;

    .line 301
    .local v6, "loadFields":[Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_7

    .line 302
    new-instance v10, Ljava/io/ObjectStreamField;

    aget-object v11, v2, v4

    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v12

    aget-object v13, v2, v4

    invoke-virtual {v13}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v6, v4

    .line 307
    aget-object v10, v6, v4

    invoke-virtual {v10}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v4    # "i":I
    .end local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 279
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    goto :goto_0

    .line 291
    :cond_6
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_1

    .line 309
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v4    # "i":I
    .restart local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    :cond_7
    invoke-virtual {v7, v6}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 312
    .end local v4    # "i":I
    .end local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    :cond_8
    const/4 v3, 0x0

    .line 313
    .local v3, "flags":B
    if-eqz v1, :cond_b

    .line 314
    const/4 v10, 0x4

    int-to-byte v3, v10

    .line 315
    or-int/lit8 v10, v3, 0x8

    int-to-byte v3, v10

    .line 319
    :cond_9
    :goto_3
    const-string v10, "writeReplace"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 320
    const-string v10, "readResolve"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 321
    const-string v10, "writeObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 322
    const-string v10, "readObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 323
    const-string v10, "readObjectNoData"

    sget-object v11, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 324
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 325
    or-int/lit8 v10, v3, 0x1

    int-to-byte v3, v10

    .line 327
    :cond_a
    invoke-virtual {v7, v3}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 329
    return-object v7

    .line 316
    :cond_b
    if-eqz v8, :cond_9

    .line 317
    const/4 v10, 0x2

    int-to-byte v3, v10

    goto :goto_3
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;

    .prologue
    .line 615
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "serialPersistentFields"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 643
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 644
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 653
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :goto_0
    return-object v0

    .line 650
    :catch_0
    move-exception v2

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1124
    move-object v1, p0

    .line 1125
    .local v1, "search":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1126
    .local v0, "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v1, :cond_2

    .line 1128
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1129
    if-eq v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1131
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1138
    :goto_1
    return-object v2

    .line 1134
    :catch_0
    move-exception v2

    .line 1136
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 1138
    goto :goto_1
.end method

.method static findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1155
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 1159
    :catch_0
    move-exception v1

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCache()Ljava/util/WeakHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    sget-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 1102
    .local v0, "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Ljava/io/ObjectStreamClass$5;

    .end local v0    # "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    invoke-direct {v0}, Ljava/io/ObjectStreamClass$5;-><init>()V

    .line 1108
    .restart local v0    # "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    .line 1110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    return-object v1
.end method

.method private static native getConstructorId(Ljava/lang/Class;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v5, 0x2e

    const/4 v4, 0x0

    .line 756
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "nameC1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "nameC2":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 759
    .local v0, "indexDotC1":I
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 760
    .local v1, "indexDotC2":I
    if-eq v0, v1, :cond_0

    .line 766
    :goto_0
    return v4

    .line 763
    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 764
    const/4 v4, 0x1

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {v2, v4, v3, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPrimitiveType(C)Z
    .locals 1
    .param p0, "typecode"    # C

    .prologue
    .line 988
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1004
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1055
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1056
    .local v0, "osc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "osc":Ljava/io/ObjectStreamClass;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "osc":Ljava/io/ObjectStreamClass;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;

    move-result-object v1

    .line 1085
    .local v1, "tlc":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;"
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectStreamClass;

    .line 1086
    .local v0, "cachedValue":Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    .line 1087
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1088
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    :cond_0
    return-object v0
.end method

.method private makeHierarchy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move-object v0, p0

    .local v0, "osc":Ljava/io/ObjectStreamClass;
    :goto_0
    if-eqz v0, :cond_0

    .line 844
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 843
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_0

    .line 846
    :cond_0
    return-object v1
.end method

.method private static native newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1296
    :cond_0
    const/4 v0, 0x1

    .line 1305
    :goto_0
    return v0

    .line 1298
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 1299
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1301
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 1302
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1304
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 1305
    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1307
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 679
    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    if-eqz v10, :cond_0

    .line 680
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 741
    :goto_0
    return-object v2

    .line 686
    :cond_0
    move-object v2, p1

    .line 690
    .local v2, "constructorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    move v8, v7

    .line 691
    .local v8, "wasSerializable":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 695
    :goto_2
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 696
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    .end local v8    # "wasSerializable":Z
    :cond_1
    move v8, v9

    .line 690
    goto :goto_1

    .line 701
    .restart local v8    # "wasSerializable":Z
    :cond_2
    const/4 v1, 0x0

    .line 702
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_3

    .line 704
    :try_start_0
    sget-object v10, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 710
    :cond_3
    :goto_3
    if-nez v1, :cond_5

    .line 711
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "className":Ljava/lang/String;
    :goto_4
    new-instance v9, Ljava/io/InvalidClassException;

    const-string v10, "IllegalAccessException"

    invoke-direct {v9, v0, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 711
    .end local v0    # "className":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 715
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 716
    .local v3, "constructorModifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    .line 717
    .local v6, "isPublic":Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    .line 718
    .local v5, "isProtected":Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    .line 722
    .local v4, "isPrivate":Z
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_7

    .line 723
    .local v7, "wasExternalizable":Z
    :goto_5
    if-nez v4, :cond_6

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    .line 724
    :cond_6
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .end local v7    # "wasExternalizable":Z
    :cond_7
    move v7, v9

    .line 722
    goto :goto_5

    .line 731
    .restart local v7    # "wasExternalizable":Z
    :cond_8
    if-nez v6, :cond_9

    if-nez v5, :cond_9

    .line 734
    invoke-direct {p0, v2, p1}, Ljava/io/ObjectStreamClass;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 735
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 739
    :cond_9
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 740
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->getConstructorId(Ljava/lang/Class;)J

    move-result-wide v10

    iput-wide v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:J

    goto :goto_0

    .line 705
    .end local v3    # "constructorModifiers":I
    .end local v4    # "isPrivate":Z
    .end local v5    # "isProtected":Z
    .end local v6    # "isPublic":Z
    .end local v7    # "wasExternalizable":Z
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method private resolveProperties()V
    .locals 2

    .prologue
    .line 1011
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    if-eqz v1, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1016
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 1017
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 1018
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 1019
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 1021
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    goto :goto_0
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .locals 20
    .param p1, "declaredFields"    # [Ljava/lang/reflect/Field;

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 345
    .local v6, "f":Ljava/lang/reflect/Field;
    if-nez v6, :cond_0

    const/16 v17, 0x1

    .line 349
    .local v17, "useReflectFields":Z
    :goto_0
    const/4 v2, 0x0

    .line 350
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    if-nez v17, :cond_1

    .line 353
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 356
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/io/ObjectStreamField;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 383
    const/4 v14, 0x0

    .local v14, "primOffset":I
    const/4 v12, 0x0

    .line 384
    .local v12, "objectOffset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 385
    aget-object v18, v2, v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v16

    .line 386
    .local v16, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 387
    aget-object v18, v2, v8

    move-object/from16 v0, v18

    iput v14, v0, Ljava/io/ObjectStreamField;->offset:I

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    move-result v18

    add-int v14, v14, v18

    .line 384
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 345
    .end local v2    # "_fields":[Ljava/io/ObjectStreamField;
    .end local v8    # "i":I
    .end local v12    # "objectOffset":I
    .end local v14    # "primOffset":I
    .end local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "useReflectFields":Z
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 357
    .restart local v2    # "_fields":[Ljava/io/ObjectStreamField;
    .restart local v17    # "useReflectFields":Z
    :catch_0
    move-exception v5

    .line 358
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 362
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v15, "serializableFields":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v10, :cond_3

    aget-object v4, v3, v9

    .line 366
    .local v4, "declaredField":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 367
    .local v11, "modifiers":I
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 368
    new-instance v7, Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 370
    .local v7, "field":Ljava/io/ObjectStreamField;
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v7    # "field":Ljava/io/ObjectStreamField;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 374
    .end local v4    # "declaredField":Ljava/lang/reflect/Field;
    .end local v11    # "modifiers":I
    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_4

    .line 375
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_1

    .line 378
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "_fields":[Ljava/io/ObjectStreamField;
    check-cast v2, [Ljava/io/ObjectStreamField;

    .restart local v2    # "_fields":[Ljava/io/ObjectStreamField;
    goto/16 :goto_1

    .line 390
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v15    # "serializableFields":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    .restart local v8    # "i":I
    .restart local v12    # "objectOffset":I
    .restart local v14    # "primOffset":I
    .restart local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    aget-object v18, v2, v8

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "objectOffset":I
    .local v13, "objectOffset":I
    move-object/from16 v0, v18

    iput v12, v0, Ljava/io/ObjectStreamField;->offset:I

    move v12, v13

    .end local v13    # "objectOffset":I
    .restart local v12    # "objectOffset":I
    goto :goto_3

    .line 393
    .end local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 394
    return-void
.end method

.method checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "osf"    # Ljava/io/ObjectStreamField;

    .prologue
    .line 197
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v5

    .line 198
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 201
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_0

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    :cond_0
    monitor-exit v5

    .line 227
    :goto_0
    return-object v2

    .line 204
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 212
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    :cond_2
    const/4 v2, 0x0

    .line 224
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "modifiers":I
    :goto_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v5

    .line 225
    :try_start_2
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 204
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 217
    .restart local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "modifiers":I
    :cond_3
    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 219
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v1

    .line 221
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkAndGetTcEnumClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1377
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    new-instance v0, Ljava/io/InvalidClassException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local class is incompatible: Local class is not an enum,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamed data is tagged with TC_ENUM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public checkAndGetTcObjectClass()Ljava/lang/Class;
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
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1331
    iget-byte v4, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v1, v2

    .line 1332
    .local v1, "wasSerializable":Z
    :goto_0
    iget-byte v4, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1333
    .local v0, "wasExternalizable":Z
    :goto_1
    if-ne v1, v0, :cond_2

    .line 1334
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stream data is corrupt: SC_SERIALIZABLE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SC_EXTERNALIZABLE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", classDescFlags must have one or the other"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "wasExternalizable":Z
    .end local v1    # "wasSerializable":Z
    :cond_0
    move v1, v3

    .line 1331
    goto :goto_0

    .restart local v1    # "wasSerializable":Z
    :cond_1
    move v0, v3

    .line 1332
    goto :goto_1

    .line 1341
    .restart local v0    # "wasExternalizable":Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1342
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " local class is incompatible: Local class is an enum, streamed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data is tagged with TC_OBJECT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    :cond_3
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1350
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " local class is incompatible: Not"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Serializable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1355
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v2

    if-eq v0, v2, :cond_5

    .line 1356
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " local class is incompatible: Local class is Serializable, stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data requires Externalizable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_5
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .locals 2

    .prologue
    .line 807
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v1, :cond_0

    .line 808
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 809
    .local v0, "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 816
    .end local v0    # "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 813
    .restart local v0    # "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_0
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    return-object v0
.end method

.method getConstructor()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-wide v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 790
    .local v0, "allFields":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 791
    aget-object v1, v0, v2

    .line 792
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :goto_1
    return-object v1

    .line 790
    .restart local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    .line 828
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    goto :goto_0
.end method

.method getFlags()B
    .locals 1

    .prologue
    .line 905
    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    return v0
.end method

.method getHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 835
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez v0, :cond_0

    .line 836
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->makeHierarchy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 838
    :cond_0
    return-object v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getMethodReadObject()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadObjectNoData()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadResolve()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteObject()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteReplace()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    .prologue
    .line 933
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasMethodReadObject()Z
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadObjectNoData()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadResolve()Z
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteObject()Z
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteReplace()Z
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initPrivateFields(Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 1206
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 1207
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 1208
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 1209
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 1210
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 1211
    return-void
.end method

.method isEnum()Z
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1041
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .locals 1

    .prologue
    .line 1030
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1031
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    return v0
.end method

.method isProxy()Z
    .locals 1

    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1036
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .locals 1

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1026
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    return v0
.end method

.method newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "instantiationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamClass;->resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 674
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:J

    invoke-static {p1, v0, v1}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    .line 1221
    return-void
.end method

.method setConstructor(J)V
    .locals 1
    .param p1, "newConstructor"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 182
    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "f"    # [Ljava/io/ObjectStreamField;

    .prologue
    .line 1232
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 1233
    return-void
.end method

.method setFlags(B)V
    .locals 0
    .param p1, "b"    # B

    .prologue
    .line 1258
    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    .line 1259
    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "f"    # [Ljava/io/ObjectStreamField;

    .prologue
    .line 1244
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    .line 1245
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1269
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method setSerialVersionUID(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 1279
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    .line 1280
    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "c"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 1291
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    .line 1292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
