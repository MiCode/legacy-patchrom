.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRejectWithMsg:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "InCallControlState constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 93
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 94
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 226
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public update()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 101
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_5

    move v5, v14

    .line 102
    .local v5, hasRingingCall:Z
    :goto_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 103
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 104
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_6

    move v3, v14

    .line 105
    .local v3, hasActiveForegroundCall:Z
    :goto_1
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 108
    .local v4, hasHoldingCall:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 112
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 113
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v11

    if-nez v11, :cond_7

    move v11, v14

    :goto_2
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 122
    :goto_3
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 123
    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 125
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    move v12, v14

    :goto_4
    and-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 128
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 129
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 130
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 133
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 134
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 135
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 143
    :goto_5
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 145
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 152
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 153
    .local v7, isEmergencyCall:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    .line 154
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 155
    .local v6, isECM:Z
    if-nez v7, :cond_2

    if-eqz v6, :cond_b

    .line 156
    :cond_2
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 157
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 165
    :goto_6
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 169
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 174
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 178
    if-eqz v4, :cond_c

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_c

    move v11, v14

    :goto_7
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 181
    if-eqz v3, :cond_d

    if-nez v4, :cond_d

    move v8, v14

    .line 182
    .local v8, okToHold:Z
    :goto_8
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 183
    .local v9, okToUnhold:Z
    if-nez v8, :cond_3

    if-eqz v9, :cond_e

    :cond_3
    move v11, v14

    :goto_9
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 192
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :goto_a
    if-eqz v5, :cond_11

    .line 193
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 194
    .local v10, presentation:I
    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v10, v11, :cond_4

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v10, v11, :cond_10

    .line 195
    :cond_4
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 202
    .end local v10           #presentation:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 203
    return-void

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #hasActiveForegroundCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_5
    move v5, v13

    .line 101
    goto/16 :goto_0

    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #hasRingingCall:Z
    :cond_6
    move v3, v13

    .line 104
    goto/16 :goto_1

    .restart local v3       #hasActiveForegroundCall:Z
    .restart local v4       #hasHoldingCall:Z
    :cond_7
    move v11, v13

    .line 113
    goto/16 :goto_2

    .line 117
    :cond_8
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 118
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_9
    move v12, v13

    .line 125
    goto/16 :goto_4

    .line 137
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_a
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 138
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_5

    .line 159
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_b
    iput-boolean v3, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_6

    :cond_c
    move v11, v13

    .line 178
    goto :goto_7

    :cond_d
    move v8, v13

    .line 181
    goto :goto_8

    .restart local v8       #okToHold:Z
    .restart local v9       #okToUnhold:Z
    :cond_e
    move v11, v13

    .line 183
    goto :goto_9

    .line 186
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_f
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 187
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 188
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_a

    .line 197
    .restart local v10       #presentation:I
    :cond_10
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b

    .line 199
    .end local v10           #presentation:I
    :cond_11
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b
.end method
