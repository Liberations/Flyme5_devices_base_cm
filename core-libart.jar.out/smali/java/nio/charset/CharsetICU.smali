.class final Ljava/nio/charset/CharsetICU;
.super Ljava/nio/charset/Charset;
.source "CharsetICU.java"


# instance fields
.field private final icuCanonicalName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "icuCanonName"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Ljava/nio/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetICU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/nio/charset/CharsetICU;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljava/nio/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/charset/CharsetDecoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetDecoderICU;

    move-result-object v0

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ljava/nio/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/charset/CharsetEncoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoderICU;

    move-result-object v0

    return-object v0
.end method
