.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final NL:Ljava/lang/String; = "\n|\r\n|\r|\u0085|\u2028|\u2029"


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cachedFloatPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPatternRadix:I

.field private cachedNextIndex:I

.field private cachedNextValue:Ljava/lang/Object;

.field private closed:Z

.field private currentRadix:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "\\p{javaWhitespace}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "true|false"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "(\n|\r\n|\r|\u0085|\u2028|\u2029)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, ".*(\n|\r\n|\r|\u0085|\u2028|\u2029)|.+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v3, 0x400

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v3, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v3, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v3, 0xa

    iput v3, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v3, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v4, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v5, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v6, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v5, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "src == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v1, "fis":Ljava/io/FileInputStream;
    if-nez p2, :cond_1

    .line 160
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "charsetName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v2, "streamReader":Ljava/io/InputStreamReader;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    .line 171
    return-void

    .line 166
    .end local v2    # "streamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;

    .prologue
    .line 191
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v4, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v5, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v4, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v1, "streamReader":Ljava/io/InputStreamReader;
    invoke-direct {p0, v1}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    .line 217
    return-void

    .line 213
    .end local v1    # "streamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/Readable;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 180
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 240
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    if-nez p2, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    .line 262
    return-void
.end method

.method private addNegativeSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "unsignedNumeral"    # Ljava/lang/String;

    .prologue
    .line 1813
    const-string v0, ""

    .line 1814
    .local v0, "negativePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 1815
    .local v1, "negativeSuffix":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1821
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "unsignedNumeral"    # Ljava/lang/String;

    .prologue
    .line 1798
    const-string v0, ""

    .line 1799
    .local v0, "positivePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 1800
    .local v1, "positiveSuffix":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1803
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1806
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkNotNull(Ljava/util/regex/Pattern;)V
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    .line 1661
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1663
    :cond_0
    return-void
.end method

.method private checkRadix(I)V
    .locals 3
    .param p1, "radix"    # I

    .prologue
    .line 1644
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_1

    .line 1645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_1
    return-void
.end method

