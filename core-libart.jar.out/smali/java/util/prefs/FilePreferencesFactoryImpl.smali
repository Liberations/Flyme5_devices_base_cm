.class Ljava/util/prefs/FilePreferencesFactoryImpl;
.super Ljava/lang/Object;
.source "FilePreferencesFactoryImpl.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# static fields
.field private static final SYSTEM_ROOT:Ljava/util/prefs/Preferences;

.field private static final USER_ROOT:Ljava/util/prefs/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.java/.userPrefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    .line 31
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.systemPrefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method
