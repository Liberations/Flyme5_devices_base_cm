.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation


# static fields
.field public static final FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

.field public static final FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

.field public static final FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

.field static JAVACLASS:Ljava/lang/String; = null

.field static JAVAPROPERTIES:Ljava/lang/String; = null

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L

.field static listClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    .line 700
    const-string v0, "java.class"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    .line 702
    const-string v0, "java.properties"

    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    .line 705
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 720
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 726
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 739
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 742
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 745
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    .line 755
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    .line 758
    return-void
.end method

.method public static getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 766
    :pswitch_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 775
    :goto_0
    return-object v0

    .line 769
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_0

    .line 774
    :pswitch_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 789
    :pswitch_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    .line 798
    :goto_0
    return-object v0

    .line 792
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_0

    .line 797
    :pswitch_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .locals 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    if-nez p1, :cond_0

    .line 811
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "baseName == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 812
    :cond_0
    if-nez p2, :cond_1

    .line 813
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "locale == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "variant":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 820
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_2
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 823
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_3
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 826
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    return-object v2
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_0
    if-nez p2, :cond_1

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eq v0, p2, :cond_2

    .line 852
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iget-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    if-nez p2, :cond_1

    .line 953
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_1
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .locals 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    .prologue
    .line 978
    if-nez p5, :cond_0

    .line 980
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "bundle == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 982
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "bundleName":Ljava/lang/String;
    move-object v4, p3

    .line 984
    .local v4, "suffix":Ljava/lang/String;
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 985
    const-string v4, "class"

    .line 987
    :cond_1
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 988
    const-string v4, "properties"

    .line 990
    :cond_2
    invoke-virtual {p0, v0, v4}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "urlname":Ljava/lang/String;
    invoke-virtual {p4, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 992
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_3

    .line 993
    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 995
    .local v2, "lastModified":J
    cmp-long v7, v2, p6

    if-lez v7, :cond_3

    .line 996
    const/4 v7, 0x1

    .line 999
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "lastModified":J
    :goto_0
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .locals 13
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "reload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    if-nez p3, :cond_0

    .line 883
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "format == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 884
    :cond_0
    if-nez p4, :cond_1

    .line 885
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "loader == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 887
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, "bundleName":Ljava/lang/String;
    move-object/from16 v4, p4

    .line 890
    .local v4, "clsloader":Ljava/lang/ClassLoader;
    sget-object v11, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 891
    const/4 v3, 0x0

    .line 893
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 897
    :goto_0
    if-nez v3, :cond_2

    .line 898
    const/4 v1, 0x0

    .line 940
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v1

    .line 901
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle;

    .line 902
    .local v1, "bundle":Ljava/util/ResourceBundle;
    # invokes: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v1, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 904
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v6

    .line 905
    .local v6, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_1

    .line 908
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_3
    sget-object v11, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 909
    const/4 v9, 0x0

    .line 910
    .local v9, "streams":Ljava/io/InputStream;
    const-string v11, "properties"

    invoke-virtual {p0, v2, v11}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, "resourceName":Ljava/lang/String;
    if-eqz p5, :cond_5

    .line 912
    const/4 v10, 0x0

    .line 914
    .local v10, "url":Ljava/net/URL;
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v10

    .line 918
    :goto_2
    if-eqz v10, :cond_4

    .line 919
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 920
    .local v5, "con":Ljava/net/URLConnection;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 921
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 930
    .end local v5    # "con":Ljava/net/URLConnection;
    .end local v10    # "url":Ljava/net/URL;
    :cond_4
    :goto_3
    if-eqz v9, :cond_6

    .line 932
    :try_start_3
    new-instance v8, Ljava/util/PropertyResourceBundle;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v11}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V

    .line 933
    .local v8, "ret":Ljava/util/ResourceBundle;
    # invokes: Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    invoke-static {v8, p2}, Ljava/util/ResourceBundle;->access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V

    .line 934
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v8

    .line 938
    goto :goto_1

    .line 925
    .end local v8    # "ret":Ljava/util/ResourceBundle;
    :cond_5
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v9

    goto :goto_3

    .line 935
    :catch_1
    move-exception v6

    .line 936
    .local v6, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1

    .line 940
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 942
    .end local v7    # "resourceName":Ljava/lang/String;
    .end local v9    # "streams":Ljava/io/InputStream;
    :cond_7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 894
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v11

    goto :goto_0

    .line 895
    :catch_3
    move-exception v11

    goto :goto_0

    .line 915
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "resourceName":Ljava/lang/String;
    .restart local v9    # "streams":Ljava/io/InputStream;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_4
    move-exception v11

    goto :goto_2

    .line 926
    .end local v10    # "url":Ljava/net/URL;
    :catch_5
    move-exception v11

    goto :goto_3
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1014
    const-string v0, ""

    .line 1015
    .local v0, "emptyString":Ljava/lang/String;
    const-string v1, "_"

    .line 1016
    .local v1, "preString":Ljava/lang/String;
    const-string v4, "_"

    .line 1017
    .local v4, "underline":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1018
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "baseName == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1020
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .local v3, "ret":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .local v2, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1024
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :goto_0
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1030
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1031
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "prefix":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    .restart local v2    # "prefix":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1038
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1027
    :cond_2
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1035
    :cond_3
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 1057
    if-nez p2, :cond_0

    .line 1058
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "suffix == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