.method private expandBuffer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2092
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 2093
    .local v4, "oldPosition":I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    .line 2094
    .local v2, "oldCapacity":I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 2095
    .local v3, "oldLimit":I
    mul-int/lit8 v1, v2, 0x2

    .line 2096
    .local v1, "newCapacity":I
    new-array v0, v1, [C

    .line 2097
    .local v0, "newBuffer":[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 2098
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 2099
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2100
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2101
    return-void
.end method

.method private findDelimiterAfter()I
    .locals 4

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, "findComplete":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2031
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2032
    const/4 v0, 0x1

    .line 2033
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2034
    const/4 v0, 0x0

    goto :goto_0

    .line 2037
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    .line 2038
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2039
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 2041
    :cond_2
    const/4 v1, -0x1

    .line 2047
    :goto_1
    return v1

    .line 2045
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2046
    .local v1, "tokenEndIndex":I
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    goto :goto_1
.end method

.method private findPreDelimiter()I
    .locals 4

    .prologue
    .line 1973
    const/4 v0, 0x0

    .line 1974
    .local v0, "findComplete":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1975
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1976
    const/4 v0, 0x1

    .line 1978
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_0

    .line 1980
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    .line 1981
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1982
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 1983
    const/4 v0, 0x0

    goto :goto_0

    .line 1987
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    .line 1988
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1989
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 1991
    :cond_2
    const/4 v1, -0x1

    .line 1997
    :goto_1
    return v1

    .line 1995
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1996
    .local v1, "tokenStartIndex":I
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    goto :goto_1
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .locals 15

    .prologue
    .line 1751
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v13, :cond_0

    .line 1752
    iget-object v13, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v13}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    check-cast v13, Ljava/text/DecimalFormat;

    iput-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1755
    :cond_0
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    if-eqz v13, :cond_1

    .line 1756
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 1784
    :goto_0
    return-object v13

    .line 1759
    :cond_1
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v13}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    .line 1761
    .local v3, "dfs":Ljava/text/DecimalFormatSymbols;
    const-string v4, "([0-9]|(\\p{javaDigit}))"

    .line 1762
    .local v4, "digit":Ljava/lang/String;
    const-string v10, "[\\p{javaDigit}&&[^0]]"

    .line 1763
    .local v10, "nonZeroDigit":Ljava/lang/String;
    invoke-direct {p0, v4, v10}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1765
    .local v11, "numeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1766
    .local v2, "decimalSeparator":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "*+|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "++)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "decimalNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "([eE][+-]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "+)?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1771
    .local v5, "exponent":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, "decimal":Ljava/lang/String;
    const-string v6, "([-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    .line 1776
    .local v6, "hexFloat":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v7

    .line 1777
    .local v7, "localNaN":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    .line 1778
    .local v8, "localeInfinity":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(NaN|\\Q"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\\E|Infinity|\\Q"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\\E)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1779
    .local v9, "nonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "((([-+]?("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")))|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v9}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v9}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1783
    .local v12, "signedNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 1784
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    goto/16 :goto_0
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .locals 9
    .param p1, "radix"    # I

    .prologue
    .line 1723
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1725
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v7, :cond_0

    .line 1726
    iget-object v7, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    check-cast v7, Ljava/text/DecimalFormat;

    iput-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1729
    :cond_0
    iget v7, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    if-ne v7, p1, :cond_1

    .line 1730
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 1747
    :goto_0
    return-object v7

    .line 1733
    :cond_1
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1734
    .local v2, "digits":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "ASCIIDigit":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, "nonZeroASCIIDigit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((?i)["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]|\\p{javaDigit})"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, "digit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((?i)["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1739
    .local v4, "nonZeroDigit":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1741
    .local v5, "numeral":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(([-+]?("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")))|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v5}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v5}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1745
    .local v6, "regex":Ljava/lang/String;
    iput p1, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 1746
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 1747
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    goto/16 :goto_0
.end method

.method private getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "digit"    # Ljava/lang/String;
    .param p2, "nonZeroDigit"    # Ljava/lang/String;

    .prologue
    .line 1788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "groupSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")+)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    .local v1, "groupedNumeral":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "++)|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize(Ljava/lang/Readable;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Readable;

    .prologue
    .line 265
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 266
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 267
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 268
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 269
    return-void
.end method

.method private prepareForScan()V
    .locals 3

    .prologue
    .line 1689
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget-object v2, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1695
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 1696
    .local v0, "oldPosition":I
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1697
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 1698
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1701
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 1702
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1703
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1707
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 1712
    .end local v0    # "oldPosition":I
    :cond_0
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1713
    return-void
.end method

.method private readMore()V
    .locals 6

    .prologue
    .line 2056
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 2057
    .local v2, "oldPosition":I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2059
    .local v1, "oldBufferLength":I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 2060
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    .line 2066
    :cond_0
    :try_start_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2067
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2068
    :cond_1
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "readCount":I
    if-eqz v3, :cond_1

    .line 2081
    :goto_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2082
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2083
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2084
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 2088
    :goto_1
    return-void

    .line 2071
    .end local v3    # "readCount":I
    :catch_0
    move-exception v0

    .line 2075
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2077
    const/4 v3, -0x1

    .line 2078
    .restart local v3    # "readCount":I
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_0

    .line 2086
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_1
.end method

