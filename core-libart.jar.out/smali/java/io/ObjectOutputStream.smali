.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field private static final NOT_SC_BLOCK_DATA:B = -0x9t


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedLevels:I

.field private objectsWritten:Ljava/io/SerializationHandleMap;

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private final proxyClassDesc:Ljava/io/ObjectStreamClass;

.field private subclassOverridingImplementation:Z


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 112
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 112
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 260
    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1    # "output":Ljava/io/OutputStream;
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    .line 262
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 263
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 264
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 266
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 269
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 271
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 273
    return-void

    .line 260
    .restart local p1    # "output":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private checkWritePrimitiveTypes()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    .line 315
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 317
    :cond_0
    return-void
.end method

.method private computePutField()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 343
    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 417
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v0

    .line 418
    .local v0, "handle":I
    if-eq v0, v1, :cond_0

    .line 419
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(I)V

    .line 422
    .end local v0    # "handle":I
    :goto_0
    return v0

    .restart local v0    # "handle":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextHandle()I
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v0

    .line 493
    .local v0, "handle":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v1, p1, v0}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 494
    return v0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "previousHandle"    # I

    .prologue
    .line 507
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 508
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1, p2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1}, Ljava/io/SerializationHandleMap;->remove(Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private resetSeenObjects()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Ljava/io/SerializationHandleMap;

    invoke-direct {v0}, Ljava/io/SerializationHandleMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    .line 566
    const/high16 v0, 0x7e0000

    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    .line 567
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 577
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 578
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    .locals 8
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x78

    const/4 v5, -0x1

    .line 726
    if-nez p1, :cond_1

    .line 727
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    move v1, v5

    .line 781
    :cond_0
    :goto_0
    return v1

    .line 730
    :cond_1
    const/4 v1, -0x1

    .line 731
    .local v1, "handle":I
    if-nez p2, :cond_2

    .line 732
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 734
    :cond_2
    if-ne v1, v5, :cond_0

    .line 735
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 736
    .local v0, "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    .line 737
    .local v4, "previousHandle":I
    if-eqz p2, :cond_3

    .line 738
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v5, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v4

    .line 742
    :cond_3
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v1

    .line 744
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 745
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 746
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 747
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_4

    .line 749
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 751
    :cond_4
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 752
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 753
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 754
    if-eqz p2, :cond_0

    .line 756
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    .line 761
    .end local v2    # "i":I
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 762
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 763
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 772
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 773
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 774
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 775
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 776
    if-eqz p2, :cond_0

    .line 778
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    .line 767
    :cond_6
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 768
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 769
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_2
.end method

.method private writeCyclicReference(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 790
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 791
    return-void
.end method

.method private writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;
    .locals 7
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x12

    .line 1663
    invoke-virtual {p1, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1664
    const/4 v2, -0x1

    .line 1665
    .local v2, "previousHandle":I
    if-eqz p2, :cond_0

    .line 1666
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v4, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v2

    .line 1668
    :cond_0
    const/4 v1, -0x1

    .line 1669
    .local v1, "handle":I
    if-nez p2, :cond_1

    .line 1670
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 1672
    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 1673
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1676
    .local v0, "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    .line 1678
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1679
    iget v4, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1680
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1689
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1690
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1691
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1693
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 1694
    .local v3, "superClassDesc":Ljava/io/ObjectStreamClass;
    if-eqz v3, :cond_4

    .line 1696
    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1697
    invoke-direct {p0, v3, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1701
    :goto_1
    if-eqz p2, :cond_2

    .line 1703
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1706
    .end local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "superClassDesc":Ljava/io/ObjectStreamClass;
    :cond_2
    return-object p1

    .line 1684
    .restart local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1685
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 1686
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_0

    .line 1699
    .restart local v3    # "superClassDesc":Ljava/io/ObjectStreamClass;
    :cond_4
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .locals 7
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "externalizable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 825
    .local v4, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 826
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .line 830
    .local v1, "fieldCount":I
    if-nez p2, :cond_0

    sget-object v6, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-eq v4, v6, :cond_0

    .line 831
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 832
    array-length v1, v2

    .line 836
    :cond_0
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 838
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 839
    aget-object v0, v2, v3

    .line 840
    .local v0, "f":Ljava/io/ObjectStreamField;
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/ObjectStreamField;->writeField(Ljava/io/DataOutputStream;)Z

    move-result v5

    .line 841
    .local v5, "wasPrimitive":Z
    if-nez v5, :cond_1

    .line 842
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 838
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "wasPrimitive":Z
    :cond_2
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .locals 12
    .param p1, "emulatedFields"    # Ljava/io/EmulatedFieldsForDumping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 882
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v0

    .line 883
    .local v0, "accessibleSimulatedFields":Ljava/io/EmulatedFields;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_10

    aget-object v5, v1, v3

    .line 884
    .local v5, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    .line 885
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 886
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 887
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 883
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_0
    move v7, v8

    .line 887
    goto :goto_1

    .line 888
    :cond_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 889
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Byte;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    :goto_3
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_2
    move v7, v8

    goto :goto_3

    .line 890
    :cond_3
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 891
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Character;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v7

    :goto_4
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_4
    move v7, v8

    goto :goto_4

    .line 892
    :cond_5
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    .line 893
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Short;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    :goto_5
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_6
    move v7, v8

    goto :goto_5

    .line 894
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    .line 895
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_6
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_8
    move v7, v8

    goto :goto_6

    .line 896
    :cond_9
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    .line 897
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_a

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_7
    invoke-virtual {v7, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_a
    const-wide/16 v10, 0x0

    goto :goto_7

    .line 898
    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d

    .line 899
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_8
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    .line 900
    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f

    .line 901
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    :goto_9
    invoke-virtual {v7, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_2

    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_e
    const-wide/16 v10, 0x0

    goto :goto_9

    .line 904
    :cond_f
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 907
    .end local v2    # "fieldValue":Ljava/lang/Object;
    .end local v5    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v2, v0, v3

    .line 930
    .local v2, "fieldDesc":Ljava/io/ObjectStreamField;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v8

    .line 931
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 932
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 933
    new-instance v9, Ljava/io/InvalidClassException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t have a serializable field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 964
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 937
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    .line 938
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 928
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    :cond_1
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    .line 940
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 965
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 969
    .local v6, "nsf":Ljava/lang/NoSuchFieldError;
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 941
    .end local v6    # "nsf":Ljava/lang/NoSuchFieldError;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_2
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_3

    .line 942
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 943
    :cond_3
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_4

    .line 944
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 945
    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_5

    .line 946
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 947
    :cond_5
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    .line 948
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 949
    :cond_6
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    .line 950
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 951
    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 952
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    .line 955
    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 956
    .local v7, "objField":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 957
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    goto :goto_1

    .line 959
    :cond_9
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 972
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldDesc":Ljava/io/ObjectStreamField;
    .end local v7    # "objField":Ljava/lang/Object;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    return-void
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1013
    if-nez p1, :cond_0

    .line 1014
    new-instance v8, Ljava/io/NotActiveException;

    invoke-direct {v8}, Ljava/io/NotActiveException;-><init>()V

    throw v8

    .line 1019
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v4

    .line 1020
    .local v4, "hierarchy":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 1021
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/ObjectStreamClass;

    .line 1024
    .local v7, "osc":Ljava/io/ObjectStreamClass;
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1025
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1029
    const/4 v3, 0x0

    .line 1030
    .local v3, "executed":Z
    :try_start_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1031
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getMethodWriteObject()Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1033
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    const/4 v3, 0x1

    .line 1048
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-eqz v3, :cond_4

    .line 1049
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1050
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1059
    :goto_1
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1060
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1061
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1020
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1035
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1037
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v8, v2, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2

    .line 1038
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1059
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v8

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1060
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1061
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v8

    .line 1039
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_4
    instance-of v8, v2, Ljava/lang/Error;

    if-eqz v8, :cond_3

    .line 1040
    check-cast v2, Ljava/lang/Error;

    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    .line 1042
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    .line 1043
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1054
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1064
    .end local v3    # "executed":Z
    .end local v7    # "osc":Ljava/io/ObjectStreamClass;
    :cond_5
    return-void
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    .locals 16
    .param p1, "array"    # Ljava/lang/Object;
    .param p3, "arrayClDesc"    # Ljava/io/ObjectStreamClass;
    .param p5, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    .local p2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v14, 0x75

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1114
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1116
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v7

    .line 1117
    .local v7, "handle":I
    if-nez p5, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v7}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1126
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1127
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 1128
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v9, p1

    check-cast v9, [I

    .line 1129
    .local v9, "intArray":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v9

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1130
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v13, v9

    if-ge v8, v13, :cond_2

    .line 1131
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v14, v9, v8

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1130
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1133
    .end local v8    # "i":I
    .end local v9    # "intArray":[I
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_1
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_3

    .line 1134
    check-cast p1, [B

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v3, p1

    check-cast v3, [B

    .line 1135
    .local v3, "byteArray":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v3

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v14, 0x0

    array-length v15, v3

    invoke-virtual {v13, v3, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1188
    .end local v3    # "byteArray":[B
    :cond_2
    return v7

    .line 1137
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_3
    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_4

    .line 1138
    check-cast p1, [C

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v4, p1

    check-cast v4, [C

    .line 1139
    .local v4, "charArray":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1140
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    array-length v13, v4

    if-ge v8, v13, :cond_2

    .line 1141
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-char v14, v4, v8

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 1140
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1143
    .end local v4    # "charArray":[C
    .end local v8    # "i":I
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_4
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_5

    .line 1144
    check-cast p1, [S

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v12, p1

    check-cast v12, [S

    .line 1145
    .local v12, "shortArray":[S
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1146
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    array-length v13, v12

    if-ge v8, v13, :cond_2

    .line 1147
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-short v14, v12, v8

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1146
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1149
    .end local v8    # "i":I
    .end local v12    # "shortArray":[S
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_5
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_6

    .line 1150
    check-cast p1, [Z

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v2, p1

    check-cast v2, [Z

    .line 1151
    .local v2, "booleanArray":[Z
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1152
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    array-length v13, v2

    if-ge v8, v13, :cond_2

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-boolean v14, v2, v8

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1152
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1155
    .end local v2    # "booleanArray":[Z
    .end local v8    # "i":I
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_6
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_7

    .line 1156
    check-cast p1, [J

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v10, p1

    check-cast v10, [J

    .line 1157
    .local v10, "longArray":[J
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v10

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1158
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    array-length v13, v10

    if-ge v8, v13, :cond_2

    .line 1159
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v14, v10, v8

    invoke-virtual {v13, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1158
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1161
    .end local v8    # "i":I
    .end local v10    # "longArray":[J
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_7
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_8

    .line 1162
    check-cast p1, [F

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v6, p1

    check-cast v6, [F

    .line 1163
    .local v6, "floatArray":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v6

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1164
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    array-length v13, v6

    if-ge v8, v13, :cond_2

    .line 1165
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v14, v6, v8

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1164
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1167
    .end local v6    # "floatArray":[F
    .end local v8    # "i":I
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_8
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_9

    .line 1168
    check-cast p1, [D

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v5, p1

    check-cast v5, [D

    .line 1169
    .local v5, "doubleArray":[D
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1170
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    array-length v13, v5

    if-ge v8, v13, :cond_2

    .line 1171
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v14, v5, v8

    invoke-virtual {v13, v14, v15}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1170
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1174
    .end local v5    # "doubleArray":[D
    .end local v8    # "i":I
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_9
    new-instance v13, Ljava/io/InvalidClassException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wrong base type in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1178
    :cond_a
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "array":Ljava/lang/Object;
    move-object/from16 v11, p1

    check-cast v11, [Ljava/lang/Object;

    .line 1179
    .local v11, "objectArray":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1180
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    array-length v13, v11

    if-ge v8, v13, :cond_2

    .line 1185
    aget-object v13, v11, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1180
    add-int/lit8 v8, v8, 0x1

    goto :goto_7
.end method

.method private writeNewClass(Ljava/lang/Class;Z)I
    .locals 4
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, "object":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1212
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1216
    .local v0, "clDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1217
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1222
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    .line 1223
    .local v1, "handle":I
    if-nez p2, :cond_0

    .line 1224
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1227
    :cond_0
    return v1

    .line 1219
    .end local v1    # "handle":I
    :cond_1
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    goto :goto_0
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .locals 6
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1245
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1246
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1247
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v1

    .line 1249
    .local v1, "flags":B
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    .line 1251
    .local v0, "externalizable":Z
    if-eqz v0, :cond_0

    .line 1252
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1253
    and-int/lit8 v2, v1, -0x9

    int-to-byte v1, v2

    .line 1260
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1261
    const/16 v2, 0x12

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1262
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    .line 1267
    :goto_1
    return-void

    .line 1257
    :cond_1
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    goto :goto_0

    .line 1265
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    .line 1711
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1713
    .local v5, "originalCurrentPutField":Ljava/io/EmulatedFieldsForDumping;
    const/4 v9, 0x0

    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1715
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v10, 0x7e

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1716
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1718
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 1720
    :cond_0
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1721
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    invoke-direct {p0, v0, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1723
    const/4 v6, -0x1

    .line 1724
    .local v6, "previousHandle":I
    if-eqz p3, :cond_1

    .line 1725
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v9, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v6

    .line 1727
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v3

    .line 1729
    .local v3, "handle":I
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1732
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_4

    array-length v9, v2

    if-le v9, v11, :cond_4

    .line 1733
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    aget-object v10, v2, v11

    invoke-virtual {v9, v10}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1734
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 1735
    new-instance v9, Ljava/lang/NoSuchFieldError;

    invoke-direct {v9}, Ljava/lang/NoSuchFieldError;-><init>()V

    throw v9

    .line 1738
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1739
    .local v7, "str":Ljava/lang/String;
    const/4 v8, -0x1

    .line 1740
    .local v8, "strHandle":I
    if-nez p3, :cond_3

    .line 1741
    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v8

    .line 1743
    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1744
    invoke-direct {p0, v7, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "strHandle":I
    :cond_4
    if-eqz p3, :cond_5

    .line 1753
    invoke-direct {p0, p1, v6}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1755
    :cond_5
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1756
    return v3

    .line 1746
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 1747
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1302
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1303
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1304
    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1305
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1306
    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "clDesc"    # Ljava/io/ObjectStreamClass;
    .param p4, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1336
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1337
    .local v4, "originalCurrentPutField":Ljava/io/EmulatedFieldsForDumping;
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1340
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    .line 1341
    .local v1, "externalizable":Z
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v6

    .line 1342
    .local v6, "serializable":Z
    if-nez v1, :cond_0

    if-nez v6, :cond_0

    .line 1344
    new-instance v7, Ljava/io/NotSerializableException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1348
    :cond_0
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x73

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1349
    invoke-direct {p0, p3, v7}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1350
    const/4 v5, -0x1

    .line 1351
    .local v5, "previousHandle":I
    if-eqz p4, :cond_1

    .line 1352
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v8, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v5

    .line 1355
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v2

    .line 1361
    .local v2, "handle":I
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1362
    iput-object p3, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1364
    if-eqz v1, :cond_7

    .line 1365
    :try_start_0
    iget v8, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    if-ne v8, v3, :cond_4

    .line 1366
    .local v3, "noBlockData":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1367
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1370
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1371
    if-eqz v3, :cond_5

    .line 1372
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    .end local v3    # "noBlockData":Z
    :goto_1
    if-eqz p4, :cond_3

    .line 1391
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1393
    :cond_3
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1394
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1395
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1398
    return v2

    :cond_4
    move v3, v7

    .line 1365
    goto :goto_0

    .line 1378
    .restart local v3    # "noBlockData":Z
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1379
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1389
    .end local v3    # "noBlockData":Z
    :catchall_0
    move-exception v7

    if-eqz p4, :cond_6

    .line 1391
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1393
    :cond_6
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1394
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1395
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v7

    .line 1384
    :cond_7
    :try_start_2
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private writeNewString(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1414
    invoke-static {p1, v8}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    .line 1416
    .local v2, "count":J
    const/4 v4, 0x0

    .line 1417
    .local v4, "offset":I
    const-wide/32 v6, 0xffff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 1418
    long-to-int v6, v2

    add-int/lit8 v6, v6, 0x3

    new-array v0, v6, [B

    .line 1419
    .local v0, "buffer":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    const/16 v6, 0x74

    aput-byte v6, v0, v4

    .line 1420
    long-to-int v6, v2

    int-to-short v6, v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 1421
    add-int/lit8 v4, v5, 0x2

    .line 1428
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :goto_0
    invoke-static {v0, v4, p1}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 1429
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v7, v0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1431
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    .line 1432
    .local v1, "handle":I
    if-nez p2, :cond_0

    .line 1433
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v6, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1436
    :cond_0
    return v1

    .line 1423
    .end local v0    # "buffer":[B
    .end local v1    # "handle":I
    :cond_1
    long-to-int v6, v2

    add-int/lit8 v6, v6, 0x9

    new-array v0, v6, [B

    .line 1424
    .restart local v0    # "buffer":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    const/16 v6, 0x7c

    aput-byte v6, v0, v4

    .line 1425
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v2, v3, v6}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 1426
    add-int/lit8 v4, v5, 0x8

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1448
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1449
    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1481
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-ne v2, v3, :cond_2

    .line 1482
    .local v1, "setOutput":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1483
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1487
    :cond_0
    iget-boolean v2, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    .line 1488
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 1515
    :cond_1
    :goto_1
    return-void

    .line 1481
    .end local v1    # "setOutput":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1494
    .restart local v1    # "setOutput":Z
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1497
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1498
    if-eqz v1, :cond_1

    .line 1499
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1501
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "ioEx1":Ljava/io/IOException;
    iget v2, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    if-nez v2, :cond_4

    .line 1506
    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1513
    :cond_4
    :goto_2
    throw v0

    .line 1507
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)I
    .locals 17
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .param p3, "computeClassBasedReplacement"    # Z
    .param p4, "computeStreamReplacement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    if-nez p1, :cond_0

    .line 1542
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1543
    const/4 v14, -0x1

    .line 1653
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v14

    .line 1545
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    if-nez p2, :cond_1

    .line 1546
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v9

    .line 1547
    .local v9, "handle":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_1

    move v14, v9

    .line 1548
    goto :goto_0

    .line 1553
    .end local v9    # "handle":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1554
    .local v5, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v6

    .line 1556
    .local v6, "clDesc":Ljava/io/ObjectStreamClass;
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 1559
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_2

    if-nez p4, :cond_4

    .line 1561
    :cond_2
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_3

    .line 1562
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    .line 1565
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    :try_start_1
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_4

    .line 1566
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    .line 1570
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_8

    .line 1571
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->hasMethodWriteReplace()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1572
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getMethodWriteReplace()Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 1575
    .local v12, "methodWriteReplace":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_3
    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 1590
    .local v13, "replObj":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_8

    .line 1592
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v13, v3, v4, v1}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    .line 1596
    .local v14, "replacementHandle":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_5

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1653
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1576
    .end local v13    # "replObj":Ljava/lang/Object;
    .end local v14    # "replacementHandle":I
    :catch_0
    move-exception v10

    .line 1577
    .local v10, "iae":Ljava/lang/IllegalAccessException;
    move-object/from16 v13, p1

    .line 1589
    .restart local v13    # "replObj":Ljava/lang/Object;
    goto :goto_1

    .line 1578
    .end local v10    # "iae":Ljava/lang/IllegalAccessException;
    .end local v13    # "replObj":Ljava/lang/Object;
    :catch_1
    move-exception v11

    .line 1581
    .local v11, "ite":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v16

    .line 1582
    .local v16, "target":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_6

    .line 1583
    check-cast v16, Ljava/io/ObjectStreamException;

    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1653
    .end local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    .end local p1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    throw v3

    .line 1584
    .restart local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    .restart local v16    # "target":Ljava/lang/Throwable;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    :try_start_6
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_7

    .line 1585
    check-cast v16, Ljava/lang/Error;

    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16

    .line 1587
    .restart local v16    # "target":Ljava/lang/Throwable;
    :cond_7
    check-cast v16, Ljava/lang/RuntimeException;

    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16

    .line 1608
    .end local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_a

    if-eqz p4, :cond_a

    .line 1610
    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1611
    .local v15, "streamReplacement":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_a

    .line 1613
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v3, v1, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    .line 1616
    .restart local v14    # "replacementHandle":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_9

    .line 1617
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1653
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1626
    .end local v14    # "replacementHandle":I
    .end local v15    # "streamReplacement":Ljava/lang/Object;
    :cond_a
    :try_start_7
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_b

    .line 1627
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1631
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    :try_start_8
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_c

    .line 1632
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1636
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_c
    :try_start_9
    sget-object v3, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_d

    .line 1637
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1641
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1642
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1646
    :cond_e
    :try_start_b
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/lang/Enum;

    if-eqz v3, :cond_f

    .line 1647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1651
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v6, v2}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v14

    .line 1653
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 330
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 331
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 360
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 361
    return-void
.end method

.method protected drain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x400

    .line 371
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, "offset":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 379
    .local v2, "written":[B
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 380
    array-length v4, v2

    sub-int/2addr v4, v0

    if-le v4, v3, :cond_2

    move v1, v3

    .line 382
    .local v1, "toWrite":I
    :goto_2
    const/16 v4, 0x100

    if-ge v1, v4, :cond_3

    .line 383
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    int-to-byte v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 391
    :goto_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 392
    add-int/2addr v0, v1

    .line 393
    goto :goto_1

    .line 380
    .end local v1    # "toWrite":I
    :cond_2
    array-length v4, v2

    sub-int v1, v4, v0

    goto :goto_2

    .line 386
    .restart local v1    # "toWrite":I
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x7a

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 387
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 396
    .end local v1    # "toWrite":I
    :cond_4
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 397
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method protected enableReplaceObject(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 438
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 439
    .local v0, "originalValue":Z
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 440
    return v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 454
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 455
    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_1

    .line 486
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    .line 488
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 553
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 555
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 556
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0}, Ljava/io/SerializationHandleMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set protocol version when stream in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 603
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 639
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 640
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 623
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 624
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 652
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 653
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 665
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 666
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 680
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 693
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 694
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 707
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1280
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 803
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 804
    return-void
.end method

.method public writeFields()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 863
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    .line 864
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 984
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 985
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1076
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1077
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1089
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1090
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1462
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1769
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-nez v0, :cond_0

    .line 1771
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1773
    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1784
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1785
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1786
    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1795
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1796
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1797
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1809
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1810
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1811
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1478
    return-void
.end method
