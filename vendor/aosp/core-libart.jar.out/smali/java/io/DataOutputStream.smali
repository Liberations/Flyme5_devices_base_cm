.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private final scratch:[B

.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    .line 52
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 64
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    if-gez v0, :cond_0

    .line 73
    const v0, 0x7fffffff

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 75
    :cond_0
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 115
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 116
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 100
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 2
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 129
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 146
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 153
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 157
    iget v2, p0, Ljava/io/DataOutputStream;->written:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/DataOutputStream;->written:I

    goto :goto_0
.end method

.method public final writeChar(I)V
    .locals 0
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "UTF-16BE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    .local v0, "bytes":[B
    iget-object v1, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 167
    iget v1, p0, Ljava/io/DataOutputStream;->written:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Ljava/io/DataOutputStream;->written:I

    .line 168
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 172
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 176
    return-void
.end method

.method public final writeInt(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 180
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 182
    return-void
.end method

.method public final writeLong(J)V
    .locals 5
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 186
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 188
    return-void
.end method

.method public final writeShort(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Ljava/io/DataOutputStream;->scratch:[B

    int-to-short v1, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 192
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/DataOutputStream;->scratch:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 194
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 198
    return-void
.end method