.method private recoverPreviousStatus()V
    .locals 1

    .prologue
    .line 1719
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1720
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 12
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v11, 0xa

    const/4 v10, -0x1

    .line 1849
    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1851
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v7, "tokenBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v7}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v4

    .line 1854
    .local v4, "negative":Z
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1856
    .local v2, "groupSeparator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .local v6, "separatorIndex":I
    if-eq v6, v10, :cond_0

    .line 1857
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1860
    :cond_0
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1861
    .local v0, "decimalSeparator":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1862
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v5, "result":Ljava/lang/StringBuilder;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_2

    .line 1864
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1865
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x24

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 1866
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1869
    .end local v3    # "i":I
    :cond_2
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_a

    .line 1870
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1871
    const-string v8, "NaN"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1886
    move-object v5, v7

    .line 1888
    :cond_4
    if-eq v6, v10, :cond_5

    .line 1889
    const-string v8, "."

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    :cond_5
    if-eqz v4, :cond_6

    .line 1893
    const/4 v8, 0x0

    const/16 v9, 0x2d

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1895
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1872
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1873
    const-string v8, "Infinity"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1875
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1876
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-eq v8, v10, :cond_9

    .line 1877
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1875
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1882
    .end local v3    # "i":I
    :cond_a
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1829
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1841
    .end local p1    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1835
    .restart local p1    # "floatString":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "exponentIndex":I
    if-ne v1, v4, :cond_2

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 1836
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, "decimalNumeralString":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1838
    .local v2, "exponentString":Ljava/lang/String;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1841
    .end local v0    # "decimalNumeralString":Ljava/lang/String;
    .end local v2    # "exponentString":Ljava/lang/String;
    :cond_3
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "tokenBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1903
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    .line 1904
    .local v3, "positivePrefix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    .line 1905
    .local v4, "positiveSuffix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 1906
    .local v1, "negativePrefix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    .line 1908
    .local v2, "negativeSuffix":Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1909
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1911
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1912
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1914
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 1915
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1918
    :cond_2
    const/4 v0, 0x0

    .line 1919
    .local v0, "negative":Z
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1920
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1921
    const/4 v0, 0x1

    .line 1923
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1924
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1925
    const/4 v0, 0x1

    .line 1927
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 1928
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1930
    const/4 v0, 0x1

    .line 1932
    :cond_5
    return v0
.end method

.method private resetMatcher()V
    .locals 3

    .prologue
    .line 1676
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1677
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1678
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .locals 6
    .param p1, "findIndex"    # I

    .prologue
    const/4 v5, -0x1

    .line 2006
    const/4 v0, 0x0

    .line 2008
    .local v0, "setSuccess":Z
    if-ne p1, v5, :cond_0

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_0

    .line 2009
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2010
    .local v2, "tokenStartIndex":I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2011
    .local v1, "tokenEndIndex":I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2012
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2013
    const/4 v0, 0x1

    .line 2016
    .end local v1    # "tokenEndIndex":I
    .end local v2    # "tokenStartIndex":I
    :cond_0
    if-eq p1, v5, :cond_1

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2017
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2018
    .restart local v2    # "tokenStartIndex":I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2019
    .restart local v1    # "tokenEndIndex":I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2021
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2022
    const/4 v0, 0x1

    .line 2024
    .end local v1    # "tokenEndIndex":I
    .end local v2    # "tokenStartIndex":I
    :cond_1
    return v0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 904
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 905
    iput-object v1, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 906
    iput-object v1, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 907
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 908
    iput-object v1, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 909
    return-void
.end method

