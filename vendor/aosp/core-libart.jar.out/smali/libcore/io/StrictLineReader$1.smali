.class Llibcore/io/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/io/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/io/StrictLineReader;


# direct methods
.method constructor <init>(Llibcore/io/StrictLineReader;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 174
    iput-object p1, p0, Llibcore/io/StrictLineReader$1;->this$0:Llibcore/io/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    iget v1, p0, Llibcore/io/StrictLineReader$1;->count:I

    if-lez v1, :cond_0

    iget-object v1, p0, Llibcore/io/StrictLineReader$1;->buf:[B

    iget v2, p0, Llibcore/io/StrictLineReader$1;->count:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget v1, p0, Llibcore/io/StrictLineReader$1;->count:I

    add-int/lit8 v0, v1, -0x1

    .line 178
    .local v0, "length":I
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Llibcore/io/StrictLineReader$1;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Llibcore/io/StrictLineReader$1;->this$0:Llibcore/io/StrictLineReader;

    # getter for: Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;
    invoke-static {v4}, Llibcore/io/StrictLineReader;->access$000(Llibcore/io/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 177
    .end local v0    # "length":I
    :cond_0
    iget v0, p0, Llibcore/io/StrictLineReader$1;->count:I

    goto :goto_0
.end method
