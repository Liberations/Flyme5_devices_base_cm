.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$SimpleControl;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$MissingBundle;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/util/ResourceBundle;

.field private static final MISSINGBASE:Ljava/util/ResourceBundle;

.field private static final UNDER_SCORE:Ljava/lang/String; = "_"

.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheLocale:Ljava/util/Locale;


# instance fields
.field private lastLoadTime:J

.field private locale:Ljava/util/Locale;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .line 110
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/ResourceBundle;->lastLoadTime:J

    .line 122
    return-void
.end method

.method static synthetic access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ResourceBundle;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 609
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    return-void
.end method

.method public static clearCache(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "loader == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    return-void
.end method

.method public static getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 139
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 155
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 156
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 159
    :cond_0
    invoke-static {p0, p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 4
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "loader == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    if-nez p0, :cond_1

    .line 216
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "bundleName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 219
    .local v1, "defaultLocale":Ljava/util/Locale;
    sget-object v2, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 221
    sput-object v1, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    .line 223
    :cond_2
    const/4 v0, 0x0

    .line 224
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    const/4 v2, 0x0

    invoke-static {v2, p0, p1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 227
    :cond_3
    if-nez v0, :cond_4

    .line 228
    const/4 v2, 0x1

    invoke-static {v2, p0, v1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 229
    if-nez v0, :cond_4

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v2

    throw v2

    .line 233
    :cond_4
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "expired":Z
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "bundleName":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object v7, p2

    .line 303
    .local v7, "cacheKey":Ljava/lang/Object;
    :goto_0
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v8

    .line 304
    .local v8, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    .line 305
    .local v5, "result":Ljava/util/ResourceBundle;
    if-eqz v5, :cond_3

    .line 306
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v10

    .line 307
    .local v10, "time":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    iget-wide v0, v5, Ljava/util/ResourceBundle;->lastLoadTime:J

    add-long/2addr v0, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 309
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    if-ne v0, v5, :cond_4

    .line 310
    new-instance v0, Ljava/util/MissingResourceException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 302
    .end local v5    # "result":Ljava/util/ResourceBundle;
    .end local v7    # "cacheKey":Ljava/lang/Object;
    .end local v8    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .end local v10    # "time":J
    :cond_1
    const-string v7, "null"

    goto :goto_0

    .line 315
    .restart local v5    # "result":Ljava/util/ResourceBundle;
    .restart local v7    # "cacheKey":Ljava/lang/Object;
    .restart local v8    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local v10    # "time":J
    :cond_2
    const/4 v4, 0x1

    .end local v10    # "time":J
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 318
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v9

    .line 321
    .local v9, "ret":Ljava/util/ResourceBundle;
    if-eqz v9, :cond_5

    .line 322
    invoke-virtual {v8, v6, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Ljava/util/ResourceBundle;->lastLoadTime:J

    move-object v5, v9

    .line 324
    .end local v5    # "result":Ljava/util/ResourceBundle;
    .end local v9    # "ret":Ljava/util/ResourceBundle;
    :cond_4
    return-object v5

    .line 326
    .restart local v5    # "result":Ljava/util/ResourceBundle;
    .restart local v9    # "ret":Ljava/util/ResourceBundle;
    :cond_5
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    invoke-virtual {v8, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v0, Ljava/util/MissingResourceException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 271
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 275
    const-class v1, Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 276
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 279
    :cond_0
    return-object v0
.end method

.method private static getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "cacheKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 554
    :try_start_0
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 555
    .local v0, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 557
    .restart local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_0
    monitor-exit v2

    return-object v0

    .line 560
    .end local v0    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 19
    .param p0, "loadBase"    # Z
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 478
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "localeName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v6, p1

    .line 482
    .local v6, "bundleName":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v7, p3

    .line 483
    .local v7, "cacheKey":Ljava/lang/Object;
    :goto_1
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v10

    .line 484
    .local v10, "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle;

    .line 485
    .local v8, "cached":Ljava/util/ResourceBundle;
    if-eqz v8, :cond_6

    .line 486
    sget-object v16, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_2

    .line 487
    const/4 v3, 0x0

    .line 549
    :goto_2
    return-object v3

    .line 479
    .end local v6    # "bundleName":Ljava/lang/String;
    .end local v7    # "cacheKey":Ljava/lang/Object;
    .end local v8    # "cached":Ljava/util/ResourceBundle;
    .end local v10    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 482
    .restart local v6    # "bundleName":Ljava/lang/String;
    :cond_1
    const-string v7, "null"

    goto :goto_1

    .line 488
    .restart local v7    # "cacheKey":Ljava/lang/Object;
    .restart local v8    # "cached":Ljava/util/ResourceBundle;
    .restart local v10    # "loaderCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_2
    sget-object v16, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_5

    .line 489
    if-nez p0, :cond_3

    .line 490
    const/4 v3, 0x0

    goto :goto_2

    .line 492
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v12

    .line 493
    .local v12, "newLocale":Ljava/util/Locale;
    if-nez v12, :cond_4

    .line 494
    const/4 v3, 0x0

    goto :goto_2

    .line 496
    :cond_4
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    goto :goto_2

    .end local v12    # "newLocale":Ljava/util/Locale;
    :cond_5
    move-object v3, v8

    .line 498
    goto :goto_2

    .line 501
    :cond_6
    const/4 v3, 0x0

    .line 503
    .local v3, "bundle":Ljava/util/ResourceBundle;
    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v6, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 504
    .local v5, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v16, Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 505
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ResourceBundle;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    move-object v4, v3

    .line 511
    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .end local v5    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "bundle":Ljava/util/ResourceBundle;
    :goto_3
    if-eqz v4, :cond_9

    .line 512
    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    move-object v3, v4

    .line 529
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    :goto_4
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v15

    .line 530
    .local v15, "strippedLocale":Ljava/util/Locale;
    if-eqz v3, :cond_b

    .line 531
    if-eqz v15, :cond_8

    .line 532
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v13

    .line 533
    .local v13, "parent":Ljava/util/ResourceBundle;
    if-eqz v13, :cond_8

    .line 534
    invoke-virtual {v3, v13}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 537
    .end local v13    # "parent":Ljava/util/ResourceBundle;
    :cond_8
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 507
    .end local v15    # "strippedLocale":Ljava/util/Locale;
    :catch_0
    move-exception v16

    move-object v4, v3

    .line 509
    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_3

    .line 508
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    :catch_1
    move-exception v16

    move-object v4, v3

    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_3

    .line 514
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x2e

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".properties"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "fileName":Ljava/lang/String;
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 518
    .local v14, "stream":Ljava/io/InputStream;
    :goto_5
    if-eqz v14, :cond_f

    .line 520
    :try_start_1
    new-instance v3, Ljava/util/PropertyResourceBundle;

    new-instance v16, Ljava/io/InputStreamReader;

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    :try_start_2
    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 515
    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .end local v14    # "stream":Ljava/io/InputStream;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    :cond_a
    invoke-static {v9}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    goto :goto_5

    .line 522
    .restart local v14    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v16

    move-object v3, v4

    .line 524
    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    :goto_6
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    :catchall_0
    move-exception v16

    move-object v3, v4

    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    :goto_7
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v16

    .line 541
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    .restart local v15    # "strippedLocale":Ljava/util/Locale;
    :cond_b
    if-eqz v15, :cond_d

    if-nez p0, :cond_c

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_d

    .line 542
    :cond_c
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 543
    if-eqz v3, :cond_d

    .line 544
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 548
    :cond_d
    if-eqz p0, :cond_e

    sget-object v16, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v10, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 548
    :cond_e
    sget-object v16, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    goto :goto_8

    .line 524
    .end local v15    # "strippedLocale":Ljava/util/Locale;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v14    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    goto :goto_7

    .line 522
    :catch_3
    move-exception v16

    goto :goto_6

    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    .restart local v4    # "bundle":Ljava/util/ResourceBundle;
    :cond_f
    move-object v3, v4

    .end local v4    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundle":Ljava/util/ResourceBundle;
    goto/16 :goto_4
.end method

.method private static missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "detail":Ljava/lang/String;
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-direct {v1, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 21
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;
    .param p4, "expired"    # Z
    .param p5, "result"    # Ljava/util/ResourceBundle;

    .prologue
    .line 334
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v19

    .line 335
    .local v19, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v19, :cond_0

    .line 336
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 338
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 339
    .local v16, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    move-object/from16 v0, v16

    if-eq v4, v0, :cond_1

    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    move-object/from16 v0, v16

    if-eq v4, v0, :cond_1

    sget-object v4, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_2

    .line 342
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 344
    :cond_2
    const/16 v20, 0x0

    .line 345
    .local v20, "ret":Ljava/util/ResourceBundle;
    const/4 v15, 0x0

    .line 346
    .local v15, "currentBundle":Ljava/util/ResourceBundle;
    const/4 v14, 0x0

    .line 347
    .local v14, "bundle":Ljava/util/ResourceBundle;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    .line 348
    .local v6, "locale":Ljava/util/Locale;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 350
    .local v7, "format":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 351
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v11}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v9

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 371
    :goto_1
    if-eqz v14, :cond_5

    .line 372
    if-eqz v15, :cond_7

    .line 373
    invoke-virtual {v15, v14}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 374
    move-object v15, v14

    .line 382
    :cond_5
    :goto_2
    if-eqz v14, :cond_4

    goto :goto_0

    .line 358
    :cond_6
    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    goto :goto_1

    .line 376
    :cond_7
    if-nez v20, :cond_5

    .line 377
    move-object/from16 v20, v14

    .line 378
    move-object/from16 v15, v20

    goto :goto_2

    .line 388
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "format":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_8
    if-eqz v20, :cond_9

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 391
    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v9

    .line 392
    .local v9, "nextLocale":Ljava/util/Locale;
    if-eqz v9, :cond_a

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    .line 393
    invoke-static/range {v8 .. v13}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v20

    .line 398
    .end local v9    # "nextLocale":Ljava/util/Locale;
    :cond_a
    return-object v20

    .line 360
    .restart local v6    # "locale":Ljava/util/Locale;
    .restart local v7    # "format":Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 368
    :catch_1
    move-exception v4

    goto :goto_1

    .line 366
    :catch_2
    move-exception v4

    goto :goto_1

    .line 364
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 605
    iput-object p1, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 606
    return-void
.end method

.method private static strip(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "variant":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 593
    const-string v2, ""

    .line 601
    :goto_0
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3

    .line 594
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 595
    const-string v0, ""

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 597
    const-string v1, ""

    goto :goto_0

    .line 599
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 621
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 432
    move-object v2, p0

    .line 434
    .local v2, "theParent":Ljava/util/ResourceBundle;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 435
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 436
    return-object v1

    .line 438
    :cond_1
    move-object v0, v2

    .line 439
    .local v0, "last":Ljava/util/ResourceBundle;
    iget-object v2, v2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 440
    if-nez v2, :cond_0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v3

    throw v3
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 637
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 638
    .local v2, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 640
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 629
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_0
    return-object v1
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 581
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 582
    return-void
.end method