.method private setTokenRegion()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1946
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1947
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1949
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    .line 1950
    .local v1, "tokenStartIndex":I
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1965
    :goto_0
    return v2

    .line 1953
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->findDelimiterAfter()I

    move-result v0

    .line 1955
    .local v0, "tokenEndIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 1957
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_1

    .line 1958
    const/4 v2, 0x0

    goto :goto_0

    .line 1960
    :cond_1
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 1961
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1964
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 280
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 285
    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_1
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 318
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 319
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, "horizonLineSeparator":I
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v6, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 323
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v7, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "findComplete":Z
    const/4 v3, 0x0

    .line 327
    .local v3, "terminatorLength":I
    :goto_0
    if-nez v0, :cond_2

    .line 328
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 330
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int v3, v5, v6

    .line 331
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-boolean v5, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v5, :cond_1

    .line 334
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 335
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 337
    :cond_1
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 338
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_2
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 351
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 353
    .local v2, "oldLimit":I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 357
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v7, v1, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 358
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 360
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 363
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 364
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 368
    :cond_3
    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v5, :cond_4

    add-int v5, v1, v3

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 372
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 375
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 392
    :goto_1
    return-object v4

    .line 378
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 381
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 384
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 388
    :cond_5
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 391
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .prologue
    .line 513
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 446
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 447
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 448
    if-gez p2, :cond_0

    .line 449
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "horizon < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    :cond_0
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, "result":Ljava/lang/String;
    if-nez p2, :cond_5

    const v1, 0x7fffffff

    .line 459
    .local v1, "horizonEndIndex":I
    :cond_1
    :goto_0
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 461
    .local v0, "findEndIndex":I
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v6, :cond_6

    move v2, v4

    .line 465
    .local v2, "isHorizonInBuffer":Z
    :goto_1
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v7, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 466
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 467
    if-nez p2, :cond_2

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-nez v2, :cond_3

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v6, :cond_8

    .line 468
    :cond_3
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 486
    :cond_4
    if-eqz v3, :cond_9

    .line 487
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 488
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 492
    :goto_2
    return-object v3

    .line 454
    .end local v0    # "findEndIndex":I
    .end local v1    # "horizonEndIndex":I
    .end local v2    # "isHorizonInBuffer":Z
    :cond_5
    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v6, p2

    goto :goto_0

    .restart local v0    # "findEndIndex":I
    .restart local v1    # "horizonEndIndex":I
    :cond_6
    move v2, v5

    .line 461
    goto :goto_1

    .line 475
    .restart local v2    # "isHorizonInBuffer":Z
    :cond_7
    if-nez v2, :cond_4

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_4

    .line 481
    :cond_8
    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_1

    .line 482
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 483
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 490
    :cond_9
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 526
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v0, 0x0

    .line 542
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 543
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 544
    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 545
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    .line 548
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 561
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "hasNext":Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 557
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 558
    const/4 v0, 0x1

    .line 560
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    goto :goto_0
.end method

