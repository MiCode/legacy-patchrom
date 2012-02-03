.class Lcom/android/settings/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "SoundSettings"

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    const/4 v2, 0x0

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;Z)V

    .line 116
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    const-string v3, "ring_volume"

    invoke-virtual {v1, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/RingerVolumePreference;

    #setter for: Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;
    invoke-static {v2, v1}, Lcom/android/settings/SoundSettings;->access$102(Lcom/android/settings/SoundSettings;Lcom/android/settings/RingerVolumePreference;)Lcom/android/settings/RingerVolumePreference;

    .line 99
    iget-object v1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/RingerVolumePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 100
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_2

    .line 101
    const-string v1, "SoundSettings"

    const-string v1, "Volume control is shown"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume control is not shown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
