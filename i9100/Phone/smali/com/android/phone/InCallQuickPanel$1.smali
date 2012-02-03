.class final Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v9, "InCallQuickPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 58
    .local v4, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v3, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 60
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v9, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 63
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v8

    .line 67
    .local v8, showScreenIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v4, v8}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 98
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 68
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_2
    const-string v9, "com.android.phone.MUTE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    move v6, v9

    .line 70
    .local v6, requestedMuteState:Z
    :goto_2
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_1

    .line 69
    .end local v6           #requestedMuteState:Z
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    goto :goto_2

    .line 72
    :cond_4
    const-string v9, "com.android.phone.SPEAKER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 73
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 74
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    move v7, v9

    .line 76
    .local v7, requestedSpeakerState:Z
    :goto_3
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 77
    .local v2, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 81
    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 83
    :cond_5
    const/4 v9, 0x1

    invoke-static {v4, v7, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 74
    .end local v2           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v7           #requestedSpeakerState:Z
    :cond_6
    const/4 v9, 0x0

    move v7, v9

    goto :goto_3

    .line 85
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_7
    const-string v9, "com.android.phone.UNHOLD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 86
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 87
    :cond_8
    const-string v9, "com.android.phone.END"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 88
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 89
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_1

    .line 91
    :cond_9
    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    const/4 v9, 0x3

    if-ne v5, v9, :cond_b

    .line 93
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 95
    :cond_b
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
