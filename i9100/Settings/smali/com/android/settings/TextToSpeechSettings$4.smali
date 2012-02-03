.class Lcom/android/settings/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->DeactivatePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$4;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 675
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$4;->this$0:Lcom/android/settings/TextToSpeechSettings;

    #getter for: Lcom/android/settings/TextToSpeechSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/TextToSpeechSettings;->access$100(Lcom/android/settings/TextToSpeechSettings;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$4;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v1}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$4;->this$0:Lcom/android/settings/TextToSpeechSettings;

    #getter for: Lcom/android/settings/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TextToSpeechSettings;->access$200(Lcom/android/settings/TextToSpeechSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.samsung.DRIVING_MODE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings$4;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/TextToSpeechSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    return-void
.end method
