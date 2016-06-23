.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    .line 583
    new-instance v0, Ljava/util/Formatter$1;

    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    return-void

    .line 529
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 608
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    .line 755
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 781
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Formatter;->closed:Z

    .line 806
    const/4 v1, 0x0

    .line 808
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 809
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 818
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 819
    return-void

    .line 810
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 812
    throw v0

    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 814
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 815
    throw v0

    .line 813
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 810
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 833
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 835
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 853
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 870
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 871
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 872
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 888
    if-nez p1, :cond_0

    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ps == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 892
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 893
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 622
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 623
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 652
    if-nez p1, :cond_0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 657
    :goto_0
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 658
    return-void

    .line 655
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 733
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 637
    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .locals 6
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "width"    # I

    .prologue
    const/16 v5, 0x30

    .line 1978
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1979
    .local v1, "paddingIndex":I
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1980
    .local v3, "zeroDigit":C
    if-ne v3, v5, :cond_1

    .line 1981
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1985
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, p4, v4

    .line 1986
    .local v2, "zeroCount":I
    if-gtz v2, :cond_2

    .line 1996
    :cond_0
    :goto_1
    return-void

    .line 1983
    .end local v2    # "zeroCount":I
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1989
    .restart local v2    # "zeroCount":I
    :cond_2
    if-ne v3, v5, :cond_3

    .line 1990
    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1992
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1993
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1992
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .locals 11
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "conversion"    # C
    .param p3, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    .line 1837
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 1970
    :goto_0
    return v4

    .line 1839
    :pswitch_1
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1842
    :pswitch_2
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1845
    :pswitch_3
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1848
    :pswitch_4
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1851
    :pswitch_5
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto :goto_0

    .line 1854
    :pswitch_6
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1855
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1857
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1858
    const/16 v5, 0x79

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    .line 1861
    :pswitch_7
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1862
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1863
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1864
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    .line 1868
    :pswitch_8
    const/16 v5, 0xb

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1871
    :pswitch_9
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1874
    :pswitch_a
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x3

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1877
    :pswitch_b
    const/16 v5, 0xc

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1880
    :pswitch_c
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    const/16 v5, 0x9

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1883
    :pswitch_d
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1886
    :pswitch_e
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1887
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1888
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1891
    :pswitch_f
    const/16 v5, 0xd

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1894
    :pswitch_10
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1895
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1897
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1898
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1901
    :pswitch_11
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1904
    :pswitch_12
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1905
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6, v5, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1909
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    :pswitch_13
    const/16 v5, 0x61

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1910
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    const/16 v5, 0x62

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1912
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1913
    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1914
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1915
    const/16 v5, 0x54

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1916
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1917
    const/16 v5, 0x5a

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1918
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1919
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    .line 1922
    :pswitch_14
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1925
    :pswitch_15
    const/4 v6, 0x5

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1928
    :pswitch_16
    const/4 v5, 0x6

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    const/4 v5, 0x3

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1931
    :pswitch_17
    const/16 v6, 0xb

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1934
    :pswitch_18
    const/16 v6, 0xa

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1938
    :pswitch_19
    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1941
    :pswitch_1a
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1944
    :pswitch_1b
    const/16 v5, 0x49

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1945
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1946
    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1947
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1949
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1950
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1953
    :pswitch_1c
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1956
    :pswitch_1d
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-long v6, v5

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1959
    :pswitch_1e
    const/16 v5, 0xf

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v0, v5

    .line 1960
    .local v0, "offset":J
    const/16 v2, 0x2b

    .line 1961
    .local v2, "sign":C
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    .line 1962
    const/16 v2, 0x2d

    .line 1963
    neg-long v0, v0

    .line 1965
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    const-wide/32 v6, 0x36ee80

    div-long v6, v0, v6

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    .line 1967
    const-wide/32 v6, 0x36ee80

    rem-long v6, v0, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    .line 1837
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .locals 3

    .prologue
    .line 1489
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private checkNotClosed()V
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_0

    .line 897
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 899
    :cond_0
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 21
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1050
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 1052
    new-instance v7, Ljava/util/Formatter$FormatSpecifierParser;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v7, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    const/4 v11, 0x0

    .line 1054
    .local v11, "currentObjectIndex":I
    const/4 v14, 0x0

    .line 1055
    .local v14, "lastArgument":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1057
    .local v9, "hasLastArgumentSet":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1058
    .local v15, "length":I
    const/4 v13, 0x0

    .local v13, "i":I
    move-object v8, v14

    move v12, v11

    .line 1059
    .end local v11    # "currentObjectIndex":I
    .end local v14    # "lastArgument":Ljava/lang/Object;
    .local v12, "currentObjectIndex":I
    :goto_0
    if-ge v13, v15, :cond_4

    .line 1061
    move/from16 v18, v13

    .line 1062
    .local v18, "plainTextStart":I
    const/16 v4, 0x25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1063
    .local v16, "nextPercent":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    move/from16 v17, v15

    .line 1065
    .local v17, "plainTextEnd":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 1066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1068
    :cond_0
    move/from16 v13, v17

    .line 1070
    if-ge v13, v15, :cond_6

    .line 1071
    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    move-result-object v20

    .line 1073
    .local v20, "token":Ljava/util/Formatter$FormatToken;
    const/4 v10, 0x0

    .line 1074
    .local v10, "argument":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1075
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    move v6, v12

    .local v6, "index":I
    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1076
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    .line 1077
    move-object v14, v10

    .line 1078
    .restart local v14    # "lastArgument":Ljava/lang/Object;
    const/4 v9, 0x1

    .line 1081
    .end local v6    # "index":I
    .end local v10    # "argument":Ljava/lang/Object;
    .end local v14    # "lastArgument":Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1083
    .local v19, "substitution":Ljava/lang/CharSequence;
    if-eqz v19, :cond_1

    .line 1084
    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1086
    :cond_1
    # getter for: Ljava/util/Formatter$FormatSpecifierParser;->i:I
    invoke-static {v7}, Ljava/util/Formatter$FormatSpecifierParser;->access$000(Ljava/util/Formatter$FormatSpecifierParser;)I

    move-result v13

    .end local v19    # "substitution":Ljava/lang/CharSequence;
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    :goto_4
    move-object v8, v14

    move v12, v11

    .line 1088
    .end local v11    # "currentObjectIndex":I
    .restart local v12    # "currentObjectIndex":I
    goto :goto_0

    .end local v17    # "plainTextEnd":I
    :cond_2
    move/from16 v17, v16

    .line 1063
    goto :goto_1

    .line 1075
    .restart local v10    # "argument":Ljava/lang/Object;
    .restart local v17    # "plainTextEnd":I
    .restart local v20    # "token":Ljava/util/Formatter$FormatToken;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v6

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_2

    .line 1089
    .end local v10    # "argument":Ljava/lang/Object;
    .end local v11    # "currentObjectIndex":I
    .end local v16    # "nextPercent":I
    .end local v17    # "plainTextEnd":I
    .end local v18    # "plainTextStart":I
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    .restart local v12    # "currentObjectIndex":I
    :cond_4
    return-void

    .restart local v10    # "argument":Ljava/lang/Object;
    .restart local v16    # "nextPercent":I
    .restart local v17    # "plainTextEnd":I
    .restart local v18    # "plainTextStart":I
    .restart local v20    # "token":Ljava/util/Formatter$FormatToken;
    :cond_5
    move-object v14, v8

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_3

    .end local v10    # "argument":Ljava/lang/Object;
    .end local v11    # "currentObjectIndex":I
    .end local v20    # "token":Ljava/util/Formatter$FormatToken;
    .restart local v12    # "currentObjectIndex":I
    :cond_6
    move-object v14, v8

    move v11, v12

    .end local v12    # "currentObjectIndex":I
    .restart local v11    # "currentObjectIndex":I
    goto :goto_4
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "fsp"    # Ljava/util/Formatter$FormatSpecifierParser;
    .param p4, "lastArgument"    # Ljava/lang/Object;
    .param p5, "hasLastArgumentSet"    # Z

    .prologue
    const/4 v1, -0x2

    .line 1102
    if-ne p2, v1, :cond_0

    if-nez p5, :cond_0

    .line 1103
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    if-nez p1, :cond_2

    .line 1107
    const/4 p4, 0x0

    .line 1118
    .end local p4    # "lastArgument":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p4

    .line 1110
    .restart local p4    # "lastArgument":Ljava/lang/Object;
    :cond_2
    array-length v0, p1

    if-lt p2, v0, :cond_3

    .line 1111
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_3
    if-eq p2, v1, :cond_1

    .line 1118
    aget-object p4, p1, p2

    goto :goto_0
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x2d

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1518
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1519
    .local v0, "digitsLength":I
    const/4 v2, 0x0

    .line 1520
    .local v2, "i":I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1521
    add-int/lit8 v0, v0, -0x1

    .line 1522
    add-int/lit8 v2, v2, 0x1

    .line 1523
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1527
    :cond_0
    rem-int/lit8 v1, v0, 0x3

    .line 1528
    .local v1, "headLength":I
    if-nez v1, :cond_1

    .line 1529
    const/4 v1, 0x3

    .line 1531
    :cond_1
    add-int v4, v2, v1

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1532
    add-int/2addr v2, v1

    .line 1535
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1536
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1537
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1535
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 1539
    :cond_2
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1497
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1498
    .local v2, "length":I
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 1499
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1500
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1501
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1502
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 1503
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 1505
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1507
    .end local v0    # "ch":C
    :cond_1
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :goto_0
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I

    .prologue
    .line 1613
    move v6, p2

    .line 1614
    .local v6, "start":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v7

    .line 1615
    .local v7, "width":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    .line 1617
    .local v4, "precision":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1618
    .local v0, "length":I
    if-ltz v4, :cond_0

    .line 1619
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1620
    instance-of v8, p1, Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    move-object v8, p1

    .line 1621
    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1626
    :cond_0
    :goto_0
    if-lez v7, :cond_1

    .line 1627
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1629
    :cond_1
    if-lt v0, v7, :cond_3

    .line 1654
    .end local p1    # "source":Ljava/lang/CharSequence;
    :goto_1
    return-object p1

    .line 1623
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_2
    const/4 v8, 0x0

    invoke-interface {p1, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 1633
    :cond_3
    const/16 v1, 0x20

    .line 1634
    .local v1, "paddingChar":C
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v8, :cond_5

    .line 1635
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    .line 1636
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v1, v8, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1644
    :goto_2
    sub-int v8, v7, v0

    new-array v2, v8, [C

    .line 1645
    .local v2, "paddingChars":[C
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1647
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v3, v8, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1648
    .local v3, "paddingRight":Z
    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1649
    .local v5, "result":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_6

    .line 1650
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_3
    move-object p1, v5

    .line 1654
    goto :goto_1

    .line 1638
    .end local v2    # "paddingChars":[C
    .end local v3    # "paddingRight":Z
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v1, 0x30

    goto :goto_2

    .line 1642
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1652
    .restart local v2    # "paddingChars":[C
    .restart local v3    # "paddingRight":Z
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "minusSign"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2096
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return v1

    .line 2100
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2106
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private to12Hour(I)I
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 1974
    if-nez p1, :cond_0

    const/16 p1, 0xc

    .end local p1    # "hour":I
    :cond_0
    return p1
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1658
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1408
    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 1409
    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .line 1415
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1442
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    .line 1444
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 1477
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v2

    throw v2

    .line 1418
    :sswitch_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 1419
    const-string v1, "null"

    .line 1485
    :cond_1
    :goto_0
    return-object v1

    .line 1420
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-nez v2, :cond_0

    .line 1421
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1425
    :sswitch_1
    iget-object v2, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    .line 1426
    .local v0, "needLocalizedDigits":Z
    :goto_1
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 1427
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_5

    .line 1428
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    goto :goto_0

    .line 1425
    .end local v0    # "needLocalizedDigits":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1430
    .restart local v0    # "needLocalizedDigits":Z
    :cond_5
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 1431
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    goto :goto_0

    .line 1435
    :cond_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    .line 1436
    :cond_7
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1437
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1446
    .end local v0    # "needLocalizedDigits":Z
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1480
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1481
    if-eqz v1, :cond_1

    .line 1482
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1449
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1450
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1452
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_4
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1453
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1455
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1456
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1458
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_9

    .line 1459
    :cond_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1461
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_9
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1463
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1465
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1466
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1468
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1469
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1471
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1474
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_a
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1475
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1416
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    .line 1444
    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_8
        0x41 -> :sswitch_7
        0x42 -> :sswitch_2
        0x43 -> :sswitch_5
        0x45 -> :sswitch_7
        0x47 -> :sswitch_7
        0x48 -> :sswitch_3
        0x53 -> :sswitch_4
        0x54 -> :sswitch_a
        0x58 -> :sswitch_6
        0x61 -> :sswitch_7
        0x62 -> :sswitch_2
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x68 -> :sswitch_3
        0x6e -> :sswitch_9
        0x6f -> :sswitch_6
        0x73 -> :sswitch_4
        0x74 -> :sswitch_a
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method private transformA(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2243
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1

    .line 2244
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    :goto_0
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2274
    :cond_0
    :goto_1
    return-void

    .line 2245
    :cond_1
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_2

    .line 2246
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2248
    :cond_2
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v5

    throw v5

    .line 2255
    :cond_3
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v3

    .line 2256
    .local v3, "precision":I
    if-nez v3, :cond_4

    .line 2257
    const/4 v3, 0x1

    .line 2259
    :cond_4
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 2260
    .local v1, "indexOfFirstFractionalDigit":I
    const-string v5, "p"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2261
    .local v2, "indexOfP":I
    sub-int v0, v2, v1

    .line 2263
    .local v0, "fractionalLength":I
    if-eq v0, v3, :cond_0

    .line 2267
    if-ge v0, v3, :cond_5

    .line 2268
    sub-int v5, v3, v0

    new-array v4, v5, [C

    .line 2269
    .local v4, "zeros":[C
    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2270
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2273
    .end local v4    # "zeros":[C
    :cond_5
    add-int v5, v1, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformE(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    .line 2111
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2112
    .local v5, "precision":I
    const-string v4, "0E+00"

    .line 2113
    .local v4, "pattern":Ljava/lang/String;
    if-lez v5, :cond_0

    .line 2114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0."

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-array v7, v5, [C

    .line 2116
    .local v7, "zeros":[C
    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 2117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2118
    const-string v8, "E+00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2122
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "zeros":[C
    :cond_0
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v3

    .line 2124
    .local v3, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v8, v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_2

    .line 2125
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v0

    .line 2130
    .local v0, "chars":[C
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_3

    .line 2131
    aget-char v8, v0, v1

    const/16 v9, 0x45

    if-ne v8, v9, :cond_1

    .line 2132
    const/16 v8, 0x65

    aput-char v8, v0, v1

    .line 2130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2127
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    :cond_2
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    .restart local v0    # "chars":[C
    goto :goto_0

    .line 2135
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2137
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    .line 2138
    const-string v8, "e"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2139
    .local v2, "indexOfE":I
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2141
    .end local v2    # "indexOfE":I
    :cond_4
    return-void
.end method

.method private transformF(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0x30

    .line 2209
    const-string v3, "0.000000"

    .line 2210
    .local v3, "pattern":Ljava/lang/String;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2211
    .local v5, "precision":I
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v7, :cond_0

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3

    .line 2212
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2213
    .local v4, "patternBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v7, :cond_1

    .line 2214
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2215
    const/4 v0, 0x3

    .line 2216
    .local v0, "groupingSize":I
    const/4 v7, 0x2

    new-array v6, v7, [C

    .line 2217
    .local v6, "sharps":[C
    const/16 v7, 0x23

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 2218
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2220
    .end local v0    # "groupingSize":I
    .end local v6    # "sharps":[C
    :cond_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2221
    if-lez v5, :cond_2

    .line 2222
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2224
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2227
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2230
    .end local v4    # "patternBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, v3}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v2

    .line 2231
    .local v2, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_5

    .line 2232
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v2, v7, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2237
    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    .line 2238
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    :cond_4
    return-void

    .line 2234
    :cond_5
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x6f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1752
    const/4 v5, 0x0

    .line 1753
    .local v5, "startIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 1755
    .local v0, "bigInt":Ljava/math/BigInteger;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1757
    .local v1, "currentConversionType":C
    if-nez v0, :cond_0

    .line 1758
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1805
    :goto_0
    return-object v6

    .line 1761
    :cond_0
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_5

    move v3, v6

    .line 1763
    .local v3, "isNegative":Z
    :goto_1
    const/16 v8, 0x64

    if-ne v1, v8, :cond_6

    .line 1764
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1765
    .local v2, "digits":Ljava/lang/CharSequence;
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v8, :cond_1

    .line 1766
    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1768
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1776
    .end local v2    # "digits":Ljava/lang/CharSequence;
    :goto_2
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_2

    .line 1777
    if-eqz v3, :cond_8

    move v5, v6

    .line 1778
    :goto_3
    if-ne v1, v9, :cond_9

    .line 1779
    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    add-int/lit8 v5, v5, 0x1

    .line 1787
    :cond_2
    :goto_4
    if-nez v3, :cond_4

    .line 1788
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_3

    .line 1789
    const/16 v6, 0x2b

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1790
    add-int/lit8 v5, v5, 0x1

    .line 1792
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_4

    .line 1793
    const/16 v6, 0x20

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1794
    add-int/lit8 v5, v5, 0x1

    .line 1799
    :cond_4
    if-eqz v3, :cond_b

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_b

    .line 1800
    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .end local v3    # "isNegative":Z
    :cond_5
    move v3, v7

    .line 1761
    goto :goto_1

    .line 1769
    .restart local v3    # "isNegative":Z
    :cond_6
    if-ne v1, v9, :cond_7

    .line 1771
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1774
    :cond_7
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move v5, v7

    .line 1777
    goto :goto_3

    .line 1781
    :cond_9
    const/16 v6, 0x78

    if-eq v1, v6, :cond_a

    const/16 v6, 0x58

    if-ne v1, v6, :cond_2

    .line 1782
    :cond_a
    const-string v6, "0x"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 1802
    :cond_b
    if-eqz v3, :cond_c

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_c

    .line 1803
    add-int/lit8 v5, v5, 0x1

    .line 1805
    :cond_c
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1544
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1545
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1546
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1547
    const-string v0, "false"

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1549
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "true"

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1589
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1590
    const-string v2, "null"

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1602
    :goto_0
    return-object v2

    .line 1592
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 1593
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1594
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 1595
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1596
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1597
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 1599
    :cond_3
    const/high16 v2, 0x10000

    if-ge v0, v2, :cond_4

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_1
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1599
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1604
    .end local v0    # "codePoint":I
    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v2

    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 1809
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 1810
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1833
    :goto_0
    return-object v3

    .line 1814
    :cond_0
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 1815
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 1829
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1830
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1831
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v3

    throw v3

    .line 1817
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    .line 1818
    .local v1, "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 1819
    new-instance v1, Ljava/util/Date;

    .end local v1    # "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1825
    .restart local v1    # "date":Ljava/util/Date;
    :goto_2
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1826
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .line 1820
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 1821
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local v1    # "date":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1    # "date":Ljava/util/Date;
    goto :goto_2

    .line 1823
    :cond_3
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v3

    throw v3

    .line 1833
    .end local v1    # "date":Ljava/util/Date;
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .locals 14

    .prologue
    const/16 v13, 0x61

    const/16 v12, 0x41

    const/16 v11, 0x2b

    const/4 v10, 0x0

    .line 2026
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 2027
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2092
    :goto_0
    return-object v7

    .line 2028
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Float;

    if-nez v7, :cond_1

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_3

    .line 2029
    :cond_1
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    .line 2030
    .local v4, "number":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2031
    .local v2, "d":D
    cmpl-double v7, v2, v2

    if-nez v7, :cond_2

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v2, v8

    if-eqz v7, :cond_2

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v7, v2, v8

    if-nez v7, :cond_4

    .line 2032
    :cond_2
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 2034
    .end local v2    # "d":D
    .end local v4    # "number":Ljava/lang/Number;
    :cond_3
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_6

    .line 2041
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 2042
    .local v0, "conversionType":C
    if-eq v0, v13, :cond_5

    if-eq v0, v12, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2043
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2046
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    .local v5, "result":Ljava/lang/StringBuilder;
    sparse-switch v0, :sswitch_data_0

    .line 2062
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v7

    throw v7

    .line 2038
    .end local v0    # "conversionType":C
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v7

    throw v7

    .line 2049
    .restart local v0    # "conversionType":C
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :sswitch_0
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformA(Ljava/lang/StringBuilder;)V

    .line 2065
    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2067
    const/4 v6, 0x0

    .line 2068
    .local v6, "startIndex":I
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2069
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v7, :cond_9

    .line 2070
    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_0

    .line 2052
    .end local v6    # "startIndex":I
    :sswitch_1
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2055
    :sswitch_2
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2059
    :sswitch_3
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformG(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2073
    .restart local v6    # "startIndex":I
    :cond_7
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v7, :cond_8

    .line 2074
    const/16 v7, 0x20

    invoke-virtual {v5, v10, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2075
    add-int/lit8 v6, v6, 0x1

    .line 2077
    :cond_8
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v7, :cond_9

    .line 2078
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2079
    add-int/lit8 v6, v6, 0x1

    .line 2083
    :cond_9
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2084
    .local v1, "firstChar":C
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v7, :cond_b

    if-eq v1, v11, :cond_a

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2086
    :cond_a
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 2089
    :cond_b
    if-eq v0, v13, :cond_c

    if-ne v0, v12, :cond_d

    .line 2090
    :cond_c
    add-int/lit8 v6, v6, 0x2

    .line 2092
    :cond_d
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_0

    .line 2047
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_1
        0x47 -> :sswitch_3
        0x61 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1556
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1557
    const-string v0, "null"

    .line 1561
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1559
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x6f

    const/4 v8, 0x0

    .line 1675
    const/4 v3, 0x0

    .line 1676
    .local v3, "startIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 1680
    .local v0, "currentConversionType":C
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 1681
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1692
    .local v4, "value":J
    :goto_0
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_0

    .line 1693
    if-ne v0, v9, :cond_7

    .line 1694
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    add-int/lit8 v3, v3, 0x1

    .line 1702
    :cond_0
    :goto_1
    const/16 v6, 0x64

    if-ne v0, v6, :cond_c

    .line 1703
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1704
    .local v1, "digits":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_1

    .line 1705
    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1707
    :cond_1
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    .line 1708
    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1710
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1712
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    .line 1713
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_8

    .line 1714
    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1743
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :goto_2
    return-object v6

    .line 1682
    .end local v4    # "value":J
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 1683
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_0

    .line 1684
    .end local v4    # "value":J
    :cond_4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_5

    .line 1685
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_0

    .line 1686
    .end local v4    # "value":J
    :cond_5
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_6

    .line 1687
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_0

    .line 1689
    .end local v4    # "value":J
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v6

    throw v6

    .line 1697
    .restart local v4    # "value":J
    :cond_7
    const-string v6, "0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1715
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_8
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_9

    .line 1716
    add-int/lit8 v3, v3, 0x1

    .line 1743
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2

    .line 1719
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_a
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_b

    .line 1720
    const/16 v6, 0x2b

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1721
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1722
    :cond_b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_9

    .line 1723
    const/16 v6, 0x20

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1724
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1729
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_e

    .line 1730
    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 1736
    :cond_d
    :goto_4
    if-ne v0, v9, :cond_10

    .line 1737
    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1731
    :cond_e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_f

    .line 1732
    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    goto :goto_4

    .line 1733
    :cond_f
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_d

    .line 1734
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_4

    .line 1739
    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1747
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1748
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1609
    const-string v0, "%"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "d"    # D

    .prologue
    const/4 v4, 0x0

    .line 1999
    const/4 v0, 0x0

    .line 2000
    .local v0, "source":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2001
    const-string v0, "NaN"

    .line 2020
    :goto_0
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2021
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v4, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 2022
    invoke-direct {p0, v0, v4}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    return-object v1

    .line 2002
    :cond_0
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p1, v2

    if-nez v1, :cond_3

    .line 2003
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v1, :cond_1

    .line 2004
    const-string v0, "+Infinity"

    goto :goto_0

    .line 2005
    :cond_1
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v1, :cond_2

    .line 2006
    const-string v0, " Infinity"

    goto :goto_0

    .line 2008
    :cond_2
    const-string v0, "Infinity"

    goto :goto_0

    .line 2010
    :cond_3
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p1, v2

    if-nez v1, :cond_5

    .line 2011
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v1, :cond_4

    .line 2012
    const-string v0, "(Infinity)"

    goto :goto_0

    .line 2014
    :cond_4
    const-string v0, "-Infinity"

    goto :goto_0

    .line 2017
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1565
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-eqz v2, :cond_3

    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, "flags":I
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v2, :cond_0

    .line 1568
    or-int/lit8 v0, v0, 0x1

    .line 1570
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v2, :cond_1

    .line 1571
    or-int/lit8 v0, v0, 0x4

    .line 1573
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1574
    or-int/lit8 v0, v0, 0x2

    .line 1576
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/util/Formattable;

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 1582
    const/4 v2, 0x0

    .line 1585
    .end local v0    # "flags":I
    :goto_0
    return-object v2

    .line 1584
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1584
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_4
    const-string v1, "null"

    goto :goto_1
.end method

.method private transformG(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 2144
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2145
    .local v1, "precision":I
    if-nez v1, :cond_0

    .line 2146
    const/4 v1, 0x1

    .line 2148
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2150
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2151
    .local v2, "d":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v2, v8

    if-nez v7, :cond_1

    .line 2152
    add-int/lit8 v1, v1, -0x1

    .line 2153
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2154
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    .line 2205
    :goto_0
    return-void

    .line 2158
    :cond_1
    const/4 v6, 0x1

    .line 2159
    .local v6, "requireScientificRepresentation":Z
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 2160
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2161
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2162
    add-int/lit8 v1, v1, -0x1

    .line 2163
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2164
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2167
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/MathContext;

    invoke-direct {v7, v1}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v0, v2, v3, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 2168
    .local v0, "b":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 2169
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2171
    .local v4, "l":J
    cmpl-double v7, v2, v10

    if-ltz v7, :cond_6

    int-to-double v8, v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v7, v2, v8

    if-gez v7, :cond_6

    .line 2172
    long-to-double v8, v4

    int-to-double v10, v1

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_5

    .line 2173
    const/4 v6, 0x0

    .line 2174
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v1, v7

    .line 2175
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 2176
    :cond_3
    add-int/lit8 v7, v1, 0x1

    int-to-double v8, v7

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 2177
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 2178
    add-int/lit8 v1, v1, 0x1

    .line 2180
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2197
    :cond_5
    :goto_1
    if-eqz v6, :cond_8

    .line 2198
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v1

    .line 2199
    add-int/lit8 v1, v1, -0x1

    .line 2200
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2201
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 2183
    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2184
    const-wide/high16 v8, -0x3ff0000000000000L    # -4.0

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v7, v2, v8

    if-ltz v7, :cond_5

    cmpg-double v7, v2, v10

    if-gez v7, :cond_5

    .line 2185
    const/4 v6, 0x0

    .line 2186
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    add-int/2addr v1, v7

    .line 2187
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2188
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 2189
    add-int/lit8 v1, v1, 0x1

    .line 2191
    :cond_7
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 2192
    long-to-double v8, v4

    add-int/lit8 v7, v1, -0x4

    int-to-double v10, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_5

    .line 2193
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_1

    .line 2203
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x29

    const/4 v1, 0x0

    .line 1662
    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1663
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 1665
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    .line 1666
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1671
    :goto_0
    return-object p1

    .line 1668
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    .restart local p1    # "result":Ljava/lang/StringBuilder;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 969
    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    if-nez v1, :cond_0

    .line 970
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 972
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 949
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    .line 951
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1011
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1038
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1040
    .local v0, "originalLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .end local p1    # "l":Ljava/util/Locale;
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1041
    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    .line 1042
    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1046
    return-object p0

    .line 1044
    :catchall_0
    move-exception v1

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 910
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 922
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 937
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
