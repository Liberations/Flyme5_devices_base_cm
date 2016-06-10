.class public Lcom/android/internal/telephony/meizu/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Llibcore/icu/Transliterator;

.field private mPinyinTransliterator:Llibcore/icu/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Latin-Ascii"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HanziToPinyin"

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/meizu/HanziToPinyin;
    .locals 2

    .prologue
    const-class v1, Lcom/android/internal/telephony/meizu/HanziToPinyin;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;

    invoke-direct {v0}, Lcom/android/internal/telephony/meizu/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tokenize(CLcom/android/internal/telephony/meizu/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .prologue
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    iput v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x250

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_4

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_4

    :cond_2
    iput v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    :goto_1
    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    iput v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const/4 v0, 0x3

    iput v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "tokenType":I
    new-instance v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>()V

    .local v4, "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->tokenize(CLcom/android/internal/telephony/meizu/HanziToPinyin$Token;)V

    iget v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .end local v4    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    invoke-direct {v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>()V

    .restart local v4    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    :goto_3
    iget v5, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    goto :goto_2

    :cond_5
    iget v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_6
    iget-object v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v0    # "character":C
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
