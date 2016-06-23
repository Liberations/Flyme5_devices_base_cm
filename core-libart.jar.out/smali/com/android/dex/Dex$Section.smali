.class public final Lcom/android/dex/Dex$Section;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Lcom/android/dex/util/ByteInput;
.implements Lcom/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Section"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    .line 520
    iput-object p3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dex/Dex;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/nio/ByteBuffer;
    .param p4, "x3"    # Lcom/android/dex/Dex$1;

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dex/Dex$Section;)Lcom/android/dex/ClassData;
    .locals 1
    .param p0, "x0"    # Lcom/android/dex/Dex$Section;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readClassData()Lcom/android/dex/ClassData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dex/Dex$Section;)Lcom/android/dex/Code;
    .locals 1
    .param p0, "x0"    # Lcom/android/dex/Dex$Section;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readCode()Lcom/android/dex/Code;

    move-result-object v0

    return-object v0
.end method

.method private findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I
    .locals 3
    .param p1, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;
    .param p2, "offset"    # I

    .prologue
    .line 698
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 699
    aget-object v0, p1, v1

    .line 700
    .local v0, "catchHandler":Lcom/android/dex/Code$CatchHandler;
    invoke-virtual {v0}, Lcom/android/dex/Code$CatchHandler;->getOffset()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 701
    return v1

    .line 698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "catchHandler":Lcom/android/dex/Code$CatchHandler;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private getBytesFrom(I)[B
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 761
    .local v0, "end":I
    sub-int v2, v0, p1

    new-array v1, v2, [B

    .line 762
    .local v1, "result":[B
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 763
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 764
    return-object v1
.end method

.method private readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;
    .locals 7
    .param p1, "offset"    # I

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readSleb128()I

    move-result v4

    .line 709
    .local v4, "size":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 710
    .local v2, "handlersCount":I
    new-array v5, v2, [I

    .line 711
    .local v5, "typeIndexes":[I
    new-array v0, v2, [I

    .line 712
    .local v0, "addresses":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v6

    aput v6, v5, v3

    .line 714
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v6

    aput v6, v0, v3

    .line 712
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 716
    :cond_0
    if-gtz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 717
    .local v1, "catchAllAddress":I
    :goto_1
    new-instance v6, Lcom/android/dex/Code$CatchHandler;

    invoke-direct {v6, v5, v0, v1, p1}, Lcom/android/dex/Code$CatchHandler;-><init>([I[III)V

    return-object v6

    .line 716
    .end local v1    # "catchAllAddress":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;
    .locals 6

    .prologue
    .line 675
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 676
    .local v0, "baseOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 677
    .local v1, "catchHandlersSize":I
    new-array v4, v1, [Lcom/android/dex/Code$CatchHandler;

    .line 678
    .local v4, "result":[Lcom/android/dex/Code$CatchHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 679
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v3, v5, v0

    .line 680
    .local v3, "offset":I
    invoke-direct {p0, v3}, Lcom/android/dex/Dex$Section;->readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;

    move-result-object v5

    aput-object v5, v4, v2

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    .end local v3    # "offset":I
    :cond_0
    return-object v4
.end method

.method private readClassData()Lcom/android/dex/ClassData;
    .locals 9

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    .line 722
    .local v5, "staticFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 723
    .local v3, "instanceFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 724
    .local v1, "directMethodsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v7

    .line 725
    .local v7, "virtualMethodsSize":I
    invoke-direct {p0, v5}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    move-result-object v4

    .line 726
    .local v4, "staticFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v3}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    move-result-object v2

    .line 727
    .local v2, "instanceFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v1}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    move-result-object v0

    .line 728
    .local v0, "directMethods":[Lcom/android/dex/ClassData$Method;
    invoke-direct {p0, v7}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    move-result-object v6

    .line 729
    .local v6, "virtualMethods":[Lcom/android/dex/ClassData$Method;
    new-instance v8, Lcom/android/dex/ClassData;

    invoke-direct {v8, v4, v2, v0, v6}, Lcom/android/dex/ClassData;-><init>([Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Method;[Lcom/android/dex/ClassData$Method;)V

    return-object v8
.end method

.method private readCode()Lcom/android/dex/Code;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 644
    .local v1, "registersSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v2

    .line 645
    .local v2, "insSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 646
    .local v3, "outsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v10

    .line 647
    .local v10, "triesSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    .line 648
    .local v4, "debugInfoOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v8

    .line 649
    .local v8, "instructionsSize":I
    invoke-virtual {p0, v8}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v5

    .line 652
    .local v5, "instructions":[S
    if-lez v10, :cond_1

    .line 653
    array-length v0, v5

    rem-int/lit8 v0, v0, 0x2

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    iget-object v11, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v9

    .line 663
    .local v9, "triesSection":Lcom/android/dex/Dex$Section;
    mul-int/lit8 v0, v10, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->skip(I)V

    .line 664
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;

    move-result-object v7

    .line 665
    .local v7, "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    invoke-direct {v9, v10, v7}, Lcom/android/dex/Dex$Section;->readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;

    move-result-object v6

    .line 670
    .end local v9    # "triesSection":Lcom/android/dex/Dex$Section;
    .local v6, "tries":[Lcom/android/dex/Code$Try;
    :goto_0
    new-instance v0, Lcom/android/dex/Code;

    invoke-direct/range {v0 .. v7}, Lcom/android/dex/Code;-><init>(IIII[S[Lcom/android/dex/Code$Try;[Lcom/android/dex/Code$CatchHandler;)V

    return-object v0

    .line 667
    .end local v6    # "tries":[Lcom/android/dex/Code$Try;
    .end local v7    # "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    :cond_1
    new-array v6, v0, [Lcom/android/dex/Code$Try;

    .line 668
    .restart local v6    # "tries":[Lcom/android/dex/Code$Try;
    new-array v7, v0, [Lcom/android/dex/Code$CatchHandler;

    .restart local v7    # "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    goto :goto_0
.end method

.method private readFields(I)[Lcom/android/dex/ClassData$Field;
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 733
    new-array v3, p1, [Lcom/android/dex/ClassData$Field;

    .line 734
    .local v3, "result":[Lcom/android/dex/ClassData$Field;
    const/4 v1, 0x0

    .line 735
    .local v1, "fieldIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v4

    add-int/2addr v1, v4

    .line 737
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 738
    .local v0, "accessFlags":I
    new-instance v4, Lcom/android/dex/ClassData$Field;

    invoke-direct {v4, v1, v0}, Lcom/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v3, v2

    .line 735
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    .end local v0    # "accessFlags":I
    :cond_0
    return-object v3
.end method

.method private readMethods(I)[Lcom/android/dex/ClassData$Method;
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 744
    new-array v4, p1, [Lcom/android/dex/ClassData$Method;

    .line 745
    .local v4, "result":[Lcom/android/dex/ClassData$Method;
    const/4 v3, 0x0

    .line 746
    .local v3, "methodIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    add-int/2addr v3, v5

    .line 748
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 749
    .local v0, "accessFlags":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 750
    .local v1, "codeOff":I
    new-instance v5, Lcom/android/dex/ClassData$Method;

    invoke-direct {v5, v3, v0, v1}, Lcom/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v4, v2

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v0    # "accessFlags":I
    .end local v1    # "codeOff":I
    :cond_0
    return-object v4
.end method

.method private readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;
    .locals 7
    .param p1, "triesSize"    # I
    .param p2, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;

    .prologue
    .line 686
    new-array v4, p1, [Lcom/android/dex/Code$Try;

    .line 687
    .local v4, "result":[Lcom/android/dex/Code$Try;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 689
    .local v5, "startAddress":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 690
    .local v3, "instructionCount":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 691
    .local v1, "handlerOffset":I
    invoke-direct {p0, p2, v1}, Lcom/android/dex/Dex$Section;->findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I

    move-result v0

    .line 692
    .local v0, "catchHandlerIndex":I
    new-instance v6, Lcom/android/dex/Code$Try;

    invoke-direct {v6, v5, v3, v0}, Lcom/android/dex/Code$Try;-><init>(III)V

    aput-object v6, v4, v2

    .line 687
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    .end local v0    # "catchHandlerIndex":I
    .end local v1    # "handlerOffset":I
    .end local v3    # "instructionCount":I
    .end local v5    # "startAddress":I
    :cond_0
    return-object v4
.end method


# virtual methods
.method public alignToFourBytes()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 792
    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .locals 2

    .prologue
    .line 798
    :goto_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 801
    :cond_0
    return-void
.end method

.method public assertFourByteAligned()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public readAnnotation()Lcom/android/dex/Annotation;
    .locals 6

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readByte()B

    move-result v1

    .line 769
    .local v1, "visibility":B
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 770
    .local v0, "start":I
    new-instance v2, Lcom/android/dex/EncodedValueReader;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    invoke-virtual {v2}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 771
    new-instance v2, Lcom/android/dex/Annotation;

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    new-instance v4, Lcom/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v2, v3, v1, v4}, Lcom/android/dex/Annotation;-><init>(Lcom/android/dex/Dex;BLcom/android/dex/EncodedValue;)V

    return-object v2
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteArray(I)[B
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 545
    new-array v0, p1, [B

    .line 546
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 547
    return-object v0
.end method

.method public readClassDef()Lcom/android/dex/ClassDef;
    .locals 11

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v2

    .line 629
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 630
    .local v3, "type":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    .line 631
    .local v4, "accessFlags":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 632
    .local v5, "supertype":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v6

    .line 633
    .local v6, "interfacesOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v7

    .line 634
    .local v7, "sourceFileIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v8

    .line 635
    .local v8, "annotationsOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v9

    .line 636
    .local v9, "classDataOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v10

    .line 637
    .local v10, "staticValuesOffset":I
    new-instance v0, Lcom/android/dex/ClassDef;

    iget-object v1, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct/range {v0 .. v10}, Lcom/android/dex/ClassDef;-><init>(Lcom/android/dex/Dex;IIIIIIIII)V

    return-object v0
.end method

.method public readEncodedArray()Lcom/android/dex/EncodedValue;
    .locals 3

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 776
    .local v0, "start":I
    new-instance v1, Lcom/android/dex/EncodedValueReader;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 777
    new-instance v1, Lcom/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public readFieldId()Lcom/android/dex/FieldId;
    .locals 5

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 608
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v2

    .line 609
    .local v2, "typeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 610
    .local v1, "nameIndex":I
    new-instance v3, Lcom/android/dex/FieldId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/dex/FieldId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readMethodId()Lcom/android/dex/MethodId;
    .locals 5

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 615
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v2

    .line 616
    .local v2, "protoIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 617
    .local v1, "nameIndex":I
    new-instance v3, Lcom/android/dex/MethodId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/dex/MethodId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readProtoId()Lcom/android/dex/ProtoId;
    .locals 5

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 622
    .local v2, "shortyIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 623
    .local v1, "returnTypeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 624
    .local v0, "parametersOffset":I
    new-instance v3, Lcom/android/dex/ProtoId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/android/dex/ProtoId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readShortArray(I)[S
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 551
    if-nez p1, :cond_1

    .line 552
    sget-object v1, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    .line 558
    :cond_0
    return-object v1

    .line 554
    :cond_1
    new-array v1, p1, [S

    .line 555
    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readSleb128()I
    .locals 1

    .prologue
    .line 570
    invoke-static {p0}, Lcom/android/dex/Leb128;->readSignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 586
    .local v2, "offset":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 587
    .local v5, "savedPosition":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 588
    .local v4, "savedLimit":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 589
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 591
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 592
    .local v1, "expectedLength":I
    new-array v6, v1, [C

    invoke-static {p0, v6}, Lcom/android/dex/Mutf8;->decode(Lcom/android/dex/util/ByteInput;[C)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 594
    new-instance v6, Lcom/android/dex/DexException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Declared length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t match decoded length of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v1    # "expectedLength":I
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/UTFDataFormatException;
    :try_start_1
    new-instance v6, Lcom/android/dex/DexException;

    invoke-direct {v6, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    .end local v0    # "e":Ljava/io/UTFDataFormatException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 602
    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v6

    .line 601
    .restart local v1    # "expectedLength":I
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 602
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v3
.end method

.method public readTypeList()Lcom/android/dex/TypeList;
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 579
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v1

    .line 580
    .local v1, "types":[S
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytes()V

    .line 581
    new-instance v2, Lcom/android/dex/TypeList;

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v2, v3, v1}, Lcom/android/dex/TypeList;-><init>(Lcom/android/dex/Dex;[S)V

    return-object v2
.end method

.method public readUleb128()I
    .locals 1

    .prologue
    .line 562
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readUleb128p1()I
    .locals 1

    .prologue
    .line 566
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 781
    if-gez p1, :cond_0

    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 785
    return-void
.end method

.method public used()I
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 811
    return-void
.end method

.method public write([S)V
    .locals 4
    .param p1, "shorts"    # [S

    .prologue
    .line 830
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-short v3, v0, v1

    .line 831
    .local v3, "s":S
    invoke-virtual {p0, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v3    # "s":S
    :cond_0
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 815
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 837
    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "i"    # S

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 819
    return-void
.end method

.method public writeSleb128(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 849
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeStringData(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 857
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 858
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 859
    invoke-static {p1}, Lcom/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 860
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    return-void

    .line 861
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/io/UTFDataFormatException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public writeTypeList(Lcom/android/dex/TypeList;)V
    .locals 6
    .param p1, "typeList"    # Lcom/android/dex/TypeList;

    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/android/dex/TypeList;->getTypes()[S

    move-result-object v4

    .line 868
    .local v4, "types":[S
    array-length v5, v4

    invoke-virtual {p0, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 869
    move-object v0, v4

    .local v0, "arr$":[S
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-short v3, v0, v1

    .line 870
    .local v3, "type":S
    invoke-virtual {p0, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v3    # "type":S
    :cond_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    .line 873
    return-void
.end method

.method public writeUleb128(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 841
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeUleb128p1(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 574
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 575
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 822
    int-to-short v0, p1

    .line 823
    .local v0, "s":S
    const v1, 0xffff

    and-int/2addr v1, v0

    if-eq p1, v1, :cond_0

    .line 824
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an unsigned short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 827
    return-void
.end method
