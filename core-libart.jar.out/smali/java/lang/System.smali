.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$SystemEnvironment;,
        Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    }
.end annotation


# static fields
.field private static final ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static justRanFinalization:Z

.field private static final lineSeparator:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field public static final out:Ljava/io/PrintStream;

.field private static runGC:Z

.field private static systemProperties:Ljava/util/Properties;

.field private static final unchangeableSystemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/System;->lock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 106
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 107
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 108
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    .line 109
    invoke-static {}, Ljava/lang/System;->createSystemProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 110
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static arraycopy([BI[BII)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    if-nez p2, :cond_1

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 252
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 258
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 262
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 263
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 268
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 275
    :cond_6
    return-void
.end method

.method public static arraycopy([CI[CII)V
    .locals 4
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    if-nez p2, :cond_1

    .line 195
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 199
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 205
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 209
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 210
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 215
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 222
    :cond_6
    return-void
.end method

.method public static arraycopy([DI[DII)V
    .locals 4
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 509
    if-nez p0, :cond_0

    .line 510
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_0
    if-nez p2, :cond_1

    .line 513
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 517
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 523
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 527
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 528
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 527
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 533
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 540
    :cond_6
    return-void
.end method

.method public static arraycopy([FI[FII)V
    .locals 4
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 456
    if-nez p0, :cond_0

    .line 457
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    if-nez p2, :cond_1

    .line 460
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 464
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 470
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 474
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 475
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 474
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 480
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 487
    :cond_6
    return-void
.end method

.method public static arraycopy([II[III)V
    .locals 4
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 350
    if-nez p0, :cond_0

    .line 351
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_0
    if-nez p2, :cond_1

    .line 354
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 358
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 364
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 368
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 369
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 368
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 374
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 381
    :cond_6
    return-void
.end method

.method public static arraycopy([JI[JII)V
    .locals 4
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_0
    if-nez p2, :cond_1

    .line 407
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 411
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 417
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 421
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 422
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 421
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 426
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 427
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 434
    :cond_6
    return-void
.end method

.method public static arraycopy([SI[SII)V
    .locals 4
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 297
    if-nez p0, :cond_0

    .line 298
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_0
    if-nez p2, :cond_1

    .line 301
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 305
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 311
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 315
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 316
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 321
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 328
    :cond_6
    return-void
.end method

.method public static arraycopy([ZI[ZII)V
    .locals 4
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 563
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_0
    if-nez p2, :cond_1

    .line 566
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 570
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_3
    const/16 v1, 0x20

    if-gt p4, v1, :cond_5

    .line 576
    if-ne p0, p2, :cond_4

    if-ge p1, p3, :cond_4

    add-int v1, p1, p4

    if-ge p3, v1, :cond_4

    .line 580
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 581
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 580
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 585
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    .line 586
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 593
    :cond_6
    return-void
.end method

.method private static native arraycopyBooleanUnchecked([ZI[ZII)V
.end method

.method private static native arraycopyByteUnchecked([BI[BII)V
.end method

.method private static native arraycopyCharUnchecked([CI[CII)V
.end method

.method private static native arraycopyDoubleUnchecked([DI[DII)V
.end method

.method private static native arraycopyFloatUnchecked([FI[FII)V
.end method

.method private static native arraycopyIntUnchecked([II[III)V
.end method

.method private static native arraycopyLongUnchecked([JI[JII)V
.end method

.method private static native arraycopyShortUnchecked([SI[SII)V
.end method

.method private static checkPropertyName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    if-nez p0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 921
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 1

    .prologue
    .line 940
    invoke-static {}, Ljava/io/Console;->getConsole()Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method private static createSystemProperties()Ljava/util/Properties;
    .locals 2

    .prologue
    .line 805
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 806
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)V

    .line 807
    return-object v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 634
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 635
    return-void
.end method

.method public static gc()V
    .locals 3

    .prologue
    .line 644
    sget-object v2, Ljava/lang/System;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 645
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    .line 646
    .local v0, "shouldRunGC":Z
    if-eqz v0, :cond_1

    .line 647
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z

    .line 651
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 655
    :cond_0
    return-void

    .line 649
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ljava/lang/System;->runGC:Z

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 704
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 891
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 892
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getenv()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 674
    .local v1, "entry":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 675
    .local v3, "index":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 676
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "entry":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1
    new-instance v6, Ljava/lang/System$SystemEnvironment;

    invoke-direct {v6, v5}, Ljava/lang/System$SystemEnvironment;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .locals 10

    .prologue
    .line 708
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 709
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 711
    .local v3, "p":Ljava/util/Properties;
    const-string v6, "http://www.android.com/"

    .line 712
    .local v6, "projectUrl":Ljava/lang/String;
    const-string v5, "The Android Project"

    .line 714
    .local v5, "projectName":Ljava/lang/String;
    const-string v8, "java.boot.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v8, "java.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v8, "java.class.version"

    const-string v9, "50.0"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v8, "java.compiler"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v8, "java.ext.dirs"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v8, "java.version"

    const-string v9, "0"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v8, "JAVA_HOME"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 728
    const-string v2, "/system"

    .line 730
    :cond_0
    const-string v8, "java.home"

    invoke-virtual {v3, v8, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v8, "java.specification.name"

    const-string v9, "Dalvik Core Library"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v8, "java.specification.vendor"

    invoke-virtual {v3, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v8, "java.specification.version"

    const-string v9, "0.9"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v8, "java.vendor"

    invoke-virtual {v3, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v8, "java.vendor.url"

    invoke-virtual {v3, v8, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v8, "java.vm.name"

    const-string v9, "Dalvik"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v8, "java.vm.specification.name"

    const-string v9, "Dalvik Virtual Machine Specification"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v8, "java.vm.specification.vendor"

    invoke-virtual {v3, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v8, "java.vm.specification.version"

    const-string v9, "0.9"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v8, "java.vm.vendor"

    invoke-virtual {v3, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v8, "java.vm.version"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v8, "file.separator"

    const-string v9, "/"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string v8, "line.separator"

    const-string v9, "\n"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v8, "path.separator"

    const-string v9, ":"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v8, "java.runtime.name"

    const-string v9, "Android Runtime"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v8, "java.runtime.version"

    const-string v9, "0.9"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v8, "java.vm.vendor.url"

    invoke-virtual {v3, v8, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v8, "file.encoding"

    const-string v9, "UTF-8"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string v8, "user.language"

    const-string v9, "en"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string v8, "user.region"

    const-string v9, "US"

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9}, Llibcore/io/Os;->getuid()I

    move-result v9

    invoke-interface {v8, v9}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v4

    .line 759
    .local v4, "passwd":Landroid/system/StructPasswd;
    const-string v8, "user.name"

    iget-object v9, v4, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v1

    .line 765
    .local v1, "info":Landroid/system/StructUtsname;
    const-string v8, "os.arch"

    iget-object v9, v1, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string v8, "os.name"

    iget-object v9, v1, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v8, "os.version"

    iget-object v9, v1, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v8, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v8, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v8, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 777
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 778
    return-object v3

    .line 760
    .end local v1    # "info":Landroid/system/StructUtsname;
    .end local v4    # "passwd":Landroid/system/StructPasswd;
    :catch_0
    move-exception v0

    .line 761
    .local v0, "exception":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method private static initUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 787
    sget-object v0, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    return-void
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 982
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 989
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 995
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 996
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1002
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1009
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1016
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1017
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1023
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1024
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1030
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1031
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .prologue
    .line 821
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 822
    .local v1, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 823
    .local v5, "split":I
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "assignment":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "split":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 3

    .prologue
    .line 1041
    sget-object v2, Ljava/lang/System;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1042
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    .line 1043
    .local v0, "shouldRunGC":Z
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->runGC:Z

    .line 1044
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    if-eqz v0, :cond_0

    .line 1046
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1048
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 1049
    sget-object v2, Ljava/lang/System;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1050
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z

    .line 1051
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1052
    return-void

    .line 1044
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1051
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1066
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1067
    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    .prologue
    .line 794
    const-string v0, "java.io.tmpdir"

    const-string v1, "/tmp"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v0, "user.home"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newErr"    # Ljava/io/PrintStream;

    .prologue
    .line 144
    const-string v0, "err"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "newIn"    # Ljava/io/InputStream;

    .prologue
    .line 121
    const-string v0, "in"

    const-string v1, "Ljava/io/InputStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newOut"    # Ljava/io/PrintStream;

    .prologue
    .line 132
    const-string v0, "out"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    .prologue
    .line 1075
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1077
    .local v0, "userProperties":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    if-eqz p0, :cond_0

    .line 1078
    invoke-virtual {v0, p0}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->putAll(Ljava/util/Map;)V

    .line 1084
    :goto_0
    sput-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 1085
    return-void

    .line 1081
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 904
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 905
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1
    .param p0, "sm"    # Ljava/lang/SecurityManager;

    .prologue
    .line 1099
    if-eqz p0, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 1102
    :cond_0
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
