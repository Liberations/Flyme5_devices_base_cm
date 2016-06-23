.class final enum Ljava/util/concurrent/TimeUnit$2;
.super Ljava/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 62
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 5
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 63
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p3

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 61
    const-wide v0, 0x141dd76000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 60
    const-wide v0, 0xd693a400L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 56
    return-wide p1
.end method

.method public toMillis(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 57
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 59
    const-wide/32 v0, 0x3938700

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 55
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$2;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 58
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method
