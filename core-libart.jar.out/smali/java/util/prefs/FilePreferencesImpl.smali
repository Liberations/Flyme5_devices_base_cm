.class public Ljava/util/prefs/FilePreferencesImpl;
.super Ljava/util/prefs/AbstractPreferences;
.source "FilePreferencesImpl.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "prefs.xml"


# instance fields
.field private dir:Ljava/io/File;

.field private final path:Ljava/lang/String;

.field private prefs:Ljava/util/Properties;

.field private prefsFile:Ljava/io/File;

.field private removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isUserNode"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 72
    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Ljava/util/prefs/FilePreferencesImpl;->userNode:Z

    .line 74
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/util/prefs/FilePreferencesImpl;

    .end local p1    # "parent":Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p1, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/prefs/FilePreferencesImpl;

    .prologue
    .line 36
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    return-object v0
.end method

.method private initPrefs()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    .line 88
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/util/prefs/FilePreferencesImpl;->newNode:Z

    .line 89
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prefs.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    .line 90
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v0}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 110
    .local v0, "child":Ljava/util/prefs/FilePreferencesImpl;
    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    new-instance v2, Ljava/util/prefs/FilePreferencesImpl$1;

    invoke-direct {v2, p0}, Ljava/util/prefs/FilePreferencesImpl$1;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get child names for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    return-object v0
.end method

.method protected flushSpi()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v4}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    .line 123
    .local v0, "currentPrefs":Ljava/util/Properties;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    .end local v0    # "currentPrefs":Ljava/util/Properties;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v4, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPrefs":Ljava/util/Properties;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 128
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 133
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 135
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 136
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    iget-object v5, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-static {v4, v5}, Ljava/util/prefs/XMLParser;->writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 148
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 158
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method protected removeNodeSpi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 170
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 171
    .local v0, "removeSucceed":Z
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->flushSpi()V

    .line 186
    return-void
.end method
