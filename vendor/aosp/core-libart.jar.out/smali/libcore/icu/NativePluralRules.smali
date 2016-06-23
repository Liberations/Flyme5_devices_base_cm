.class public final Llibcore/icu/NativePluralRules;
.super Ljava/lang/Object;
.source "NativePluralRules.java"


# static fields
.field public static final FEW:I = 0x3

.field public static final MANY:I = 0x4

.field public static final ONE:I = 0x1

.field public static final OTHER:I = 0x5

.field public static final TWO:I = 0x2

.field public static final ZERO:I


# instance fields
.field private final address:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Llibcore/icu/NativePluralRules;->address:J

    .line 39
    return-void
.end method

.method private static native finalizeImpl(J)V
.end method

.method public static forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 50
    new-instance v0, Llibcore/icu/NativePluralRules;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativePluralRules;->forLocaleImpl(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Llibcore/icu/NativePluralRules;-><init>(J)V

    return-object v0
.end method

.method private static native forLocaleImpl(Ljava/lang/String;)J
.end method

.method private static native quantityForIntImpl(JI)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativePluralRules;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativePluralRules;->finalizeImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public quantityForInt(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 59
    if-gez p1, :cond_0

    .line 60
    const/4 v0, 0x5

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativePluralRules;->address:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativePluralRules;->quantityForIntImpl(JI)I

    move-result v0

    goto :goto_0
.end method
