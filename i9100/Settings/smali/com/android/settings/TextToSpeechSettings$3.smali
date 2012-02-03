.class Lcom/android/settings/TextToSpeechSettings$3;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TextToSpeechSettings;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    iput-object p2, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 635
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 636
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    #calls: Lcom/android/settings/TextToSpeechSettings;->loadEngines()V
    invoke-static {v1}, Lcom/android/settings/TextToSpeechSettings;->access$000(Lcom/android/settings/TextToSpeechSettings;)V

    .line 637
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v1}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.samsung.DRIVING_MODE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/TextToSpeechSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    return-void
.end method
