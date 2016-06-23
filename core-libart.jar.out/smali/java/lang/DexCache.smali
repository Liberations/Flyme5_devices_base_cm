.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private volatile dex:Lcom/android/dex/Dex;

.field private dexFile:J

.field location:Ljava/lang/String;

.field resolvedFields:[Ljava/lang/reflect/ArtField;

.field resolvedMethods:[Ljava/lang/reflect/ArtMethod;

.field resolvedTypes:[Ljava/lang/Class;

.field strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getDexNative()Lcom/android/dex/Dex;
.end method


# virtual methods
.method getDex()Lcom/android/dex/Dex;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 81
    .local v0, "result":Lcom/android/dex/Dex;
    if-nez v0, :cond_1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 84
    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Ljava/lang/DexCache;->getDexNative()Lcom/android/dex/Dex;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 87
    :cond_0
    monitor-exit p0

    .line 89
    :cond_1
    return-object v0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
