.class Lorg/morphic/ts/extra/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/morphic/ts/extra/SettingsActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/morphic/ts/extra/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/morphic/ts/extra/SettingsActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/morphic/ts/extra/SettingsActivity$4;->this$0:Lorg/morphic/ts/extra/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=morphic%2ets%40gmail%2ecom&lc=FI&item_name=Team%20Superluminal%20ROM%20%2d%20Morphic&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/morphic/ts/extra/SettingsActivity$4;->this$0:Lorg/morphic/ts/extra/SettingsActivity;

    invoke-virtual {v1, v0}, Lorg/morphic/ts/extra/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    const/4 v1, 0x1

    return v1
.end method
