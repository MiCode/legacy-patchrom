.class public Lcom/android/phone/AutoAnswer;
.super Landroid/os/Handler;
.source "AutoAnswer.java"


# static fields
.field public static final AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "auto_answer_timeout"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_PHONE_DISCONNECT:I = 0x3

.field private static final EVENT_PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x1

.field private static final EVENT_PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "AutoAnswer"

.field private static final VDBG:Z


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAutoAnswerFlag:Z

.field private mAutoAnswerRunnable:Ljava/lang/Runnable;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mIncoming:Lcom/android/internal/telephony/Connection;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    .line 36
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/AutoAnswer;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 60
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AutoAnswer;->mApp:Lcom/android/phone/PhoneApp;

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 62
    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 63
    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 65
    new-instance v1, Lcom/android/phone/AutoAnswer$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoAnswer$1;-><init>(Lcom/android/phone/AutoAnswer;)V

    iput-object v1, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    .line 81
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    .line 87
    return-void
.end method

.method private FireWallStatus()I
    .locals 7

    .prologue
    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, result:I
    sget-object v5, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v5, :cond_6

    .line 158
    sget-boolean v5, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "FireWallStatus(). mPhoneCheckService != null "

    invoke-direct {p0, v5}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 159
    :cond_0
    const/4 v1, 0x1

    .line 160
    .local v1, calltype:I
    const/4 v3, 0x0

    .line 161
    .local v3, phoneNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 162
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 163
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_1
    sget-boolean v5, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FireWallStatus(). phoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 169
    :cond_2
    if-eqz v3, :cond_3

    .line 170
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v1, v5, v6}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v4

    .line 174
    :cond_3
    sget-boolean v5, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleHeadsetHook(). mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 175
    :cond_4
    const/4 v5, 0x2

    if-eq v5, v4, :cond_5

    const/4 v5, 0x3

    if-ne v5, v4, :cond_6

    .line 176
    :cond_5
    sget-boolean v5, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "handleHeadsetHook(). don\'t answer the incoming call."

    invoke-direct {p0, v5}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 179
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #calltype:I
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_6
    return v4
.end method

.method static synthetic access$000(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/AutoAnswer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AutoAnswer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private cancelAutoAnswer()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    if-eqz v0, :cond_1

    .line 199
    sget-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelAutoAnswer() "

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoAnswer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 203
    :cond_1
    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 271
    const-string v0, "AutoAnswer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 208
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "AutoAnswer: CDMA call disconnect: return"

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 213
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Disconnected call is not incoming call. "

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Incoming call is disconnected, cancel auto answer."

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 219
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/AutoAnswer;->cancelAutoAnswer()V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection;

    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    .line 122
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 124
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 127
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_0

    .line 128
    new-instance v3, Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mApp:Lcom/android/phone/PhoneApp;

    invoke-direct {v3, v4, v5}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 129
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Got BluetoothHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 133
    :cond_0
    const-string v3, "auto_answer_timeout"

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, AutoAnswerTimer:I
    invoke-direct {p0}, Lcom/android/phone/AutoAnswer;->FireWallStatus()I

    move-result v1

    .line 135
    .local v1, Firewallstatus:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 136
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "AutoAnswerTimer is OFF"

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 146
    .end local v0           #AutoAnswerTimer:I
    .end local v1           #Firewallstatus:I
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iput-object v5, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    goto :goto_0

    .line 137
    .restart local v0       #AutoAnswerTimer:I
    .restart local v1       #Firewallstatus:I
    .restart local v2       #state:Lcom/android/internal/telephony/Call$State;
    :cond_3
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 138
    :cond_4
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firewallstatus is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2 stands ignore. 3 stands reject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_5
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set AutoAnswerTimer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 141
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 142
    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/AutoAnswer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 224
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 225
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "AutoAnswer: CDMA phone state changed: return"

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 230
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/AutoAnswer;->cancelAutoAnswer()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 186
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 187
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/phone/AutoAnswer;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_1

    .line 262
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 263
    :cond_0
    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 266
    .local v0, isAudioOn:Z
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    :cond_2
    move v1, v0

    .line 267
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 237
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isBluetoothAvailable()..."

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_2

    .line 240
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 241
    :cond_1
    const/4 v2, 0x0

    .line 257
    :goto_0
    return v2

    .line 245
    :cond_2
    const/4 v1, 0x0

    .line 246
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_5

    .line 247
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 248
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 249
    :cond_3
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 250
    :cond_4
    if-eqz v0, :cond_5

    .line 251
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 252
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 256
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    :cond_6
    move v2, v1

    .line 257
    goto/16 :goto_0
.end method
