.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final MAX_KEY_LENGTH:I = 0x50

.field public static final MAX_NAME_LENGTH:I = 0x50

.field public static final MAX_VALUE_LENGTH:I = 0x2000

.field private static volatile factory:Ljava/util/prefs/PreferencesFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/util/prefs/Preferences;->findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;

    move-result-object v0

    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method private static findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;
    .locals 4

    .prologue
    .line 115
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v3}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/PreferencesFactory;

    .line 116
    .local v2, "result":Ljava/util/prefs/PreferencesFactory;
    if-eqz v2, :cond_0

    .line 124
    .end local v2    # "result":Ljava/util/prefs/PreferencesFactory;
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v2

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "result":Ljava/util/prefs/PreferencesFactory;
    :cond_0
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/PreferencesFactory;

    .local v1, "impl":Ljava/util/prefs/PreferencesFactory;
    move-object v2, v1

    .line 121
    goto :goto_0

    .line 124
    .end local v1    # "impl":Ljava/util/prefs/PreferencesFactory;
    :cond_1
    new-instance v2, Ljava/util/prefs/FilePreferencesFactoryImpl;

    .end local v2    # "result":Ljava/util/prefs/PreferencesFactory;
    invoke-direct {v2}, Ljava/util/prefs/FilePreferencesFactoryImpl;-><init>()V

    goto :goto_0
.end method

.method private static getNodeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 860
    .local v0, "p":Ljava/lang/Package;
    if-nez v0, :cond_0

    .line 861
    const-string v1, "/<unnamed>"

    .line 863
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static importPreferences(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/InvalidPreferencesFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    if-nez p0, :cond_0

    .line 451
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Inputstream cannot be null"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->importPrefs(Ljava/io/InputStream;)V

    .line 454
    return-void
.end method

.method public static setPreferencesFactory(Ljava/util/prefs/PreferencesFactory;)Ljava/util/prefs/PreferencesFactory;
    .locals 1
    .param p0, "pf"    # Ljava/util/prefs/PreferencesFactory;

    .prologue
    .line 108
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 109
    .local v0, "previous":Ljava/util/prefs/PreferencesFactory;
    sput-object p0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 110
    return-object v0
.end method

.method public static systemNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 828
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static userNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 877
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract absolutePath()Ljava/lang/String;
.end method

.method public abstract addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract childrenNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportNode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportSubtree(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getByteArray(Ljava/lang/String;[B)[B
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract isUserNode()Z
.end method

.method public abstract keys()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
.end method

.method public abstract nodeExists(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract parent()Ljava/util/prefs/Preferences;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putFloat(Ljava/lang/String;F)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeNode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