.method public hasNextBigDecimal()Z
    .locals 5

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 592
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 593
    .local v3, "isBigDecimalValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    const/4 v3, 0x1

    .line 603
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 599
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 632
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 633
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 634
    .local v3, "isBigIntegerValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 638
    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    const/4 v3, 0x1

    .line 644
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 640
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBoolean()Z
    .locals 1

    .prologue
    .line 657
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 686
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 687
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 688
    .local v3, "isByteValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 692
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    const/4 v3, 0x1

    .line 698
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 694
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextDouble()Z
    .locals 5

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 712
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 713
    .local v3, "isDoubleValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    const/4 v3, 0x1

    .line 723
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 719
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 5

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 737
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 738
    .local v3, "isFloatValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 739
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    const/4 v3, 0x1

    .line 748
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 744
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 778
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 779
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 780
    .local v3, "isIntValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 784
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    const/4 v3, 0x1

    .line 790
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 786
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextLine()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    .line 801
    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 803
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasNextLong()Z
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 832
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 833
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 834
    .local v3, "isLongValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 838
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    const/4 v3, 0x1

    .line 844
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 840
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextShort()Z
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5
    .param p1, "radix"    # I

    .prologue
    .line 873
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 874
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 875
    .local v3, "isShortValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 879
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/4 v3, 0x1

    .line 885
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 881
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 926
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 962
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 964
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    .line 965
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 968
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 970
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 971
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 973
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    .line 976
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 977
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1022
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1023
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1024
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_0

    .line 1025
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1026
    check-cast v4, Ljava/math/BigDecimal;

    .line 1039
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1028
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1029
    .local v2, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "floatString":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1033
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "bigDecimalValue":Ljava/math/BigDecimal;
    move-object v4, v0

    .line 1039
    goto :goto_0

    .line 1034
    .end local v0    # "bigDecimalValue":Ljava/math/BigDecimal;
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1036
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1037
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1083
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1084
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1085
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_0

    .line 1086
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1087
    check-cast v4, Ljava/math/BigInteger;

    .line 1100
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1089
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1090
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "bigIntegerValue":Ljava/math/BigInteger;
    move-object v4, v0

    .line 1100
    goto :goto_0

    .line 1095
    .end local v0    # "bigIntegerValue":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1097
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1098
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 1117
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1161
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1162
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1163
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_0

    .line 1164
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1165
    check-cast v4, Ljava/lang/Byte;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1178
    :goto_0
    return v0

    .line 1167
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1168
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1170
    const/4 v0, 0x0

    .line 1172
    .local v0, "byteValue":B
    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v1

    .line 1174
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1175
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1176
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .locals 7

    .prologue
    .line 1204
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1205
    iget-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1206
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1207
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_0

    .line 1208
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1209
    check-cast v5, Ljava/lang/Double;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1222
    :goto_0
    return-wide v0

    .line 1211
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1212
    .local v3, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, "floatString":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1216
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .local v0, "doubleValue":D
    goto :goto_0

    .line 1217
    .end local v0    # "doubleValue":D
    :catch_0
    move-exception v2

    .line 1218
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1219
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1220
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .locals 6

    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1249
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1250
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1251
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_0

    .line 1252
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1253
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1266
    :goto_0
    return v3

    .line 1255
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1256
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "floatValue":F
    goto :goto_0

    .line 1261
    .end local v3    # "floatValue":F
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1263
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1264
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1311
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1312
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1313
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 1314
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1315
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1328
    :goto_0
    return v2

    .line 1317
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1318
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1322
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "intValue":I
    goto :goto_0

    .line 1323
    .end local v2    # "intValue":I
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1325
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1326
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1345
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1347
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1348
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1352
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1353
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1355
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1356
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1357
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1373
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1374
    .local v1, "terminatorMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1375
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .end local v1    # "terminatorMatcher":Ljava/util/regex/Matcher;
    :cond_2
    return-object v0

    .line 1361
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_4

    .line 1362
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1363
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1366
    :cond_4
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    .line 1367
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1368
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 1394
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 7
    .param p1, "radix"    # I

    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1423
    iget-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1424
    .local v3, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1425
    instance-of v6, v3, Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 1426
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1427
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1440
    :goto_0
    return-wide v4

    .line 1429
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1430
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, "intString":Ljava/lang/String;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1434
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .local v4, "longValue":J
    goto :goto_0

    .line 1435
    .end local v4    # "longValue":J
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1437
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1438
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .locals 1

    .prologue
    .line 1456
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .locals 6
    .param p1, "radix"    # I

    .prologue
    .line 1484
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1485
    iget-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1486
    .local v3, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1487
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_0

    .line 1488
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1489
    check-cast v3, Ljava/lang/Short;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 1502
    :goto_0
    return v4

    .line 1491
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1492
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "shortValue":S
    goto :goto_0

    .line 1497
    .end local v4    # "shortValue":S
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1499
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1500
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .locals 1

    .prologue
    .line 1511
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    .prologue
    .line 2110
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 2111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    .line 2112
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 2113
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1572
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 6
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1531
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1532
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 1533
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1534
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1536
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1537
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    .line 1539
    .local v0, "matchInBuffer":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1540
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1541
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1555
    return-object p0

    .end local v0    # "matchInBuffer":Z
    :cond_2
    move v0, v1

    .line 1537
    goto :goto_1

    .line 1545
    :cond_3
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_4

    .line 1546
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1547
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1550
    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v3, :cond_0

    .line 1551
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",findStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",matchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1612
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1599
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 1600
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 1623
    if-nez p1, :cond_0

    .line 1624
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "l == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    .line 1627
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 0
    .param p1, "radix"    # I

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1639
    iput p1, p0, Ljava/util/Scanner;->currentRadix:I

    .line 1640
    return-object p0
.end method
