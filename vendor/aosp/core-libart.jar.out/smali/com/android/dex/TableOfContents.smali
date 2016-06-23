.class public final Lcom/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/TableOfContents$Section;
    }
.end annotation


# instance fields
.field public final annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

.field public checksum:I

.field public final classDatas:Lcom/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/android/dex/TableOfContents$Section;

.field public final codes:Lcom/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    .line 33
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v3}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    .line 34
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v4}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    .line 35
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v5}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    .line 36
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v6}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    .line 37
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    .line 38
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    .line 39
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    .line 40
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1001

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    .line 41
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1002

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    .line 42
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1003

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    .line 43
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    .line 44
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2001

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    .line 45
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2002

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    .line 46
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2003

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    .line 47
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2004

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    .line 48
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2005

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    .line 49
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2006

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    .line 50
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    .line 65
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    .line 66
    return-void
.end method

.method private getSection(S)Lcom/android/dex/TableOfContents$Section;
    .locals 7
    .param p1, "type"    # S

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    .local v0, "arr$":[Lcom/android/dex/TableOfContents$Section;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 159
    .local v3, "section":Lcom/android/dex/TableOfContents$Section;
    iget-short v4, v3, Lcom/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_0

    .line 160
    return-object v3

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such map item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readHeader(Lcom/android/dex/Dex$Section;)V
    .locals 7
    .param p1, "headerIn"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v3

    .line 76
    .local v3, "magic":[B
    invoke-static {v3}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    .line 78
    .local v0, "apiTarget":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    .line 79
    new-instance v4, Lcom/android/dex/DexException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->checksum:I

    .line 83
    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/dex/TableOfContents;->signature:[B

    .line 84
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    .line 85
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 86
    .local v2, "headerSize":I
    const/16 v4, 0x70

    if-eq v2, v4, :cond_1

    .line 87
    new-instance v4, Lcom/android/dex/DexException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected header: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 90
    .local v1, "endianTag":I
    const v4, 0x12345678

    if-eq v1, v4, :cond_2

    .line 91
    new-instance v4, Lcom/android/dex/DexException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected endian tag: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    .line 94
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    .line 95
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 96
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v4, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-nez v4, :cond_3

    .line 97
    new-instance v4, Lcom/android/dex/DexException;

    const-string v5, "Cannot merge dex files that do not contain a map"

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 100
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 101
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 102
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 103
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 104
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 105
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 106
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 107
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 108
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 109
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 110
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 111
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    .line 112
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    .line 113
    return-void
.end method

.method private readMap(Lcom/android/dex/Dex$Section;)V
    .locals 10
    .param p1, "in"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 117
    .local v1, "mapSize":I
    const/4 v3, 0x0

    .line 118
    .local v3, "previous":Lcom/android/dex/TableOfContents$Section;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 119
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v6

    .line 120
    .local v6, "type":S
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    .line 121
    invoke-direct {p0, v6}, Lcom/android/dex/TableOfContents;->getSection(S)Lcom/android/dex/TableOfContents$Section;

    move-result-object v4

    .line 122
    .local v4, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 123
    .local v5, "size":I
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 125
    .local v2, "offset":I
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    if-eqz v7, :cond_0

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    if-ne v7, v5, :cond_1

    :cond_0
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eq v7, v2, :cond_2

    .line 127
    :cond_1
    new-instance v7, Lcom/android/dex/DexException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected map value for 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    :cond_2
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 131
    iput v2, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 133
    if-eqz v3, :cond_3

    iget v7, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget v8, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-le v7, v8, :cond_3

    .line 134
    new-instance v7, Lcom/android/dex/DexException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Map is unsorted at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    :cond_3
    move-object v3, v4

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "offset":I
    .end local v4    # "section":Lcom/android/dex/TableOfContents$Section;
    .end local v5    # "size":I
    .end local v6    # "type":S
    :cond_4
    iget-object v7, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 6

    .prologue
    .line 143
    iget v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    iget v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    add-int v0, v3, v4

    .line 144
    .local v0, "end":I
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 145
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    aget-object v2, v3, v1

    .line 146
    .local v2, "section":Lcom/android/dex/TableOfContents$Section;
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 144
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 149
    :cond_0
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    if-le v3, v0, :cond_1

    .line 150
    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Map is unsorted at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_1
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    sub-int v3, v0, v3

    iput v3, v2, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    .line 153
    iget v0, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    goto :goto_1

    .line 155
    .end local v2    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_2
    return-void
.end method

.method public readFrom(Lcom/android/dex/Dex;)V
    .locals 1
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readHeader(Lcom/android/dex/Dex$Section;)V

    .line 70
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readMap(Lcom/android/dex/Dex$Section;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    .line 72
    return-void
.end method

.method public writeHeader(Lcom/android/dex/Dex$Section;)V
    .locals 2
    .param p1, "out"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 168
    iget v0, p0, Lcom/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 170
    iget v0, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 171
    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 172
    const v0, 0x12345678

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 190
    return-void
.end method

.method public writeMap(Lcom/android/dex/Dex$Section;)V
    .locals 6
    .param p1, "out"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "count":I
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    .local v0, "arr$":[Lcom/android/dex/TableOfContents$Section;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 195
    .local v4, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v4}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v4    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 202
    .restart local v4    # "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v4}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    iget-short v5, v4, Lcom/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 204
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 205
    iget v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 206
    iget v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 209
    .end local v4    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_3
    return-void
.end method
