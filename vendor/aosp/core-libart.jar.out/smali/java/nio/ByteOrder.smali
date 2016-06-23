.class public final Ljava/nio/ByteOrder;
.super Ljava/lang/Object;
.source "ByteOrder.java"


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;

.field private static final NATIVE_ORDER:Ljava/nio/ByteOrder;


# instance fields
.field private final name:Ljava/lang/String;

.field public final needsSwap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->isLittleEndian()Z

    move-result v0

    .line 39
    .local v0, "isLittleEndian":Z
    new-instance v1, Ljava/nio/ByteOrder;

    const-string v2, "BIG_ENDIAN"

    invoke-direct {v1, v2, v0}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 40
    new-instance v2, Ljava/nio/ByteOrder;

    const-string v3, "LITTLE_ENDIAN"

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 41
    if-eqz v0, :cond_1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    sput-object v1, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    .line 42
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "needsSwap"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Ljava/nio/ByteOrder;->needsSwap:Z

    .line 57
    return-void
.end method

.method private static native isLittleEndian()Z
.end method

.method public static nativeOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    return-object v0
.end method
