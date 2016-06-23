.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:Ljava/lang/String;

.field public monetarySeparator:C

.field public narrowAm:Ljava/lang/String;

.field public narrowPm:Ljava/lang/String;

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:Ljava/lang/String;

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortDateFormat4:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public timeFormat12:Ljava/lang/String;

.field public timeFormat24:Ljava/lang/String;

.field public timeFormat_Hm:Ljava/lang/String;

.field public timeFormat_Hms:Ljava/lang/String;

.field public timeFormat_hm:Ljava/lang/String;

.field public timeFormat_hms:Ljava/lang/String;

.field public tinyMonthNames:[Ljava/lang/String;

.field public tinyStandAloneMonthNames:[Ljava/lang/String;

.field public tinyStandAloneWeekdayNames:[Ljava/lang/String;

.field public tinyWeekdayNames:[Ljava/lang/String;

.field public today:Ljava/lang/String;

.field public tomorrow:Ljava/lang/String;

.field public yesterday:Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "locale == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "languageTag":Ljava/lang/String;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 147
    :try_start_0
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/LocaleData;

    .line 148
    .local v1, "localeData":Llibcore/icu/LocaleData;
    if-eqz v1, :cond_1

    .line 149
    monitor-exit v4

    .line 159
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :goto_0
    return-object v1

    .line 151
    .restart local v1    # "localeData":Llibcore/icu/LocaleData;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 153
    .local v2, "newLocaleData":Llibcore/icu/LocaleData;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 154
    :try_start_1
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    check-cast v1, Llibcore/icu/LocaleData;

    .line 155
    .restart local v1    # "localeData":Llibcore/icu/LocaleData;
    if-eqz v1, :cond_2

    .line 156
    monitor-exit v4

    goto :goto_0

    .line 160
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 151
    .end local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 158
    .restart local v1    # "localeData":Llibcore/icu/LocaleData;
    .restart local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :cond_2
    :try_start_3
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 206
    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    .line 207
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t initialize LocaleData for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 212
    :cond_0
    const-string v1, "hm"

    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    .line 213
    const-string v1, "Hm"

    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    .line 214
    const-string v1, "hms"

    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    .line 215
    const-string v1, "Hms"

    invoke-static {v1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    .line 220
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    .line 221
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 224
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 232
    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const-string v2, "\\.[#,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 241
    :cond_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    const-string v2, "\\byy\\b"

    const-string v3, "y"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 242
    return-object v0
.end method

.method public static mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 134
    .end local p0    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-object p0

    .line 130
    .restart local p0    # "locale":Ljava/util/Locale;
    :cond_1
    const-string v0, "und"

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 184
    :pswitch_0
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v0

    .line 187
    :cond_0
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    goto :goto_0

    .line 190
    :pswitch_1
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_2
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
