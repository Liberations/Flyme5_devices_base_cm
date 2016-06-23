.class public Llibcore/icu/TimeZoneNames$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 58
    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [[Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v1, "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 89
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    const/4 v5, 0x5

    if-ge v2, v5, :cond_1

    .line 90
    aget-object v5, p1, v0

    aget-object v4, v5, v2

    .line 91
    .local v4, "original":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "nonDuplicate":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v1, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_0
    aget-object v5, p1, v0

    aput-object v3, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 87
    .end local v0    # "i":I
    .end local v1    # "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "j":I
    .end local v3    # "nonDuplicate":Ljava/lang/String;
    .end local v4    # "original":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 88
    .restart local v0    # "i":I
    .restart local v1    # "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "j":I
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 19
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 64
    .local v14, "start":J
    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x5

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v16

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    .line 65
    .local v7, "result":[[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    .line 66
    aget-object v16, v7, v6

    const/16 v17, 0x0

    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v6

    aput-object v18, v16, v17

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 70
    .local v12, "nativeStart":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Llibcore/icu/TimeZoneNames;->fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V
    invoke-static {v0, v7}, Llibcore/icu/TimeZoneNames;->access$100(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 73
    .local v10, "nativeEnd":J
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    .local v4, "end":J
    sub-long v8, v10, v12

    .line 79
    .local v8, "nativeDuration":J
    sub-long v2, v4, v14

    .line 80
    .local v2, "duration":J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loaded time zone names for \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms in ICU)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    .line 82
    return-object v7
.end method
