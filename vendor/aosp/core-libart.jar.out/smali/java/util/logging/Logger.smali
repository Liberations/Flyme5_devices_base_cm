.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

.field private static final GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final androidTag:Ljava/lang/String;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

.field private filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field volatile levelIntVal:I

.field volatile levelObjVal:Ljava/util/logging/Level;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field parent:Ljava/util/logging/Logger;

.field private volatile resourceBundle:Ljava/util/ResourceBundle;

.field private volatile resourceBundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0}, Ljava/util/logging/Logger$1;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 99
    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    .line 148
    iput-boolean v1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 154
    iput-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    .line 166
    sget-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    iput-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 253
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 254
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Ljava/util/logging/Logger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/logging/Logger;

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/logging/Logger;
    .param p1, "x1"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3
    .param p0, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v1, Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v1, "result":Ljava/util/logging/Logger;
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/util/logging/Logger;->isNamed:Z

    .line 322
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 323
    .local v0, "logManager":Ljava/util/logging/LogManager;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 324
    return-object v1
.end method

.method public static getGlobal()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 384
    .local v0, "result":Ljava/util/logging/Logger;
    invoke-direct {v0, p1}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    .line 385
    return-object v0
.end method

.method private declared-synchronized initResourceBundle(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 336
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource bundle name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is inconsistent with the existing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 344
    .restart local v0    # "current":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_0

    .line 345
    :try_start_2
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    .line 346
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .locals 3
    .param p1, "l"    # Ljava/util/logging/Level;

    .prologue
    const/4 v1, 0x0

    .line 632
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 633
    .local v0, "effectiveLevel":I
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 4
    .param p0, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 271
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v1

    .line 279
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    .line 282
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 283
    :catch_1
    move-exception v1

    .line 287
    :cond_1
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the specified resource bundle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "p":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v0, :cond_0

    .line 662
    iget-object v1, v0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    .line 663
    .local v1, "resourceBundleName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 664
    iget-object v2, v0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 665
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 669
    .end local v1    # "resourceBundleName":Ljava/lang/String;
    :cond_0
    return-void

    .line 661
    .restart local v1    # "resourceBundleName":Ljava/lang/String;
    :cond_1
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 2
    .param p1, "handler"    # Ljava/util/logging/Handler;

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 411
    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 413
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 875
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 682
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 687
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 690
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 691
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    .prologue
    .line 708
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    :goto_0
    return-void

    .line 712
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 713
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 716
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 717
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 718
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 736
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 755
    :goto_0
    return-void

    .line 740
    :cond_0
    const-string v1, "ENTRY"

    .line 741
    .local v1, "msg":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ENTRY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .local v2, "msgBuffer":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p3

    if-ge v0, v4, :cond_1

    .line 744
    const-string v4, " {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .end local v0    # "i":I
    .end local v2    # "msgBuffer":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 749
    .local v3, "record":Ljava/util/logging/LogRecord;
    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 753
    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 754
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 768
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 772
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 773
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 777
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 793
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    :goto_0
    return-void

    .line 797
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 798
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 801
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 802
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 803
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 886
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 897
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 908
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    sget-object v1, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 864
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "l"    # Ljava/util/logging/Level;

    .prologue
    .line 651
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    iget-object v1, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1, p2}, Ldalvik/system/DalvikLogHandler;->publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    .prologue
    .line 939
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    :goto_0
    return-void

    .line 943
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 944
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 945
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 946
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 947
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 986
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    :goto_0
    return-void

    .line 990
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 991
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 993
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 994
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 962
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    :goto_0
    return-void

    .line 966
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 967
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 969
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 970
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 10
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 1013
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1041
    :cond_0
    return-void

    .line 1018
    :cond_1
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 1019
    .local v3, "f":Ljava/util/logging/Filter;
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1026
    :cond_2
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 1027
    .local v0, "allHandlers":[Ljava/util/logging/Handler;
    move-object v1, v0

    .local v1, "arr$":[Ljava/util/logging/Handler;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v1, v5

    .line 1028
    .local v2, "element":Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1027
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1031
    .end local v2    # "element":Ljava/util/logging/Handler;
    :cond_3
    move-object v7, p0

    .line 1032
    .local v7, "temp":Ljava/util/logging/Logger;
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1033
    .local v8, "theParent":Ljava/util/logging/Logger;
    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1034
    invoke-virtual {v8}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 1035
    .local v4, "ha":[Ljava/util/logging/Handler;
    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v2, v1, v5

    .line 1036
    .restart local v2    # "element":Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1035
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1038
    .end local v2    # "element":Ljava/util/logging/Handler;
    :cond_4
    move-object v7, v8

    .line 1039
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1040
    goto :goto_1
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1062
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1063
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1067
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param"    # Ljava/lang/Object;

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1091
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1092
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1095
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1096
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1097
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1152
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1156
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1157
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1121
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1122
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1126
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1127
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1183
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1184
    .local v0, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    .line 1186
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1192
    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param"    # Ljava/lang/Object;

    .prologue
    .line 1219
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1223
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1224
    .local v0, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    .line 1226
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1232
    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1235
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1236
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1305
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1306
    .local v0, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    .line 1308
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1314
    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1318
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1264
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1265
    .local v0, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    .line 1267
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1273
    :cond_1
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1277
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;

    .prologue
    .line 479
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 482
    :cond_0
    if-nez p1, :cond_1

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 1322
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 1323
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 1325
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    .line 1327
    .local v0, "handler":Ljava/util/logging/Handler;
    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1328
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1330
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1334
    .end local v0    # "handler":Ljava/util/logging/Handler;
    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 1335
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    .prologue
    .line 506
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 509
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 510
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 531
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 532
    .local v0, "logManager":Ljava/util/logging/LogManager;
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 535
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 536
    return-void
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .locals 13
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    .prologue
    .line 420
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, "levelProperty":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 423
    :try_start_0
    invoke-static {v10}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {p1, p0, v11}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    iget-object v11, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v4, "handlers"

    .line 430
    .local v4, "handlersPropertyName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "handlersProperty":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 432
    const-string v11, ",|\\s"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v2, v0, v5

    .line 433
    .local v2, "handlerName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 424
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "handlerName":Ljava/lang/String;
    .end local v3    # "handlersProperty":Ljava/lang/String;
    .end local v4    # "handlersPropertyName":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v7

    .line 425
    .local v7, "invalidLevel":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v7    # "invalidLevel":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".handlers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 439
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "handlerName":Ljava/lang/String;
    .restart local v3    # "handlersProperty":Ljava/lang/String;
    .restart local v4    # "handlersPropertyName":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    .local v1, "handler":Ljava/util/logging/Handler;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 447
    .local v9, "level":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 448
    invoke-static {v9}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 454
    .end local v9    # "level":Ljava/lang/String;
    :cond_3
    :goto_4
    iget-object v11, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 440
    .end local v1    # "handler":Ljava/util/logging/Handler;
    :catch_1
    move-exception v6

    .line 441
    .local v6, "invalidHandlerName":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 450
    .end local v6    # "invalidHandlerName":Ljava/lang/Exception;
    .restart local v1    # "handler":Ljava/util/logging/Handler;
    :catch_2
    move-exception v7

    .line 451
    .local v7, "invalidLevel":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 458
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "handler":Ljava/util/logging/Handler;
    .end local v2    # "handlerName":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "invalidLevel":Ljava/lang/Exception;
    .end local v8    # "len$":I
    :cond_4
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 459
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 3
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parent == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 590
    .local v0, "logManager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 591
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 592
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 1
    .param p1, "notifyParentHandlers"    # Z

    .prologue
    .line 559
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 562
    :cond_0
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 563
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    .line 564
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 842
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 821
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    :goto_0
    return-void

    .line 825
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 826
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 830
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 831
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method updateDalvikLogHandler()V
    .locals 8

    .prologue
    .line 186
    sget-object v4, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    .line 188
    .local v4, "newLogHandler":Ldalvik/system/DalvikLogHandler;
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 190
    .local v5, "parent":Ljava/util/logging/Logger;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/logging/Logger;

    if-eq v6, v7, :cond_2

    .line 226
    :cond_0
    :goto_0
    iget-object v6, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    if-ne v4, v6, :cond_4

    .line 235
    :cond_1
    return-void

    .line 197
    :cond_2
    if-nez v5, :cond_3

    .line 199
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, "h":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;

    .line 202
    .local v0, "firstHandler":Ljava/util/logging/Handler;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    instance-of v6, v0, Ldalvik/system/DalvikLogHandler;

    if-eqz v6, :cond_0

    move-object v4, v0

    .line 211
    check-cast v4, Ldalvik/system/DalvikLogHandler;

    goto :goto_0

    .line 214
    .end local v0    # "firstHandler":Ljava/util/logging/Handler;
    .end local v1    # "h":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    :cond_3
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    if-eqz v6, :cond_0

    .line 223
    iget-object v4, v5, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    goto :goto_0

    .line 230
    :cond_4
    iput-object v4, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    .line 232
    iget-object v6, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 233
    .local v3, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v3}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    goto :goto_1
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 854
    return-void
.end method
