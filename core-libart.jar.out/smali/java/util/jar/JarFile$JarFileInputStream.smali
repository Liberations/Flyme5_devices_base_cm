.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private final entry:Ljava/util/jar/JarVerifier$VerifierEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "e"    # Ljava/util/jar/JarVerifier$VerifierEntry;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 68
    iput-object p4, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 70
    iput-wide p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 71
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    .line 75
    iget-boolean v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 79
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 80
    .local v0, "r":I
    if-eq v0, v1, :cond_2

    .line 81
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarVerifier$VerifierEntry;->write(I)V

    .line 82
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 86
    :goto_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 87
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 88
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 84
    :cond_2
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 92
    .end local v0    # "r":I
    :cond_3
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 93
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    .line 100
    iget-boolean v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget-wide v4, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 104
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 105
    .local v0, "r":I
    if-eq v0, v2, :cond_3

    .line 106
    move v1, v0

    .line 107
    .local v1, "size":I
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 108
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    .line 110
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    .line 111
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 115
    .end local v1    # "size":I
    :goto_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 116
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 117
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 113
    :cond_3
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 121
    .end local v0    # "r":I
    :cond_4
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 122
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v2

    .line 123
    goto :goto_0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
