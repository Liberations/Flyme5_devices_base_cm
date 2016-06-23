.class Llibcore/util/ZoneInfoDB$TzData$1;
.super Llibcore/util/BasicLruCache;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB$TzData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/String;",
        "Llibcore/util/ZoneInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/util/ZoneInfoDB$TzData;


# direct methods
.method constructor <init>(Llibcore/util/ZoneInfoDB$TzData;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 76
    iput-object p1, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$0:Llibcore/util/ZoneInfoDB$TzData;

    invoke-direct {p0, p2}, Llibcore/util/BasicLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llibcore/util/ZoneInfoDB$TzData$1;->create(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$0:Llibcore/util/ZoneInfoDB$TzData;

    # getter for: Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->access$000(Llibcore/util/ZoneInfoDB$TzData;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 81
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 88
    :goto_0
    return-object v2

    .line 85
    :cond_0
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$0:Llibcore/util/ZoneInfoDB$TzData;

    # getter for: Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->access$100(Llibcore/util/ZoneInfoDB$TzData;)Llibcore/io/MemoryMappedFile;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v1

    .line 86
    .local v1, "it":Llibcore/io/BufferIterator;
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$0:Llibcore/util/ZoneInfoDB$TzData;

    # getter for: Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->access$200(Llibcore/util/ZoneInfoDB$TzData;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Llibcore/io/BufferIterator;->skip(I)V

    .line 88
    invoke-static {p1, v1}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;

    move-result-object v2

    goto :goto_0
.end method
