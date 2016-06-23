.class public Lorg/apache/harmony/dalvik/ddmc/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field public data:[B

.field public length:I

.field public offset:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 59
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    .line 60
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    .line 61
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    .line 62
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 47
    iput-object p2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    .line 48
    iput p3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    .line 49
    iput p4, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    .line 50
    return-void
.end method
