.class Ljavax/xml/transform/stream/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v5, 0x80

    const/16 v8, 0x7f

    const/4 v7, 0x1

    .line 23
    new-array v4, v5, [Z

    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    .line 25
    new-array v4, v5, [C

    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    .line 27
    new-array v4, v5, [C

    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    .line 28
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    .line 33
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    .line 34
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 35
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v8

    .line 38
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    const/16 v5, 0x37

    aput-char v5, v4, v8

    .line 39
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    const/16 v5, 0x46

    aput-char v5, v4, v8

    .line 40
    const/16 v4, 0xf

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .line 42
    .local v1, "escChs":[C
    array-length v3, v1

    .line 44
    .local v3, "len":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 45
    aget-char v0, v1, v2

    .line 46
    .local v0, "ch":C
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v0

    .line 47
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 48
    sget-object v4, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "ch":C
    :cond_1
    return-void

    .line 28
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 40
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x2f

    const/16 v10, 0x25

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 p0, 0x0

    .line 126
    .end local p0    # "path":Ljava/lang/String;
    .local v1, "buffer":Ljava/lang/StringBuilder;
    .local v5, "i":I
    .local v6, "len":I
    .local v7, "separator":C
    :goto_0
    return-object p0

    .line 60
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v7    # "separator":C
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    .line 61
    .restart local v7    # "separator":C
    invoke-virtual {p0, v7, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 64
    .restart local v6    # "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v6, 0x3

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    const-string v8, "file://"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v8, 0x2

    if-lt v6, v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1

    .line 68
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 69
    .local v3, "ch":I
    const/16 v8, 0x41

    if-lt v3, v8, :cond_1

    const/16 v8, 0x5a

    if-gt v3, v8, :cond_1

    .line 70
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .end local v3    # "ch":I
    :cond_1
    const/4 v5, 0x0

    .line 76
    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 79
    .restart local v3    # "ch":I
    const/16 v8, 0x80

    if-lt v3, v8, :cond_3

    .line 93
    .end local v3    # "ch":I
    :cond_2
    if-ge v5, v6, :cond_7

    .line 95
    const/4 v2, 0x0

    .line 98
    .local v2, "bytes":[B
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    array-length v6, v2

    .line 106
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_7

    .line 107
    aget-byte v0, v2, v5

    .line 109
    .local v0, "b":B
    if-gez v0, :cond_5

    .line 110
    add-int/lit16 v3, v0, 0x100

    .line 111
    .restart local v3    # "ch":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v9, v3, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gHexChs:[C

    and-int/lit8 v9, v3, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .end local v3    # "ch":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 81
    .end local v0    # "b":B
    .end local v2    # "bytes":[B
    .restart local v3    # "ch":I
    :cond_3
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_4

    .line 82
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_4
    int-to-char v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 99
    .end local v3    # "ch":I
    .restart local v2    # "bytes":[B
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0

    .line 115
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":B
    :cond_5
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_6

    .line 116
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    sget-object v8, Ljavax/xml/transform/stream/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 121
    :cond_6
    int-to-char v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 126
    .end local v0    # "b":B
    .end local v2    # "bytes":[B
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
