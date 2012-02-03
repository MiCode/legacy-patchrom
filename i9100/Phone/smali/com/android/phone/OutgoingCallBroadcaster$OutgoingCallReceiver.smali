.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "OutgoingCallReceiver"

    .line 98
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "OutgoingCallReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const-string v8, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 106
    .local v1, alreadyCalled:Z
    if-eqz v1, :cond_2

    .line 107
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v8, "CALL already placed -- returning."

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 114
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 115
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v8, v9, :cond_8

    move v0, v12

    .line 117
    .local v0, activateState:Z
    :goto_1
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v8, v9, :cond_9

    move v3, v12

    .line 120
    .local v3, dialogState:Z
    :goto_2
    const/4 v4, 0x0

    .line 122
    .local v4, isOtaCallActive:Z
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v8, v9, :cond_3

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v8, v9, :cond_4

    .line 126
    :cond_3
    const/4 v4, 0x1

    .line 129
    :cond_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_a

    .line 130
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 131
    :cond_6
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 132
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 139
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v4           #isOtaCallActive:Z
    :cond_7
    if-nez v5, :cond_b

    .line 140
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v8, "CALL cancelled (null number), returning..."

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v0, v11

    .line 115
    goto :goto_1

    .restart local v0       #activateState:Z
    :cond_9
    move v3, v11

    .line 117
    goto :goto_2

    .line 133
    .restart local v3       #dialogState:Z
    .restart local v4       #isOtaCallActive:Z
    :cond_a
    if-eqz v4, :cond_7

    .line 134
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v8, "OTA call is active, a 2nd CALL cancelled -- returning."

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v4           #isOtaCallActive:Z
    :cond_b
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_c

    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 145
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OutgoingCallReceiver"

    const-string v8, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    :cond_c
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 148
    const-string v8, "OutgoingCallReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot modify outgoing call to emergency number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_d
    const-string v8, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, originalUri:Ljava/lang/String;
    if-nez v6, :cond_e

    .line 155
    const-string v8, "OutgoingCallReceiver"

    const-string v8, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_e
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 163
    .local v7, uri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "OutgoingCallReceiver"

    const-string v8, "CALL to xxxxxxx proceeding."

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_f
    iget-object v8, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v8, p1, p2, v7, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 95
    return-void
.end method
